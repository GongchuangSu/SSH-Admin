package com.gongchuangsu.ssh.dao;

import java.util.List;

import com.gongchuangsu.ssh.model.Book;

public interface IBookDao {
	List<Book> getAllBooks();
	Book getBookById(long id);
	void addBook(Book book);
	void updateBook(Book book);
	void deleteBook(Book book);
	void deleteBookById(long id);
	boolean bookExists(String isbn);
}
