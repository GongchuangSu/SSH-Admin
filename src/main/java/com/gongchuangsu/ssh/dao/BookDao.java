package com.gongchuangsu.ssh.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.gongchuangsu.ssh.model.Book;

@Transactional
@Repository
public class BookDao implements IBookDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> getAllBooks() {
		String hql = "from Book as u order by u.id";
		return (List<Book>) hibernateTemplate.find(hql);
	}

	@Override
	public Book getBookById(long id) {
		return hibernateTemplate.get(Book.class, id);
	}

	@Override
	public void addBook(Book book) {
		hibernateTemplate.save(book);
		
	}

	@Override
	public void updateBook(Book book) {
		Book bk = getBookById(book.getId());
		bk.setIsbn(book.getIsbn());
		bk.setTitle(book.getTitle());
		bk.setAuthor(book.getAuthor());
		bk.setCategory(book.getCategory());
		bk.setPrice(book.getPrice());
		hibernateTemplate.update(bk);
	}

	@Override
	public void deleteBook(Book book) {
		hibernateTemplate.delete(book);
	}

	@Override
	public void deleteBookById(long id) {
		hibernateTemplate.delete(getBookById(id));
	}

	@SuppressWarnings("unchecked")
	@Override
	public boolean bookExists(String isbn) {
		String hql = "from Book u where u.isbn = ?";
		List<Book> books = (List<Book>) hibernateTemplate.find(hql, isbn);
		return books.size() > 0 ? true : false;
	}

}
