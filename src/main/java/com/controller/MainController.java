package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

	//@RequestMapping("logerif")
	/*
	 * public String getEmailVerify() { return "regotp"; }
	 */
	
	@RequestMapping("forgpass")
	public String Forgotpass() {
		return "Forgetpasswor" ;
		
	}
	
	
	
	
	
}
