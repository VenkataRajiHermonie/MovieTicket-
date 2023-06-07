package com.wipro.onlinecinematicket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wipro.onlinecinematicket.bean.Credentials;
import com.wipro.onlinecinematicket.bean.User;
import com.wipro.onlinecinematicket.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String login()
	{
		return "login";
	}
	@GetMapping("/reg")
	public String reg()
	{
		return "register";
	}
	@GetMapping("/change")
	public String change()
	{
		return "changepassword";
	}
	
	@GetMapping("/search")
	public String home(HttpSession session,Model m)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null) {
		String email=user.getEmail();
		m.addAttribute("email", email);
		return "search";
		}
		else {
			return "login";
		}
	}
	
	@GetMapping("/forgot")
	public String forgot()
	{
		return "forgotpassword";
	}
	
	@PostMapping("/register")
	public String register(User user,Model m)
	{
		User u=	userService.toRegister(user);
		if(u!=null)
		{
			
			m.addAttribute("register","Registered Successfully");
			return "login";
		}
		else {
			m.addAttribute("existed","User already exists");
			return "register";
		}
	}
	
	@PostMapping("/login")
	public String login(Credentials credentials,Model m,HttpSession session)
	{
		User user=userService.toLogin(credentials);
		session.setAttribute("user", user);
		if(user!=null)
		{
			
			return "search";
		}
		else {
			m.addAttribute("wrong","Invalid login credentials");
			return "login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
			session.removeAttribute("user");
		}
		return "login";
	}
	
	@GetMapping("/searchhere")
	public String search(HttpSession session,Model m)
	{
		m.addAttribute("message","Ticket Printed Successfully.....");
		return "search";
	}
	
	@RequestMapping(value = "/forgotpassword")
	public String forgotpassword(@RequestParam("email")String email,@RequestParam("newpassword")String newpassword,@RequestParam("newpassword1")String confirmpassword,Model m)
	{
		User user=userService.getUser(email);
		m.addAttribute("changed","Please login with your new password");
		String pass=user.getPassword();
		if(!pass.equals(newpassword)&&newpassword.equals(confirmpassword))
		{
			user.setPassword(newpassword);
			userService.SaveUser(user);
		}
		else {
			m.addAttribute("msg","Passwords Mismatch");
			return "forgotpassword";
		}
		return "login";
	}
	
	@PostMapping("/password")
	public String password(HttpSession session,@RequestParam("newpassword")String newpassword,@RequestParam("password")String password,@RequestParam("newpassword1")String confirmpassword,Model m)
	{
		String email=((User)session.getAttribute("user")).getEmail();
		String pass=((User)session.getAttribute("user")).getPassword();
		User user=userService.getUser(email);
		if(password.equals(pass))
		{
			user.setPassword(newpassword);
		}
		if(newpassword.equals(confirmpassword))
		{
		userService.SaveUser(user);
		m.addAttribute("msg", "Changed Succesfully plz Login with new Password");
		}
		else {
			m.addAttribute("msg1", "Passwords Mismatch");
			return "password";
		}
		
		return "login";
	}
	
	
	
}


