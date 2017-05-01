package com.gongchuangsu.ssh.service;

import java.util.List;

import com.gongchuangsu.ssh.model.User;

public interface IUserService {
	User getUserById(long id);
	List<User> getAllUsers();
	void addUser(User user);
	void updateUser(User user);
	void deleteUser(User user);
	void deleteUserById(long id);
	boolean userExists(String username);
}
