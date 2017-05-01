package com.gongchuangsu.ssh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gongchuangsu.ssh.dao.IBookDao;
import com.gongchuangsu.ssh.model.Book;

@Service
public class BookService implements IBookService{
	@Autowired
	private IBookDao bookDao;

	@Override
	public List<Book> getAllBooks() {
		return bookDao.getAllBooks();
	}

	@Override
	public Book getBookById(long id) {
		Book book = bookDao.getBookById(id);
		return book;
	}

	@Override
	public void addBook(Book book) {
		bookDao.addBook(book);
	}

	@Override
	public void updateBook(Book book) {
		bookDao.updateBook(book);
	}

	@Override
	public void deleteBook(Book book) {
		bookDao.deleteBook(book);
	}

	@Override
	public void deleteBookById(long id) {
		bookDao.deleteBookById(id);
	}

	@Override
	public boolean bookExists(String isbn) {
		return bookDao.bookExists(isbn);
	}

}
