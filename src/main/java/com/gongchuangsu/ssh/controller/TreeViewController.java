package com.gongchuangsu.ssh.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gongchuangsu.ssh.model.TreeViewObj;
import com.gongchuangsu.ssh.util.TreeViewPropertyFilter;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

@Controller
public class TreeViewController {

	@RequestMapping(value = "treeview", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView otherChart(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		response.setContentType("application/json;charset=UTF-8");
		String action = request.getParameter("action");
		if("getData".equals(action)){
			ArrayList<TreeViewObj> list = new ArrayList<TreeViewObj>();
			list.add(new TreeViewObj("��е1��"));
			list.add(new TreeViewObj("��е2��"));
			list.add(new TreeViewObj("��е3��"));
			ArrayList<TreeViewObj> list2 = new ArrayList<TreeViewObj>();
			list2.add(new TreeViewObj("���1��"));
			list2.add(new TreeViewObj("���2��"));
			ArrayList<TreeViewObj> list3 = new ArrayList<TreeViewObj>();
			list3.add(new TreeViewObj("��еרҵ",list));
			list3.add(new TreeViewObj("���רҵ",list2));
			ArrayList<TreeViewObj> list4 = new ArrayList<TreeViewObj>();
			list4.add(new TreeViewObj("��е��ѧ�빤��ѧԺ",list3));
			JsonConfig jsonConfig = new JsonConfig();
			TreeViewPropertyFilter filter = new TreeViewPropertyFilter();
			jsonConfig.setJsonPropertyFilter(filter);
			String json = JSONArray.fromObject(list4, jsonConfig).toString();
			response.getWriter().write(json);
			return null;
		}else{
			ModelAndView mv = new ModelAndView("treeview");
			return mv;
		}
	}
}
