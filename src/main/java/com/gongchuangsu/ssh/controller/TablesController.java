package com.gongchuangsu.ssh.controller;

import java.io.IOException;
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

import net.sf.json.JSONArray;

@Controller
@RequestMapping(value="tables")
public class TablesController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "basic-table", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView basicTable(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{		
		String keyword = request.getParameter("keyword");
		if("example_2".equals(keyword)){ // 表example_2使用Ajax异步传输
			String json = "{\"data\":" + JSONArray.fromObject(userService.getAllUsers()).toString() +"}";
			response.getWriter().write(json);
			return null;
		}else{
			ModelAndView mv = new ModelAndView("basic-table");
			String username = request.getParameter("username");
			List<User> userList = userService.getAllUsers();
			mv.addObject("username", username);
			mv.addObject("userList", userList);
			return mv;
		}
	}
	
	@RequestMapping(value = "editable-table", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView editTable(HttpServletRequest request, 
			HttpServletResponse response){		
		ModelAndView mv = new ModelAndView("editable-table");
		String username = request.getParameter("username");
		List<User> userList = userService.getAllUsers();
		mv.addObject("username", username);
		mv.addObject("userList", userList);
		return mv;
	}
}
