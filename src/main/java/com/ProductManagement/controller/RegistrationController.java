package com.ProductManagement.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ProductManagement.Dao.UserDao;
import com.ProductManagement.entities.User;



@Controller
public class RegistrationController {
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	public String registerPage(Model model) {
		User user=new User();
		model.addAttribute("save_user", user);
		return "registration/registrationPage";
	}
	
	@RequestMapping(value="/reg/user", method = RequestMethod.POST)
	public String registrationHandler(@ModelAttribute("save_user") User user, Model model) {
			//System.out.println(user);
			userDao.createUser(user);
			model.addAttribute("message", "Registration Successful");
		return "registration/registrationPage";				
	}

}
