package com.gongchuangsu.ssh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gongchuangsu.ssh.model.User;
import com.gongchuangsu.ssh.service.UserService;

@Controller
public class TablesController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "tables", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView home(HttpServletRequest request, 
			HttpServletResponse response){		
		ModelAndView mv = new ModelAndView("tables");
		String username = request.getParameter("username");
		List<User> userList = userService.getAllUsers();
		mv.addObject("username", username);
		mv.addObject("userList", userList);
		return mv;
	}
}
