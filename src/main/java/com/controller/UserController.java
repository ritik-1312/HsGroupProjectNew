package com.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.CodeFile;
import com.model.ContactUsMessage;
import com.model.LoginModel;
import com.model.Outputfile;
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
 
	@RequestMapping(value ="save", method = RequestMethod.POST)
	public String saveData(@ModelAttribute("um") UserModel um, HttpSession session, @RequestParam("email")String email) throws MessagingException {
		// email checking
		List<UserModel> list = userService.checkRegistration(email);
		if(list!=null)
		{
			session.setAttribute("sesuserexist", "check");
			return "Signup";
		}
		else
		{
			//if not exist then send make a random otp
			Random rd = new Random();
			int otp = rd.nextInt(999999) + 100000;

				
			int status = userService.saveData(um,otp);// save otp in data base
			int status1 = userService.sendOtp(um,otp); //send otp for email sending
			session.setAttribute("sesreg", "success");
			return "regotp";//return to otp verifying page
		}
		}
	
	
	 @RequestMapping(value = "cu", method = RequestMethod.POST)
	    public String checkAndUpdateStatus(Model model, @RequestParam ("otp")int otp) 
	        {
		 String result = userService.checkAndSetStatus(otp);

		    if ("Login".equals(result)) {
		         return "Login"; 
		    } 
		    else if ("regotp".equals(result)) {
		        // Handle the case where the OTP is incorrect
		        model.addAttribute("error", "ssfdgfdg");
		        return "regotp";
		          /*
				 * userService.checkAndSetStatus(otp); return "Login";
				 */
                }return "success";
	        }
	 
	 
	 
	 @RequestMapping(value = "login", method = RequestMethod.POST)
	 public  String login(@ModelAttribute("um") UserModel um, HttpSession session) {
		 List<UserModel> l = userService.login(um);
		    System.out.println(um);
		    System.out.println(um.getEmail());
		    System.out.println(um.getPassword());
		    System.out.println(l);
		    
		    if (l != null && !l.isEmpty()) {
		        // Redirect to the dashboard or any other URL
		    	session.setAttribute("sesemail", um.getEmail());
		        return "redirect:/viewCourses"; 
		    } else {
		        // Return an indication of failure
		    	session.setAttribute("sesfail", "fail");
		        return "redirect:/login?error=invalid";
	 }
	 }
	 
	 @RequestMapping(value ="forgets", method=RequestMethod.POST )
	 public String GetEmail(@RequestParam("email") String email) throws MessagingException {
		 Random rd = new Random();
			int otps = rd.nextInt(999999) + 100000;

		 int Status= userService.sendEmail(email, otps);
		 
		 if(Status==1) {
			return "pswotp" ;
		 } else {
		return "Forgetpasswor";
		 }
	 }
	 
	 //cus = to sending password form otp page
	 @RequestMapping(value = "cus", method = RequestMethod.POST)
	    public String CheckotpandSendpasswor (Model model, @RequestParam ("otp")int otp) throws MessagingException 
	        {
		 userService.cecksendPassword(otp);

		   return "pswotp";
	        }
	 @RequestMapping(value="login1", method= RequestMethod.POST)
	 public String ContactUs(@ModelAttribute("cm") ContactUsMessage cm, HttpSession session) {
		 
		 String status= userService.ContData(cm);
		return "About";
		 
	 }
	 
	 
	 @RequestMapping("/viewCourses")
		public String viewCourses(HttpSession session)
		{
			List<SubTopic> list = userService.getSubTopicList();		//Retrieves a list of Topic class objects from the topic table,* @return List of Topic objects representing records in the topic table.		
			
			 for (SubTopic subtopic1 : list)
			 {     
										 	Long subtopicId = subtopic1.getId();
										 	
										 	 List<String> fileContentList = new ArrayList<>();    // to save readed file and set it in file_content setter
										 	 
									        List<CodeFile> codeFiles = userService.getFilesBySubTopicId(subtopicId);     // Retrieves a list of CodeFile objects associated with a specific subTopic ID.
									        for (CodeFile codeFile : codeFiles) 
									        {
									        	 String uploadFile = codeFile.getUploadFile();

									             System.out.println("UploadFile for Topic " + subtopic1.getSubtopic_name() + ": " + uploadFile);

									             try {
									            	 FileReader r = new FileReader(uploadFile);         // Reading the content of the file and saving it to the file_content property of the Topic object
									            	 try 
									            	 {
									            		 StringBuilder stringbuild = new StringBuilder();
									            		 int i ;
									 
									            		 while ((i = r.read()) != -1) {
									            		     //System.out.print((char)i);
									            		     stringbuild.append((char) i);
									            		 }

									            		 // Add the content to the list
									            		 fileContentList.add(stringbuild.toString());
									            		 //System.out.println("________________________________________");
									            	 }finally 
									            	 {
									            		 r.close();
									            	 }
									            	 
									             }catch(IOException e)
									             {
									            	 System.out.println("Exception Handled : "+e);
									             }
									             
									        }
									        
									     
						            		 subtopic1.setFile_content(fileContentList);
											
											
											
											  String intro = subtopic1.getIntro(); 
											  String subtopic = subtopic1.getSubtopic_name();
											  List<Outputfile> OutputFile1 = userService.getOutputFilesBySubTopicId(subtopicId);     // Retrieves a list of OutputFile objects associated with a specific subTopic ID.
											  List<String> outputImages = new ArrayList<>();   
											  for (Outputfile outfile : OutputFile1) 
										        {
												  String outputimg  = outfile.getOutputFile();
												  outputImages.add(outputimg);
												  System.out.println("output image: "+outputimg);
										        }
											  subtopic1.setImage_file(outputImages);
											  System.out.println("Topic Name : "+subtopic);
											  System.out.println("Topic Intro :"+intro);
											   System.out.println("");
											 
			    }
			
			 session.setAttribute("topicList", list);
			 
				  List<SidebarTopic> sidebartopic = userService.getSideTopic();
				  for (SidebarTopic sidelist : sidebartopic)
					 {    
				  System.out.println("Topic Name : "+sidelist.getTopic_name());
					 }
				  session.setAttribute("SidebarTopicName", sidebartopic);
				 
			 
			return "Dashboard";
		}
	 
}

	 
	
	
	
  
	 
