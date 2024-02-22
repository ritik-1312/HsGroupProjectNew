package com.controller;

import java.util.Collections;
import java.util.List;

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

import com.model.ContactUsMessage;
import com.model.LoginModel;
import com.service.UserService;
@Controller
public class AdminController {
	 @Autowired
	 UserService userService;
	
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
		 
		 
		return "redirect:/gu";
		 
	 }
	 
	 @RequestMapping("delete/{id}")
	 public String delete(@PathVariable long id) {
		 System.out.println("Delete id: "+id);
		 long d = userService.delete(id);
		return "redirect:/gu";
	 }
	 
	 @RequestMapping("deleteMultiple")
	 public String deleteMultiple(@RequestParam("ids") String[] ids) {
	     for (String id : ids) {
	         Long messageId = Long.parseLong(id); // Convert String to Long
	         userService.getDeleteMultiple(messageId);
	     }
	     return "redirect:/gu";
	 }

	 @RequestMapping(value = "adlogin")
		public String adminlogin(@ModelAttribute("user") LoginModel user,Model model,HttpSession session) {
			//System.out.println("username :" +user.getEmail()+ "   pass:::" +user.getPassword() );
		 
		        
			if (user.getEmail().equals("admin") && user.getPassword().equals("admin")) {
				List<ContactUsMessage> l=userService.getContactUs();
				 // System.out.println(l);
				  Collections.reverse(l); 
				        session.setAttribute("ul", l);
						/*
						 * for (ContactUsMessage message : l) { System.out.println("Name: " +
						 * message.getName() + ", Email: " + message.getEmail() + ", Message: " +
						 * message.getMessage() + ",  " + message.getTimestamp()); }
						 */
				return "AdminDashboard";	
			} else {
				return "redirect:/hsadamlogin";
			}
		}

}

