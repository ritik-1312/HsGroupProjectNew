package com.controller;

import java.util.ArrayList;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.model.CodeFile;
import com.model.ContactUsMessage;
import com.model.LoginModel;
import com.model.Outputfile;
import com.model.SidebarTopic;
import com.model.SubTopic;
import com.service.UserService;
@Controller
public class AdminController {
	 @Autowired
	 UserService userService;
	
	 public static String uploadDir="C:\\upload\\";
	 @RequestMapping(value="gu", method=RequestMethod.GET)
	 public String getConts(HttpSession session)
		{
		  List<ContactUsMessage> l=userService.getContactUs();
		 // System.out.println(l);
		  Collections.reverse(l); 
		        session.setAttribute("ul", l);
		       /* for (ContactUsMessage message : l) {
		            System.out.println("Name: " + message.getName() +
		                               ", Email: " + message.getEmail() +
		                               ", Message: " + message.getMessage() +
		                               ",  " + message.getTimestamp());*/
		        
			return "AdminDashboard";
		}
	 
	 @ResponseBody
	 @RequestMapping(value="/updateStatus/{messageId}", method=RequestMethod.POST)
	 public String updateStatus(@PathVariable String messageId) {
		 System.out.println(""+messageId);
		 userService.updateStatus(messageId);
		 
		 
		return "redirect:/AdminDashboard";
		 
	 }
	 @ResponseBody
	 @RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	 public String delete(@PathVariable long id) {
		 System.out.println("Delete id: "+id);
		 long d = userService.delete(id);
		return "redirect:/AdminDashboard";
	 }

	 @RequestMapping(value="deleteMultiple")
	 public String deleteMultiple(@RequestParam("ids") String[] ids) {
		

	     for (String id : ids) {
	         Long messageId = Long.parseLong(id); // Convert String to Long
	         userService.getDeleteMultiple(messageId);
	     }
	     return "redirect:/AdminDashboard";
	 }

	 @RequestMapping(value = "adlogin")
		public String adminlogin(@ModelAttribute("user") LoginModel user,Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response) {
			//System.out.println("username :" +user.getEmail()+ "   pass:::" +user.getPassword() );
		 
		        
			if (user.getEmail().equals("admin") && user.getPassword().equals("admin")) {
				 
				List<ContactUsMessage> l=userService.getContactUs();
				 // System.out.println(l);
				  Collections.reverse(l); 
				        session.setAttribute("ul", l);
				        //session.setAttribute("loginSuccess", true);
						/*
						 * for (ContactUsMessage message : l) { System.out.println("Name: " +
						 * message.getName() + ", Email: " + message.getEmail() + ", Message: " +
						 * message.getMessage() + ",  " + message.getTimestamp()); }
						 */
				     
				return "redirect:/AdminDashboard"; 	
			} else {
				return "redirect:/hsadamlogin";
			}
		}
	 @RequestMapping("AdminDashboard")
	 public String sr(HttpSession session,Model model) {
	
			 
		 if (session.getAttribute("ul") == null) {
	            // User is not authenticated, redirect to login page with an error message
	           // model.addAttribute("errorMessage", "Please login to access the Dashboard.");
	            return "redirect:/hsadamlogin";

	        }else {
			
		 List<ContactUsMessage> l=userService.getContactUs();
		
		 // System.out.println(l);
		  Collections.reverse(l); 
		        session.setAttribute("ul", l);
		        List<SidebarTopic> topic = userService.getSideTopic();
				for (SidebarTopic sidebarTopic : topic) 
				{
					System.out.println("ID: " + sidebarTopic.getId() + ", Name: " + sidebarTopic.getTopic_name() );
				}
				model.addAttribute("side", topic);
		        
		        
		        
		        
		        
		 return "AdminDashboard";
	 }
	 }
	 @RequestMapping("/logout")
	 public String logout(HttpSession session,HttpServletRequest request, HttpServletResponse response) {
		 // Perform logout actions (clear session, update user status, etc.)
		// session.removeAttribute("ul");
		    session.invalidate();

		    // Set cache control headers to prevent caching of the logout page
		    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		    response.setHeader("Pragma", "no-cache");
		    response.setHeader("Expires", "0");

		    // Ensure that the user can't navigate back to the dashboard
		    return "redirect:/hsadamlogin?random=" + Math.random();

	 }
	 @RequestMapping("/logout2")
	 public String logout2(HttpSession session,HttpServletRequest request, HttpServletResponse response) {
		 // Perform logout actions (clear session, update user status, etc.)
		// session.removeAttribute("ul");
		    session.invalidate();

		    // Set cache control headers to prevent caching of the logout page
		    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		    response.setHeader("Pragma", "no-cache");
		    response.setHeader("Expires", "0");

		    // Ensure that the user can't navigate back to the dashboard
		    return "redirect:/login?random=" + Math.random();

	 }

	 @RequestMapping(value = "viewDashboard")
	 public String getSideForDropdown(Model model) 
	  {
			List<SidebarTopic> topic = userService.getSideTopic();
			for (SidebarTopic sidebarTopic : topic) 
			{
				System.out.println("ID: " + sidebarTopic.getId() + ", Name: " + sidebarTopic.getTopic_name() );
			}
			model.addAttribute("side", topic);

			return "redirect:/AdminDashboard";
	  }
	 
	 @RequestMapping(value = "save_sidebar")
	 public String saveSideBar(@RequestParam("topic_name") String topic_name, Model model, HttpSession session) 
	  {
		 
		 List<SidebarTopic> list = userService.checkSideTopic(topic_name);
			
			if (list!=null) {
			
				session.setAttribute("sesexist", "sidebarfail");
		  		return "redirect:/viewDashboard";
			}
			else {
				SidebarTopic topic = new SidebarTopic();
				
				topic.setTopic_name(topic_name);
	
				userService.saveSidebar(topic);
				
				return "redirect:/viewDashboard";
		  		
			}
	  }
	 
	 
	 @RequestMapping(value = "save_subtopicdata", method = RequestMethod.POST)
		public String SaveSubtopic(
				@ModelAttribute("sidebartopic") SidebarTopic sidebartopic,
				@RequestParam("subtopic_name") String subtopic_name,
				@RequestParam("intro") String intro,
				@RequestParam("uploadfiles") List<CommonsMultipartFile> uploadfiles,
				@RequestParam("outputfile") List<CommonsMultipartFile> outputfile) 
		{
			System.out.println(1);
			
			SubTopic topic2 = new SubTopic();
			System.out.println(sidebartopic.getId());
			topic2.setSubtopic_name(subtopic_name);
			
			topic2.setSidebar_topic(userService.findTopicId(sidebartopic.getId()));
			topic2.setIntro(intro);
			
						List<CodeFile> codeFiles = new ArrayList<>(); 
						for (CommonsMultipartFile file : uploadfiles) 
						{
							CodeFile codeFile = new CodeFile();
			
							codeFile.setUploadFile( /* uploadDir+ */file.getOriginalFilename());
							// codeFile.setUploadiles(file);
							 codeFile.setSub_topic(topic2);
							codeFiles.add(codeFile);
							System.out.println("File Name: " + file.getOriginalFilename());
							
						}
			
						List<Outputfile> outputFiles = new ArrayList<>(); 
						for (CommonsMultipartFile file : outputfile) 
						{
						   Outputfile outputfils =new Outputfile();
			
						   outputfils.setOutputFile( 	file.getOriginalFilename());
							// codeFile.setUploadiles(file);
							outputfils.setSub_topic(topic2);
							outputFiles.add(outputfils);
							System.out.println("File Name: " + file.getOriginalFilename());
							
						}
			
			topic2.setCodefile(codeFiles);
			topic2.setOutputfile(outputFiles);
			
			userService.saveSubTopicWithFile(topic2);
			userService.uploadFile(uploadfiles, outputfile);

			return "redirect:/viewDashboard";
		}
	 
	 
}

