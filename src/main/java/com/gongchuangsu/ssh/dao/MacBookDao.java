package com.gongchuangsu.ssh.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.gongchuangsu.ssh.model.MacBook;

@Transactional
@Repository
public class MacBookDao implements IMacBookDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<MacBook> getAllMacBooks() {
		String hql = "from MacBook as u order by u.id";
		return (List<MacBook>) hibernateTemplate.find(hql);
	}

	@Override
	public MacBook getMacBookById(Integer id) {
		return hibernateTemplate.get(MacBook.class, id);
	}

	@Override
	public void addMacBook(MacBook macbook) {
		hibernateTemplate.save(macbook);
	}

	@Override
	public void updateMacBook(MacBook macbook) {
		MacBook mb = getMacBookById(macbook.getId());
		mb.setModelNumber(macbook.getModelNumber());
		mb.setDate(macbook.getDate());
		mb.setPrice(macbook.getPrice());
		hibernateTemplate.update(mb);
	}

	@Override
	public void deleteMacBook(MacBook macbook) {
		hibernateTemplate.delete(macbook);
	}

	@Override
	public void deleteMacBookById(Integer id) {
		hibernateTemplate.delete(getMacBookById(id));
	}

}
