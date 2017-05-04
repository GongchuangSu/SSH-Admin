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

import com.gongchuangsu.ssh.model.Book;
import com.gongchuangsu.ssh.model.User;
import com.gongchuangsu.ssh.service.BookService;
import com.gongchuangsu.ssh.service.UserService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping(value="tables")
public class TablesController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private BookService bookService;
	
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
			HttpServletResponse response) throws IOException{		
		String method = request.getParameter("method");           // 操作方式：查询/删除Book
		String save_method = request.getParameter("save_method"); // 保存方式: 更新/添加Book
		String id = request.getParameter("id");                   // Book的id
		/* 根据保存方式(save_method)的不同执行不同的操作  */
		if("add".equals(save_method)){
			Book bk = new Book();
			bk.setIsbn(request.getParameter("isbn"));
			bk.setTitle(request.getParameter("title"));
			bk.setAuthor(request.getParameter("author"));
			bk.setCategory(request.getParameter("category"));
			bk.setPrice(Double.parseDouble(request.getParameter("price")));
			bookService.addBook(bk);
		}else if("update".equals(save_method)){
			Book bk = bookService.getBookById(Integer.parseInt(request.getParameter("id")));
			bk.setIsbn(request.getParameter("isbn"));
			bk.setTitle(request.getParameter("title"));
			bk.setAuthor(request.getParameter("author"));
			bk.setCategory(request.getParameter("category"));
			bk.setPrice(Double.parseDouble(request.getParameter("price")));
			bookService.updateBook(bk);
		}
		/* 根据操作方式(method)的不同执行不同的操作  */
		if("getBookById".equals(method)){          // 根据id查询Book
			response.setContentType("application/json");
			String json = JSONArray.fromObject(bookService.getBookById(Integer.parseInt(id))).toString();
			response.getWriter().write(json);
			return null;
		}else if("deleteBookById".equals(method)){ // 根据id删除Book
			bookService.deleteBookById(Integer.parseInt(id));
			return null;
		}else if("example_2".equals(method)){
			String json = "{\"data\":" + JSONArray.fromObject(bookService.getAllBooks()).toString() +"}";
			response.getWriter().write(json);
			return null;
		}else{                                     // 查询所有的Book
			ModelAndView mv = new ModelAndView("editable-table");
			List<Book> bookList = bookService.getAllBooks();
			mv.addObject("bookList", bookList);
			return mv;
		}
	}
}
