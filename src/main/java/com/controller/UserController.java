package com.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.CodeFile;
import com.model.ContactUsMessage;
import com.model.LoginModel;
import com.model.Outputfile;
import com.model.Placements;
import com.model.SidebarTopic;
import com.model.SubTopic;
import com.model.UserModel;
import com.service.UserService;
import com.service.UserServiceImpl;

import jakarta.mail.MessagingException;

@Controller
public class UserController {
	@Autowired
	UserService userService;

	public static String uploadDir = "C:\\upload\\";

	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String saveData(@ModelAttribute("um") UserModel um, HttpSession session,HttpServletRequest request, HttpServletResponse response, @RequestParam("email") String email,Model model)
			throws MessagingException {
		// email checking
		List<UserModel> list = userService.checkRegistration(email);
		if (list != null) {
			session.setAttribute("emailexist", "success");
			return "Signup";
		} else {
			// if not exist then send make a random otp
			Random rd = new Random();
			/* int otp = rd.nextInt(999999) + 100000; */
			int otp = rd.nextInt(999999 - 100000 + 1) + 100000;

			int status = userService.saveData(um, otp);// save otp in data base
			int status1 = userService.sendOtp(um, otp); // send otp for email sending
			session.setAttribute("usermodel", um);
			session.setAttribute("sesreg", "success");
			// sendmail(session, request, response);
			return "regotp";// return to otp verifying page
		}
	}

	
	@RequestMapping(value = "cu", method = RequestMethod.POST)
    public String checkAndUpdateStatus(Model model, @RequestParam("otpDigits") String otpDigits, HttpSession session) 
  {
		if(otpDigits==null || otpDigits.isEmpty()) {
			return "regotp";
		}
		String[] digitsArray = otpDigits.split(",");
	    
	    // Concatenate the digits into one integer
	    int otp = 0;
	    for (String digit : digitsArray) {
	        otp = otp * 10 + Integer.parseInt(digit);
	    }
	    
	    // Output the concatenated integer
	    System.out.println("OTP: " + otp);
	     
	 String result = userService.checkAndSetStatus(otp);

	    if ("Login".equals(result)) {
	    	session.setAttribute("seslog", "success");
	         return "Login"; 
	    } 
	    else if ("regotp".equals(result)) {
	        // Handle the case where the OTP is incorrect
	    	session.setAttribute("error", "fail");
	        //model.addAttribute("error", "ssfdgfdg");
	        return "regotp";
	          /*
			 * userService.checkAndSetStatus(otp); return "Login";
			 */
            }return "success";
        }
		
  
	
	/*
	 * @RequestMapping(value = "cu", method = RequestMethod.POST) public String
	 * checkAndUpdateStatus(Model model, @RequestParam ("otp")int otp, HttpSession
	 * session) {
	 * 
	 * String result = userService.checkAndSetStatus(otp);
	 * 
	 * if ("Login".equals(result)) { session.setAttribute("seslog", "success");
	 * return "Login"; } else if ("regotp".equals(result)) { // Handle the case
	 * where the OTP is incorrect session.setAttribute("error", "fail");
	 * //model.addAttribute("error", "ssfdgfdg"); return "regotp";
	 * 
	 * userService.checkAndSetStatus(otp); return "Login";
	 * 
	 * }return "success"; }
	 */

	@RequestMapping(value = "login", method = RequestMethod.POST)
	// @RequestMapping(value = "login", method = RequestMethod.POST)
	 public  String login(@ModelAttribute("um") UserModel um, HttpSession session,HttpServletRequest request, HttpServletResponse response) throws MessagingException {
		 List<UserModel> l = userService.login(um);
		 //boolean emailSent=false;
		 session.setAttribute("userModel",um);
		 //sendmail2(session, request, response);
//		    System.out.println(um);
//		    System.out.println(um.getEmail());
//	    System.out.println(um.getPassword());
//	    System.out.println(l);
//		    
//		    if (l != null && !l.isEmpty()) {
//		        // Redirect to the dashboard or any other URL
//		    	session.setAttribute("sesemail", um.getEmail());
//		        return "redirect:/Dashboard"; 
//		    } else {
//		        // Return an indication of failure
//		    	session.setAttribute("sesfail", "fail");
//		        return "redirect:/login?error=invalid";
//	 }
		 if (l != null && !l.isEmpty()) {
		        UserModel loggedInUser = l.get(0); // Assuming only one user should match the login criteria

		        if (loggedInUser.getStatus() == 1) {
		            // Redirect to a different page for users with status 1
		            session.setAttribute("sesemail", um.getEmail());
		            return "redirect:/Dashboard";
		            // Redirect to a different page for users with status 0
		        } else if (loggedInUser.getStatus() == 0) {
                     
		        	Random rd = new Random();
					int otp = rd.nextInt(999999) + 100000;

						String email=um.getEmail();
						 //sendmail2(session, request, response);
		        	userService.updateotp2(email, otp);
						// emailSent = true;
		        	
		            return "redirect:/regot";
		            		
		        }
		    }

		    // If the list is empty or no matching user found, redirect as login failed
		    session.setAttribute("sesfail", "fail");
		    return "redirect:/login?error=invalid";
		}

	@RequestMapping(value = "forgets", method = RequestMethod.POST)
	public String GetEmail(@RequestParam("email") String email) throws MessagingException {
		Random rd = new Random();
		int otps = rd.nextInt(999999) + 100000;

		int Status = userService.sendEmail(email, otps);

		if (Status == 1) {
			return "pswotp";
		} else {
			return "Forgetpasswor";
		}
	}

	// cus = to sending password form otp page
	
	/*
	 * @RequestMapping(value = "cus", method = RequestMethod.POST) public String
	 * CheckotpandSendpasswor(Model model, @RequestParam("otp") int otp, HttpSession
	 * session) throws MessagingException { 
	 * 
	 * String Status =userService.cecksendPassword(otp); 
	 * 
	 * if ("Login".equals(Status)) {
	 * session.setAttribute("sespass", "success");
	 * 
	 * return "Login"; } else if ("pswotp".equals(Status)) {
	 * session.setAttribute("sesfail", "fail"); return "pswotp"; } return "success";
	 * }
	 */
	
	@RequestMapping(value = "cus", method = RequestMethod.POST)
    public String CheckotpandSendpasswor(Model model, @RequestParam("otpDigits") String otpDigits, HttpSession session) throws MessagingException 
  {
		String[] digitsArray = otpDigits.split(",");
	    
	    // Concatenate the digits into one integer
	    int otp = 0;
	    for (String digit : digitsArray) {
	        otp = otp * 10 + Integer.parseInt(digit);
	    }
	    
	    // Output the concatenated integer
	    System.out.println("OTP: " + otp);
	     
	 String result = userService.cecksendPassword(otp);

	    if ("Login".equals(result)) {
	    	session.setAttribute("sespass", "success");
	         return "Login"; 
	    } 
	    else if ("pswotp".equals(result)) {
	        // Handle the case where the OTP is incorrect
	    	session.setAttribute("sesfail", "fail");
	        //model.addAttribute("error", "ssfdgfdg");
	        return "pswotp";
	          /*
			 * userService.checkAndSetStatus(otp); return "Login";
			 */
            }return "success";
        }
	 

	@RequestMapping(value = "login1", method = RequestMethod.POST)
	public String ContactUs(@ModelAttribute("cm") ContactUsMessage cm, HttpSession session) {

		String status = userService.ContData(cm);
		return "About";

	}

	@RequestMapping("/viewCourses")
	public String viewCourses(HttpSession session) {
		List<SubTopic> list = userService.getSubTopicList(); // Retrieves a list of SubTopic class objects from the
																// subtopic table,* @return List of SubTopic objects
																// representing records in the subtopic table.

		for (SubTopic subtopic1 : list) {
			Long subtopicId = subtopic1.getId();
			// Retrieves a list of CodeFile objects associated with a specific subTopic ID.
			List<CodeFile> codeFiles = userService.getFilesBySubTopicId(subtopicId);

			// FileReader Reading all codefiles and setting file_content and file_name in
			// subtopic1 Object.
			userService.FileReaderForCodeFiles(subtopic1, codeFiles, uploadDir);

			String intro = subtopic1.getIntro();
			String subtopic = subtopic1.getSubtopic_name();
			List<Outputfile> OutputFile1 = userService.getOutputFilesBySubTopicId(subtopicId); // Retrieves a list of
																								// OutputFile objects
																								// associated with a
																								// specific subTopic ID.
			List<String> outputImages = new ArrayList<>();
			for (Outputfile outfile : OutputFile1) {
				String outputimg = outfile.getOutputFile();
				outputImages.add(outputimg);
				System.out.println("output image: " + outputimg);
			}
			subtopic1.setImage_file(outputImages);
			System.out.println("Topic Name : " + subtopic);
			System.out.println("Topic Intro :" + intro);
			System.out.println("");

		}

		session.setAttribute("topicList", list);

		List<SidebarTopic> sidebartopic = userService.getSideTopic();
		for (SidebarTopic sidelist : sidebartopic) {
			System.out.println("Topic Name : " + sidelist.getTopic_name());
		}
		session.setAttribute("SidebarTopicName", sidebartopic);

		return "redirect:/Dashboard";
	}
	@ResponseBody
	 @RequestMapping(value="/sendemail2", method=RequestMethod.POST)
	public void sendmail2(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws MessagingException {
		
		UserModel um = (UserModel) session.getAttribute("userModel");
		 String email= um.getEmail();
		 Random rd = new Random();
			/* int otp = rd.nextInt(999999) + 100000; */
			int otp = rd.nextInt(999999 - 100000 + 1) + 100000;
			userService.updateotp3(email, otp);
		//return "First";
		
	}
	@RequestMapping("Dashboard")
	public String str(HttpSession session) {
		if (session.getAttribute("sesemail") == null) {
			// User is not authenticated, redirect to login page with an error message
			// model.addAttribute("errorMessage", "Please login to access the Dashboard.");
			return "redirect:/login";
		} else {
			List<SubTopic> list = userService.getSubTopicList(); // Retrieves a list of SubTopic class objects from the
																	// subtopic table,* @return List of SubTopic objects
																	// representing records in the subtopic table.

			for (SubTopic subtopic1 : list) {
				Long subtopicId = subtopic1.getId();
				// Retrieves a list of CodeFile objects associated with a specific subTopic ID.
				List<CodeFile> codeFiles = userService.getFilesBySubTopicId(subtopicId);

				// FileReader Reading all codefiles and setting file_content and file_name in
				// subtopic1 Object.
				userService.FileReaderForCodeFiles(subtopic1, codeFiles, uploadDir);

				String intro = subtopic1.getIntro();
				String subtopic = subtopic1.getSubtopic_name();
				List<Outputfile> OutputFile1 = userService.getOutputFilesBySubTopicId(subtopicId); // Retrieves a list
																									// of OutputFile
																									// objects
																									// associated with a
																									// specific subTopic
																									// ID.
				List<String> outputImages = new ArrayList<>();
				for (Outputfile outfile : OutputFile1) {
					String outputimg = outfile.getOutputFile();
					outputImages.add(outputimg);
					System.out.println("output image: " + outputimg);
				}
				subtopic1.setImage_file(outputImages);
				System.out.println("Topic Name : " + subtopic);
				System.out.println("Topic Intro :" + intro);
				System.out.println("");

			}

			session.setAttribute("topicList", list);

			List<SidebarTopic> sidebartopic = userService.getSideTopic();
			for (SidebarTopic sidelist : sidebartopic) {
				System.out.println("Topic Name : " + sidelist.getTopic_name());
			}
			session.setAttribute("SidebarTopicName", sidebartopic);

			return "Dashboard";
		}
	}
	@RequestMapping("regot")
	 public String gotyo()  {
		
			
		 return "First";
	 }
	@ResponseBody
	 @RequestMapping(value="/sendemail", method=RequestMethod.POST)
	 public String sendmail(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws MessagingException {
		 UserModel um = (UserModel) session.getAttribute("usermodel");
		 String email= um.getEmail();
		 Random rd = new Random();
			/* int otp = rd.nextInt(999999) + 100000; */
			int otp = rd.nextInt(999999 - 100000 + 1) + 100000;
			userService.updateotp2(email, otp);
		 System.out.println(email);
		return "regotp";
		 
	 }
	
	 
	 @RequestMapping(value = "reg2", method = RequestMethod.POST)
	    public String checkAndUpdateStatus2(Model model, @RequestParam ("otpDigits")String otpDigits, HttpSession session) 
	  {
		 String[] digitsArray = otpDigits.split(",");
		    
		    // Concatenate the digits into one integer
		    int otp = 0;
		    for (String digit : digitsArray) {
		        otp = otp * 10 + Integer.parseInt(digit);
		    }
		 String result = userService.checkAndSetStatus(otp);

		    if ("Login".equals(result)) {
		    	session.setAttribute("seslog", "success");
		         return "Login"; 
		    } 
		    else if ("regotp".equals(result)) {
		        // Handle the case where the OTP is incorrect
		    	session.setAttribute("error", "fail");
		        //model.addAttribute("error", "ssfdgfdg");
		        return "First";
		          /*
				 * userService.checkAndSetStatus(otp); return "Login";
				 */
            }return "success";
	        }
	 
	
	 
}
