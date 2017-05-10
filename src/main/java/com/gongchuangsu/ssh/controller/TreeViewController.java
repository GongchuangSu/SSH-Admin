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
			list.add(new TreeViewObj("机械1班"));
			list.add(new TreeViewObj("机械2班"));
			list.add(new TreeViewObj("机械3班"));
			ArrayList<TreeViewObj> list2 = new ArrayList<TreeViewObj>();
			list2.add(new TreeViewObj("测控1班"));
			list2.add(new TreeViewObj("测控2班"));
			ArrayList<TreeViewObj> list3 = new ArrayList<TreeViewObj>();
			list3.add(new TreeViewObj("机械专业",list));
			list3.add(new TreeViewObj("测控专业",list2));
			ArrayList<TreeViewObj> list4 = new ArrayList<TreeViewObj>();
			list4.add(new TreeViewObj("机械科学与工程学院",list3));
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
