package com.dao;

import java.util.List;

import com.model.LoginModel;
import com.model.UserModel;

public interface UserDao {
	public int saveData(UserModel um, int otp);
	
	public int checkRegOtp(int otp);
	public int updateStatus(int otpr);
	public List<UserModel> checkRegistration(String email);
	public void saveOrUpdateOtp(String email, int otp);
	public List<UserModel> login(UserModel um);
	 public UserModel getPasswordByOtp(int otp);
}
