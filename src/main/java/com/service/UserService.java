package com.service;

import java.util.List;

import com.model.LoginModel;
import com.model.UserModel;

public interface UserService {
	

	public int saveData(UserModel um,int otp);
	 public int sendEmail(String email, int otp);
	public int sendOtp(UserModel um, int otp) ;
     public String cecksendPassword(int otp);
	
	public List<UserModel> checkRegistration(String email);
	public List<UserModel> login(UserModel um);
	 public String checkAndSetStatus(int otp) ;
	
}
