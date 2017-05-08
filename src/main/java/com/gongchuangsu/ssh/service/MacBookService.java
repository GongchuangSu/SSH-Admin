package com.gongchuangsu.ssh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gongchuangsu.ssh.dao.IMacBookDao;
import com.gongchuangsu.ssh.model.MacBook;

@Service
public class MacBookService implements IMacBookService{
	@Autowired
	private IMacBookDao macbookDao;
	
	@Override
	public List<MacBook> getAllMacBooks() {
		return macbookDao.getAllMacBooks();
	}

	@Override
	public MacBook getMacBookById(Integer id) {
		return macbookDao.getMacBookById(id);
	}

	@Override
	public void addMacBook(MacBook macbook) {
	    macbookDao.addMacBook(macbook);
	}

	@Override
	public void updateMacBook(MacBook macbook) {
		macbookDao.updateMacBook(macbook);
	}

	@Override
	public void deleteMacBook(MacBook macbook) {
		macbookDao.deleteMacBook(macbook);
	}

	@Override
	public void deleteMacBookById(Integer id) {
		macbookDao.deleteMacBookById(id);
	}
}
