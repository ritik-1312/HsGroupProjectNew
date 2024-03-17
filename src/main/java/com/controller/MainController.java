package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.LoginModel;
import com.model.Placements;
import com.service.UserService;

@Controller 
public class MainController {
	@Autowired
	 UserService userService;
	
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
		return "redirect:/viewUserPlacement";
	}
	
	@RequestMapping("forgpass")
	public String Forgotpass() {
		return "Forgetpasswor" ;
		
	}
	
	@RequestMapping("hsadamlogin")
	public String admin1() {
		return "AdminLogin" ; 
	}
	

	 //Placement data for user view (placement page)
	 @RequestMapping("viewUserPlacement")
	 public String UserPlasementView2(HttpSession session,Model model)
	 {
		 List<Placements> Ulist1=userService.getPlacemntlist1();
		 List<Placements> Ulist2=userService.getPlacemntlist2();
		 
		 session.setAttribute("list1", Ulist1);
		 model.addAttribute("list2", Ulist2);
//		 model.addAttribute("imgname",imageFildList);
		 return "placement";
	 }
	
}
