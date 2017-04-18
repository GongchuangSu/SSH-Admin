package com.gongchuangsu.ssh.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gongchuangsu.ssh.model.User;
import com.gongchuangsu.ssh.model.UserRole;

@Transactional
@Repository
public class UserDao implements IUserDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<User> getAllUsers() {
		String hql = "from User as u order by u.id";
		return (List<User>) hibernateTemplate.find(hql);
	}

	@Override
	public User getUserById(long id) {
		return hibernateTemplate.get(User.class, id);
	}

	@Override
	public void addUser(User user) {
		hibernateTemplate.save(user);
		// 插入角色信息，默认角色为ROLE_USER
		UserRole userRole = new UserRole();
		userRole.setUsername(user.getUsername());
		userRole.setRole("ROLE_USER");
		hibernateTemplate.save("UserRole", userRole);
	}

	@Override
	public void updateUser(User user) {
		User u = getUserById(user.getId());
		u.setUsername(user.getUsername());
		u.setPassword(user.getPassword());
		u.setSex(user.getSex());
		u.setPhonenumber(user.getPhonenumber());
		u.setEmailaddress(user.getEmailaddress());
		hibernateTemplate.update(u);
	}

	@Override
	public void deleteUser(User user) {
		hibernateTemplate.delete(user);
	}

	@Override
	public void deleteUserById(long id) {
		hibernateTemplate.delete(getUserById(id));
	}

	@SuppressWarnings("unchecked")
	@Override
	public boolean userExists(String username) {
		String hql = "from User u where u.username = ?";
		List<User> users = (List<User>) hibernateTemplate.find(hql, username);
		return users.size() > 0 ? true : false;
	}
	
}
