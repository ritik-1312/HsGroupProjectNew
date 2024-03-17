package com.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.hibernate.sql.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.CodeFile;
import com.model.ContactUsMessage;
import com.model.LoginModel;
import com.model.Outputfile;
import com.model.Placements;
import com.model.SidebarTopic;
import com.model.SubTopic;
import com.model.UserModel;

import jakarta.persistence.EntityManager;

 
@Repository
public class UserDaoimpl implements UserDao {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public int saveData(UserModel um, int otp) {
	Session session= sessionFactory.openSession();
	um.setStatus(0);
	um.setOtp(otp);
	session.save(um);
		return 0;
	}

	
	public int checkRegOtp(int otp) {
		 Session session = sessionFactory.getCurrentSession();
		    String hql = "SELECT e.otp FROM UserModel e WHERE e.otp ='"+otp+"'";

		    try {
		        return session.createQuery(hql, Integer.class).getSingleResult();
		              
		                
		    } catch (Exception e) {
		        return 0; // Default value if an exception occurs
		    }
	}

	
	@Transactional
	public int updateStatus(int otp) {
		  Session session = sessionFactory.getCurrentSession();
		 String hql = "UPDATE UserModel e SET e.status = 1 WHERE e.otp = :otp";

		    int updatedCount = session.createQuery(hql)
		                             .setParameter("otp", otp)
		                             .executeUpdate();

		    return updatedCount;
	}
	
	
//for checking email exixts or not
	@Transactional
	
	public List<UserModel> checkRegistration(String email) {
		
		    String hql = "FROM UserModel WHERE email = :email";
		    
		    Query<UserModel> query = sessionFactory.getCurrentSession().createQuery(hql, UserModel.class);
		    query.setParameter("email", email);
		    List<UserModel> result = query.getResultList();

		    // Log statement to check the result
		    System.out.println("Result: " + result);

		    return result.isEmpty() ? null : result;
		}

    @Transactional
	
	public List<UserModel> login(UserModel um) {
		 Session session = sessionFactory.getCurrentSession();
		 List<UserModel> emps = session.createQuery("from UserModel E where E.email = '"+um.getEmail()+"' and E.password='"+um.getPassword()+"' and E.status= 1").list();
		List<UserModel> emps2 = session.createQuery("from UserModel E where E.email = '"+um.getEmail()+"' and E.password='"+um.getPassword()+"' and E.status= 0").list();	
			 
				// List<UserModel> list = emps.size()>0?emps:null;
				 if (emps.size() > 0) {
				        return emps; // Return list for users with status 0
				    } else if (emps2.size() > 0) {
				        return emps2; // Return list for users with status 1
				    } else {
				        return null; // Return null if no matching users found
				    }
				}
    
    
    @Transactional
    public void saveOrUpdateOtp(String email, int otp) {
    	Session session = sessionFactory.getCurrentSession();

        // Find the user by email
    	

        // Update the OTP for the user with the given email
 session.createQuery("UPDATE UserModel SET otp = :otp WHERE email = :email")
                .setParameter("otp", otp)
                .setParameter("email", email)
                .executeUpdate();
    }
    @Transactional
    public UserModel getPasswordByOtp(int otp) {
    	 Session session = sessionFactory.getCurrentSession();

         // Retrieve the password based on the entered OTP
    	 Query<UserModel> query = session.createQuery("FROM UserModel WHERE otp = :otp", UserModel.class);
                 
    	 query.setParameter("otp", otp);
         
         return query.uniqueResult();
    	
    }
  
	public String ContData(ContactUsMessage cm) {
		Session session= sessionFactory.openSession();
		cm.setStatus("unseen");
		session.save(cm);
		return null;
	}

	
	public List<ContactUsMessage> getContactUs() {
		// TODO Auto-generated method stub
		Session session= sessionFactory.openSession();
		
		return session.createQuery("from ContactUsMessage").list();
	}


	@Transactional
	public void updateStatus(String messageId) {
		// TODO Auto-generated method stub
		 String updateQuery = "UPDATE ContactUsMessage m SET m.Status = 'seen' WHERE m.id = '"+messageId+"'";
		    sessionFactory.getCurrentSession()
		        .createQuery(updateQuery)
		      
		        .executeUpdate();
	}
	
	@Transactional
	
	public long delete(long id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		ContactUsMessage cm = (ContactUsMessage) session.get(ContactUsMessage.class, id);
		session.delete(cm);
		return 0;
	}
	@Transactional
	
	public void getDeleteMultiple(Long messageId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		ContactUsMessage cm = (ContactUsMessage) session.get(ContactUsMessage.class, messageId);
		session.delete(cm);
	}


	public List<SidebarTopic> getSideTopic() {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.openSession();
		   return session.createQuery("from SidebarTopic").list();
	}


	public void saveSidebar(SidebarTopic topic) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		//Save the question first to generate its primary key (id)
		session.save(topic);

	}


	public SidebarTopic findTopicId(long id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		SidebarTopic em = (SidebarTopic) session.get(SidebarTopic.class, id);
		return em;
		
	}


	public void saveSubTopicWithFile(SubTopic topic2) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(topic2);
	}


	public List<SubTopic> getSubTopicList() 
	{
		// TODO Auto-generated method stub
			 try 
			 {
			 Session session = sessionFactory.openSession(); 
		          // query to fetch all topics from the Topic class/table
		          Query<SubTopic> query = session.createQuery("FROM SubTopic", SubTopic.class);
		          return query.getResultList();
		      } 
		 	 catch (Exception e) 
		 	 {
		          e.printStackTrace();
		          return null; 
		      }
		 
	}


	@Override
	public List<CodeFile> getFilesBySubTopicId(Long subtopicId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();

	    // Assuming CodeFile has a ManyToOne relationship with Topic named "topic"
	    String hql ="FROM CodeFile cf WHERE cf.sub_topic.id = :subtopicId";
	    List<CodeFile> codeFiles = session.createQuery(hql, CodeFile.class)
	            .setParameter("subtopicId", subtopicId)
	            .getResultList();

	    return codeFiles;
	}


	@Override
	public List<Outputfile> getOutputFilesBySubTopicId(Long subtopicId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();

	    // Assuming CodeFile has a ManyToOne relationship with Topic named "topic"
	    String hql = "FROM Outputfile opf WHERE opf.sub_topic.id = :subtopicId";
	    List<Outputfile> outputFile = session.createQuery(hql, Outputfile.class)
	            .setParameter("subtopicId", subtopicId)
	            .getResultList();

	    return outputFile;
	}

	
	@Transactional
	@Override
	public List<SidebarTopic> checkSideTopic(String topic_name) {
		// TODO Auto-generated method stub
		String hql = "FROM SidebarTopic WHERE topic_name = :topic_name";
	    
	    Query<SidebarTopic> query = sessionFactory.getCurrentSession().createQuery(hql, SidebarTopic.class);
	    query.setParameter("topic_name", topic_name);
	    List<SidebarTopic> result = query.getResultList();

	    // Log statement to check the result
	    System.out.println("Result: " + result);

	    return result.isEmpty() ? null : result;
	}    
	@Transactional
	@Override
	public void updateotp2(String email,int otp) {
		Session session = sessionFactory.getCurrentSession();
		 session.createQuery("UPDATE UserModel SET otp = :otp WHERE email = :email")
         .setParameter("otp", otp)
         .setParameter("email", email)
         .executeUpdate();
		
		
	}
	public int updateStatus2(int otp) {
		  Session session = sessionFactory.getCurrentSession();
		 String hql = "UPDATE UserModel e SET e.status = 1 WHERE e.otp = :otp";

		    int updatedCount = session.createQuery(hql)
		                             .setParameter("otp", otp)
		                             .executeUpdate();

		    return updatedCount;
	}

	@Transactional
	@Override
	public int savePlacement(Placements plmt) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
	    org.hibernate.Transaction tx = null;
	    tx =  session.beginTransaction();
        
        int i=(Integer)session.save(plmt);
        
        tx.commit();
        session.close();
        return i;	 
	}

	
	@Transactional
	@Override
	public List<Placements> getPlacemntlist1() {
		// TODO Auto-generated method stub
		Session s=sessionFactory.openSession();
		List<Placements> list2=s.createQuery("from Placements").list();
		Collections.reverse(list2);
		s.close();
		return list2.stream().limit(10).collect(Collectors.toList());
	}

	@Transactional
	@Override
	public List<Placements> getPlacemntlist2() {
		// TODO Auto-generated method stub
		Session s=sessionFactory.openSession();
		List<Placements> list2;
		try {
	        Query query = s.createQuery("FROM Placements p ORDER BY p.pakage DESC");
	        list2 = query.list();
	    } finally {
	        s.close();
	    }
		return list2;
	}


	@Override
	public List<Placements> forEdit(int id) {
		// TODO Auto-generated method stub
Session s=sessionFactory.openSession();
		
		Placements placement=(Placements) s.createQuery("from Placements where id=:id").setParameter("id", id).uniqueResult();
		
		List<Placements> result=new ArrayList<>();
		 if(placement != null)
		 {
			 result.add(placement);
		 }
		 s.close();
		return result;
	}


	@Transactional
	@Override
	public String updateEdited(Placements pls) {
	    	
			Session session = sessionFactory.getCurrentSession();
		    session.update(pls);
	        return "0";
	}


	@Override
	public String delete(int id) {
		// TODO Auto-generated method stub
		System.out.print("thsi is form dao deleteID:"+id);
		Session s=sessionFactory.openSession();
		Transaction tx=s.beginTransaction();
		Placements p=s.get(Placements.class, id);
		
		s.delete(p);
		tx.commit();
		s.close();
		
		return "1";
	}
    }

