package com.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.dao.UserDao;
import com.model.CodeFile;
import com.model.ContactUsMessage;
import com.model.LoginModel;
import com.model.MailModel;
import com.model.Outputfile;
import com.model.SidebarTopic;
import com.model.SubTopic;
import com.model.UserModel;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class UserServiceImpl implements UserService {
	
	
	
	@Autowired
	UserDao dao;
	@Autowired
	JavaMailSender javaMailSender;
	@Autowired
	  MailSender mailSender;
	  


	public JavaMailSender getJavaMailSender() {
		return javaMailSender;
	}

	public void setJavaMailSender(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}

	public MailSender getMailSender() {
		return mailSender;
	}

	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}
//saving
	@Transactional
	public int saveData(UserModel um, int otp) {
		// TODO Auto-generated method stub
		dao.saveData(um,otp);
		return 0;
	}
   
	//for mail sending
	public int sendOtp(UserModel um, int otp) throws MessagingException {
		
		 // SimpleMailMessage message = new SimpleMailMessage();
		  //message.setFrom("hritikgawali@gmail.com"); 
		 // message.setTo(um.getEmail());
		 // System.out.println(um.getEmail()); 
		 // System.out.println(otp);
		  
		 // message.setSubject("Check OTP: "); 
		//  message.setText("Your OTP is: "+otp);
		//  mailSender.send(message);
		 
		
		
		
		  MimeMessage mimeMessage = ((JavaMailSender) mailSender).createMimeMessage();
		  MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
		  
		  helper.setTo(um.getEmail()); 
		  helper.setSubject("HS Group - OTP for Sign Up");
		  
		   String htmlContent = "<html><body>" + "<p>Hi,</p>" +
		  "<p>Use the following OTP to complete your Sign Up procedures. OTP is valid for 5 minutes.</p>"
		  +
		  "<h2 style=\"background: #00466a;margin: 0 auto;width: max-content;padding: 0 10px;color: #fff;border-radius: 4px;\">"
		  + otp + "</h2>" + "<p style=\"font-size:0.9em;\">Regards,<br />Hs Group</p>"
		  + "</body></html>";
		  
		  // Set HTML content 
		   helper.setText(htmlContent, true);
		  
		  
		  // Send the email 
		  ((JavaMailSender) mailSender).send(mimeMessage);
		 
		
		
		
		return 1;
	}

	
public List<UserModel> checkRegistration(String email) {
     return dao.checkRegistration(email);
		}

	public List<UserModel> login(UserModel um) {
		
		List<UserModel> l=dao.login(um);
		System.out.println(l);
		return l;
	}

	
	@Transactional
	//checking status
	public String checkAndSetStatus(int otp)  {
		try {
		if(dao.checkRegOtp(otp)==otp) {
			 dao.updateStatus(otp);   
			return "Login";
		 }
		else
		    {
			return "regotp";
			}
		
		}catch(Exception e) {
			return "error";
		}
		//System.out.println(otpr);
			//  dao.updateStatus(otp);   
		 }

	//for email sending 
	@Transactional
	public int sendEmail(String email, int otp) throws MessagingException {
		//SimpleMailMessage message = new SimpleMailMessage();
		//message.setFrom("hritikgawali@gmail.com");
		//message.setTo(email);
		//System.out.println(email);
		//System.out.println(otp);
		
		//message.setSubject("Check OTP: ");
		//message.setText("Your OTP is: "+otp);
		//mailSender.send(message);
		
		MimeMessage mimeMessage = ((JavaMailSender) mailSender).createMimeMessage();
	    MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");

	    helper.setTo(email);
	    helper.setSubject("HS Group - OTP for Sign Up");
	   
	    // HTML content
	    String htmlContent = "<html><body>" +
	            "<p>Hi,</p>" +
	            "<p>Use the following OTP to complete your Sign Up procedures. OTP is valid for 5 minutes.</p>" +
	            "<h2 style=\"background: #00466a;margin: 0 auto;width: max-content;padding: 0 10px;color: #fff;border-radius: 4px;\">"
	            + otp + "</h2>" +
	            "<p style=\"font-size:0.9em;\">Regards,<br />Hs Group</p>" +
	            "</body></html>";

	    // Set HTML content
	    helper.setText(htmlContent, true);

	    // Send the email
	    ((JavaMailSender) mailSender).send(mimeMessage);

		
		
		
		dao.saveOrUpdateOtp(email, otp);
		return 1;
	}
	
	public String cecksendPassword(int otp) throws MessagingException {
		
		  UserModel user = dao.getPasswordByOtp(otp);

	        if (user != null) {
	            // If the user is found, you can access both password and email
	            String password = user.getPassword();
	            String email = user.getEmail();
	            System.out.println(password);             
	            System.out.println(email);
	           // SimpleMailMessage s = new SimpleMailMessage();
	           // s.setTo(email);
	          //  s.setText("Your password is" +password);
	           // mailSender.send(s);
	            

	    		MimeMessage mimeMessage = ((JavaMailSender) mailSender).createMimeMessage();
	    	    MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");

	    	    helper.setTo(email);
	    	    helper.setSubject("HS Group - Please Check Your Password");
	    	   
	    	    // HTML content
	    	    String htmlContent = "<html><body>" +
	    	            "<p>Hi,</p>" +
	    	            "<p>This is Your password. Please Do not Share your password with Anyone</p>" +
	    	            "<h2 style=\"background: #00466a;margin: 0 auto;width: max-content;padding: 0 10px;color: #fff;border-radius: 4px;\">"
	    	            + password + "</h2>" +
	    	            "<p style=\"font-size:0.9em;\">Regards,<br />Hs Group</p>" +
	    	            "</body></html>";

	    	    // Set HTML content
	    	    helper.setText(htmlContent, true);

	    	    // Send the email
	    	    ((JavaMailSender) mailSender).send(mimeMessage);

	    		
	    		
	            
	            
	            
	            
	            return "Password and email retrieved successfully.";
	        } else {
	            // If the OTP doesn't exist, return an error message or handle it accordingly
	            return "Invalid OTP. Please try again.";
	        }
		
		
		
	}
	


	public String ContData(ContactUsMessage cm) {
        dao.ContData(cm);
	 
		return "Success";
	}
    

	public List<ContactUsMessage> getContactUs() {
		List<ContactUsMessage> List=dao.getContactUs();
		return List;
	}

    @Transactional

	public String updateStatus(String messageId) {
    	System.out.println(messageId);
		 dao.updateStatus(messageId);
		 return "success";
		
	}


	public long delete(long id) {
		// TODO Auto-generated method stub
		dao.delete(id);
		return 0;
	}

	
	public void getDeleteMultiple(Long messageId) {
		// TODO Auto-generated method stub
		dao.getDeleteMultiple(messageId);
	}

	@Transactional
	public List<SidebarTopic> getSideTopic() {
		// TODO Auto-generated method stub
		return dao.getSideTopic();
	}
	
	@Transactional
	public void saveSidebar(SidebarTopic topic) {
		// TODO Auto-generated method stub
		dao.saveSidebar(topic);
	}

	@Transactional
	public SidebarTopic findTopicId(long id) {
		// TODO Auto-generated method stub
		return dao.findTopicId(id);
	}

	@Transactional
	public void saveSubTopicWithFile(SubTopic topic2) {
		// TODO Auto-generated method stub
		dao.saveSubTopicWithFile(topic2);
	}

	public void uploadFile(List<CommonsMultipartFile> uploadfiles, List<CommonsMultipartFile> outputfile) 
	{
		// TODO Auto-generated method stub
				List<CommonsMultipartFile> file =outputfile;
				
			    List<String> fileNames1 = new ArrayList<String>();
		   for (CommonsMultipartFile uploadFile : file) 
	       {
			        fileNames1.add(uploadFile.getOriginalFilename());
			        // Upload each file in the list
			        String filePath = "C:\\upload";
			        try 
			        {
			            byte barr[] = uploadFile.getBytes();
			            BufferedOutputStream bout = new BufferedOutputStream(
			                    new FileOutputStream(filePath + "\\" + uploadFile.getOriginalFilename()));
			            bout.write(barr);
			            bout.flush();
			            bout.close();
			        } catch (Exception e) 
			        {
			            System.out.println(e);
			        }
			
			}
			
			// List of uploaded files
		    List<CommonsMultipartFile> file2 = uploadfiles;
		    List<String> fileNames = new ArrayList<String>();
	    for (CommonsMultipartFile uploadFile : file2) 
	    {
		        fileNames.add(uploadFile.getOriginalFilename());
		        // Upload each file in the list
		        String filePath2 = "/ProjectHibernateWebArtifi/src/main/webapp/assets/upload";
		        try 
		        {
		            byte barr[] = uploadFile.getBytes();
		            BufferedOutputStream bout = new BufferedOutputStream(
		                    new FileOutputStream(filePath2 + "\\" + uploadFile.getOriginalFilename()));
		            bout.write(barr);
		            bout.flush();
		            bout.close();
		        } catch (Exception e) 
		        {
		            System.out.println(e);
		        }
		}
		
		    // Now you have a list of file names that you can use for uploading files later
		    System.out.println("File names in the list:");
		    for (String fileName : fileNames) 
		    {
		        System.out.println(fileName);
		    }
	}

	@Transactional
	public List<SubTopic> getSubTopicList() {
		// TODO Auto-generated method stub
		return  dao.getSubTopicList();
	}

	@Transactional
	@Override
	public List<CodeFile> getFilesBySubTopicId(Long subtopicId) {
		// TODO Auto-generated method stub
		return dao.getFilesBySubTopicId(subtopicId);
	}

	@Transactional
	@Override
	public List<Outputfile> getOutputFilesBySubTopicId(Long subtopicId) {
		// TODO Auto-generated method stub
		return dao.getOutputFilesBySubTopicId(subtopicId);
	}

	@Override
	public List<SidebarTopic> checkSideTopic(String topic_name) {
		// TODO Auto-generated method stub
		return dao.checkSideTopic(topic_name);
	}	
	
	
	
}
