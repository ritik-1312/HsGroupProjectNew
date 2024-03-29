package com.dao;

import java.util.List;

import com.model.CodeFile;
import com.model.ContactUsMessage;
import com.model.LoginModel;
import com.model.Outputfile;
import com.model.Placements;
import com.model.SidebarTopic;
import com.model.SubTopic;
import com.model.UserModel;

public interface UserDao {
	public int saveData(UserModel um, int otp);
	
	public int checkRegOtp(int otp);
	public int updateStatus(int otpr);
	public List<UserModel> checkRegistration(String email);
	public void saveOrUpdateOtp(String email, int otp);
	public List<UserModel> login(UserModel um);
	 public UserModel getPasswordByOtp(int otp);
    public String ContData(ContactUsMessage cm);
    public void updateStatus(String messageId);
    public List<ContactUsMessage> getContactUs();
    public long delete(long id);
    public void getDeleteMultiple(Long messageId);

	public List<SidebarTopic> getSideTopic();
	public void saveSidebar(SidebarTopic topic);
	public SidebarTopic findTopicId(long id);

	public void saveSubTopicWithFile(SubTopic topic2);

	public List<SubTopic> getSubTopicList();

	public List<CodeFile> getFilesBySubTopicId(Long subtopicId);

	public List<Outputfile> getOutputFilesBySubTopicId(Long subtopicId);

	public List<SidebarTopic> checkSideTopic(String topic_name);
	
	public void updateotp2(String email,int otp);
	
	public int updateStatus2(int otp);

	public int savePlacement(Placements plmt);

	public List<Placements> getPlacemntlist1();

	public List<Placements> getPlacemntlist2();

	public List<Placements> forEdit(int id);

	public String updateEdited(Placements pls);
	
	public String delete(int id);
}
