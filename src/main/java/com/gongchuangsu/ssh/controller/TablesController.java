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
		if("example_2".equals(keyword)){ // ��example_2ʹ��Ajax�첽����
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
		String method = request.getParameter("method");           // ������ʽ����ѯ/ɾ��Book
		String save_method = request.getParameter("save_method"); // ���淽ʽ: ����/���Book
		String id = request.getParameter("id");                   // Book��id
		/* ���ݱ��淽ʽ(save_method)�Ĳ�ִͬ�в�ͬ�Ĳ���  */
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
		/* ���ݲ�����ʽ(method)�Ĳ�ִͬ�в�ͬ�Ĳ���  */
		if("getBookById".equals(method)){          // ����id��ѯBook
			response.setContentType("application/json");
			String json = JSONArray.fromObject(bookService.getBookById(Integer.parseInt(id))).toString();
			response.getWriter().write(json);
			return null;
		}else if("deleteBookById".equals(method)){ // ����idɾ��Book
			bookService.deleteBookById(Integer.parseInt(id));
			return null;
		}else if("example_2".equals(method)){
			String json = "{\"data\":" + JSONArray.fromObject(bookService.getAllBooks()).toString() +"}";
			response.getWriter().write(json);
			return null;
		}else{                                     // ��ѯ���е�Book
			ModelAndView mv = new ModelAndView("editable-table");
			List<Book> bookList = bookService.getAllBooks();
			mv.addObject("bookList", bookList);
			return mv;
		}
	}
}
