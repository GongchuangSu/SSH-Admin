package com.gongchuangsu.ssh.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TreeViewController {

	@RequestMapping(value = "treeview", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView otherChart(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		ModelAndView mv = new ModelAndView("treeview");
		return mv;
	}
}
