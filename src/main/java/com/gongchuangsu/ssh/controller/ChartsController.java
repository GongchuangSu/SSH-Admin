package com.gongchuangsu.ssh.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.gongchuangsu.ssh.model.MacBook;
import com.gongchuangsu.ssh.service.MacBookService;
import com.gongchuangsu.ssh.util.DateJsonValueProcessor;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;


@Controller
@RequestMapping(value="charts")
public class ChartsController {
	@Autowired
	private MacBookService macBookService;

	@RequestMapping(value = "line-chart", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView lineChart(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{		
		String action = request.getParameter("action");
		/* json config for java.sql.Date */
		JsonConfig jsonConfig = new JsonConfig();
		DateJsonValueProcessor dateProcessor = new DateJsonValueProcessor("yyyy-MM-dd");
		jsonConfig.registerJsonValueProcessor(java.sql.Date.class,dateProcessor);
		if("getDataXY".equals(action)){
			String json = JSONArray.fromObject(macBookService.getAllMacBooks(),jsonConfig).toString();
			response.getWriter().write(json);
			return null;
		}else{
			ModelAndView mv = new ModelAndView("line-chart");
			return mv;
		}
	}
	
	@RequestMapping(value = "bar-chart", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView barChart(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		String action = request.getParameter("action");
		/* json config for java.sql.Date */
		JsonConfig jsonConfig = new JsonConfig();
		DateJsonValueProcessor dateProcessor = new DateJsonValueProcessor("yyyy-MM-dd");
		jsonConfig.registerJsonValueProcessor(java.sql.Date.class,dateProcessor);
		if("getDataXY".equals(action)){
			String json = JSONArray.fromObject(macBookService.getAllMacBooks(),jsonConfig).toString();
			response.getWriter().write(json);
			return null;
		}else{
			ModelAndView mv = new ModelAndView("bar-chart");
			return mv;
		}
	}
	
	@RequestMapping(value = "pie-chart", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView pieChart(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		ModelAndView mv = new ModelAndView("pie-chart");
		return mv;
	}
	
	@RequestMapping(value = "others", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView otherChart(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		ModelAndView mv = new ModelAndView("other-charts");
		return mv;
	}
	
	@RequestMapping(value = "macbooks", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView macBookTable(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{		
		String method = request.getParameter("method");           // ������ʽ����ѯ/ɾ��MacBook
		String save_method = request.getParameter("save_method"); // ���淽ʽ: ����/���MacBook
		String id = request.getParameter("id");                   // MacBook��id
		/* json config for java.sql.Date */
		JsonConfig jsonConfig = new JsonConfig();
		DateJsonValueProcessor dateProcessor = new DateJsonValueProcessor("yyyy-MM-dd");
		jsonConfig.registerJsonValueProcessor(java.sql.Date.class,dateProcessor);
		/* ���ݱ��淽ʽ(save_method)�Ĳ�ִͬ�в�ͬ�Ĳ���  */
		if("add".equals(save_method)){
			MacBook mb = new MacBook();
			mb.setModelNumber(request.getParameter("modelNumber"));
			mb.setDate(Date.valueOf(request.getParameter("date")));
			mb.setPrice(Double.parseDouble(request.getParameter("price")));
			macBookService.addMacBook(mb);
		}else if("update".equals(save_method)){
			MacBook mb = macBookService.getMacBookById(Integer.parseInt(request.getParameter("id")));
			mb.setModelNumber(request.getParameter("modelNumber"));
			mb.setDate(Date.valueOf(request.getParameter("date")));
			mb.setPrice(Double.parseDouble(request.getParameter("price")));
			macBookService.updateMacBook(mb);
		}
		/* ���ݲ�����ʽ(method)�Ĳ�ִͬ�в�ͬ�Ĳ���  */
		if("getMacBookById".equals(method)){          // ����id��ѯMacBook
			response.setContentType("application/json");
			String json = JSONArray.fromObject(macBookService.getMacBookById(Integer.parseInt(id)),jsonConfig).toString();
			response.getWriter().write(json);
			return null;
		}else if("deleteMacBookById".equals(method)){ // ����idɾ��MacBook
			macBookService.deleteMacBookById(Integer.parseInt(id));
			return null;
		}else if("macbooks_table".equals(method)){
			String json = "{\"data\":" + JSONArray.fromObject(macBookService.getAllMacBooks(),jsonConfig).toString() +"}";
			response.getWriter().write(json);
			return null;
		}else{                                     // ��ѯ���е�MacBook
			ModelAndView mv = new ModelAndView("line-chart");
			List<MacBook> macbookList = macBookService.getAllMacBooks();
			mv.addObject("macbookList", macbookList);
			return mv;
		}
	}
}
