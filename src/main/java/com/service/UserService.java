package com.service;

import java.util.List;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.model.CodeFile;
import com.model.ContactUsMessage;
import com.model.LoginModel;
import com.model.Outputfile;
import com.model.Placements;
import com.model.SidebarTopic;
import com.model.SubTopic;
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
	
	public List<SidebarTopic> getSideTopic();
	public void saveSidebar(SidebarTopic topic);
	public SidebarTopic findTopicId(long id);
	public void saveSubTopicWithFile(SubTopic topic2);
	public void uploadFile(List<CommonsMultipartFile> uploadfiles, List<CommonsMultipartFile> outputfile);
	public List<SubTopic> getSubTopicList();
	public List<CodeFile> getFilesBySubTopicId(Long subtopicId);
	public List<Outputfile> getOutputFilesBySubTopicId(Long subtopicId);
	
	public List<SidebarTopic> checkSideTopic(String topic_name);
	public void FileReaderForCodeFiles(SubTopic subtopic1, List<CodeFile> codeFiles, String uploadDir);
	public int updateStatus2(int otps);
	public int updateotp2(String email,int otp) throws MessagingException;
	public int updateotp3(String email, int otp)throws MessagingException;
	public int savePlacement(Placements plmt);
	public List<Placements> getPlacemntlist1();
	public List<Placements> getPlacemntlist2();
	public List<Placements> forEdit(int id);
	public String updateEdited(Placements pls);
	public String delete(int id);
	
}
