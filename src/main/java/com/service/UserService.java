package com.service;

import java.util.List;

import com.model.ContactUsMessage;
import com.model.LoginModel;
import com.model.UserModel;

import jakarta.mail.MessagingException;

public interface UserService {
	

	public int saveData(UserModel um,int otp);
	 public int sendEmail(String email, int otp) throws MessagingException;
	public int sendOtp(UserModel um, int otp) throws MessagingException ;
     public String cecksendPassword(int otp) throws MessagingException;
	
	public List<UserModel> checkRegistration(String email);
	public List<UserModel> login(UserModel um);
	 public String checkAndSetStatus(int otp) ;
	 public String ContData(ContactUsMessage cm);
	 public List<ContactUsMessage> getContactUs();
	 public String updateStatus(String messageId);
	public long delete(long id);
	public void getDeleteMultiple(Long messageId);
	
}
