package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.LoginModel;

@Controller 
public class MainController {

	
	@RequestMapping("/hi")
	public String first()
	{
		return "First";
	}
	
	@RequestMapping ("login")
public String getlogin() {
		return "Login";
	}

	@RequestMapping ("signup")
	public String getsignup() {
		return "Signup";
	}
	
	@RequestMapping("About")
	 public String getAbout(){
		return "About";
	}

	@RequestMapping("gallery")
	 public String getgallery(){
		return "Gallery";
	}
	
	@RequestMapping("dashboard")
	 public String getdashboard(){
		return "Dashboard";
	}
	
	@RequestMapping("placement")
	 public String getPlacement(){
		return "placement";
	}

	//@RequestMapping("logerif")
	/*
	 * public String getEmailVerify() { return "regotp"; }
	 */
	
	@RequestMapping("forgpass")
	public String Forgotpass() {
		return "Forgetpasswor" ;
		
	}
	
	@RequestMapping("hsadamlogin")
	public String admin1() {
		return "AdminLogin" ; 
	}
	

	@RequestMapping(value = "adlogin")
	public String adminlogin(@ModelAttribute("user") LoginModel user,Model model,HttpSession session) {
		//System.out.println("username :" +user.getEmail()+ "   pass:::" +user.getPassword() );
		if (user.getEmail().equals("admin") && user.getPassword().equals("admin")) {
			return "AdminDashboard";	
		} else {
			return "redirect:/hsadamlogin";
		}
	}

	
	
	
}
