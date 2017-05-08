package com.gongchuangsu.ssh.dao;

import java.util.List;

import com.gongchuangsu.ssh.model.MacBook;

public interface IMacBookDao {
	List<MacBook> getAllMacBooks();
	MacBook getMacBookById(Integer id);
	void addMacBook(MacBook macbook);
	void updateMacBook(MacBook macbook);
	void deleteMacBook(MacBook macbook);
	void deleteMacBookById(Integer id);
}
