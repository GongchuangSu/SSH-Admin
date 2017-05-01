package com.gongchuangsu.ssh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gongchuangsu.ssh.dao.IUserDao;
import com.gongchuangsu.ssh.model.User;

@Service
public class UserService implements IUserService{
	@Autowired
	private IUserDao userDao;
	
	@Override
	public User getUserById(long id) {
		User user = userDao.getUserById(id);
		return user;
	}

	@Override
	public List<User> getAllUsers() {
		return userDao.getAllUsers();
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}

	@Override
	public boolean userExists(String username) {
		return userDao.userExists(username);
	}

	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}

	@Override
	public void deleteUser(User user) {
		userDao.deleteUser(user);
	}

	@Override
	public void deleteUserById(long id) {
		userDao.deleteUserById(id);
	}
}
