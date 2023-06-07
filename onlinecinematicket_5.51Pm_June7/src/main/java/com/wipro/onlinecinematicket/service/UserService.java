package com.wipro.onlinecinematicket.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.onlinecinematicket.bean.Credentials;
import com.wipro.onlinecinematicket.bean.User;
import com.wipro.onlinecinematicket.repositories.UserRepo;

@Service
public class UserService {
	@Autowired
	private UserRepo userRepo;
	
	public User toRegister(User user) 
	{
		User user1=userRepo.findByEmail(user.getEmail());
		
		if(user1==null)
		{
			return userRepo.save(user);	
		}
		
		else {
			return null;
		}	
	}
	
	public User toLogin(Credentials login) 
	{
		User user=((UserRepo) userRepo).findByUseremailAndPassword(login.getUseremail(),login.getPassword());
		System.out.println(login.getUseremail()+ login.getPassword());
		if(user != null)
		{
			return user;
		}
		else {
		
			return null;
		}
	}
	
	public User getUser(String email)
	{
		return userRepo.findByEmail(email);
	}
	
	public User SaveUser(User user)
	{
		return userRepo.save(user);
	}


}
