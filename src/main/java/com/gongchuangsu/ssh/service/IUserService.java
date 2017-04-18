package com.gongchuangsu.ssh.service;

import java.util.List;

import com.gongchuangsu.ssh.model.User;

public interface IUserService {
	User getUserById(long id);
	List<User> getAllUsers();
	void addUser(User user);
	boolean userExists(String username);
}
