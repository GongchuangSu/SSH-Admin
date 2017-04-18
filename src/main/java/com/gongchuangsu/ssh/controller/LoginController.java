package com.gongchuangsu.ssh.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gongchuangsu.ssh.model.User;
import com.gongchuangsu.ssh.service.IUserService;

@Controller
public class LoginController {
	@Autowired
	private IUserService userService;
	
	/**
	 * ��½����
	 */
	@RequestMapping(value = "login", method = {RequestMethod.POST,RequestMethod.GET})
	public void login(){
		
	}
	
	// ��ʾע�����
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String showRegistrationForm(Model model){
		model.addAttribute(new User());
		return "register";
	}
	
	// ����ע��ҳ��
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String processRegistration(
			@Valid User user, Errors errors){
		if(errors.hasErrors())
			return "register";
		if(userService.userExists(user.getUsername()))
			return "redirect:/register?userExists=true";
		userService.addUser(user);
		return "redirect:.";
	}
}
