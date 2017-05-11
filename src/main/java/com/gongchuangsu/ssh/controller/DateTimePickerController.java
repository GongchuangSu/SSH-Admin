package com.gongchuangsu.ssh.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DateTimePickerController {
	
	@RequestMapping(value = "datetimepicker", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView otherChart(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		ModelAndView mv = new ModelAndView("datetimepicker");
		return mv;
	}
}
