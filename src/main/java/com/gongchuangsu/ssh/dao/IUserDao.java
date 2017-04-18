package com.gongchuangsu.ssh.dao;

import java.util.List;

import com.gongchuangsu.ssh.model.User;

public interface IUserDao {
	List<User> getAllUsers();
	User getUserById(long id);
	void addUser(User user);
	void updateUser(User user);
	void deleteUser(User user);
	void deleteUserById(long id);
	boolean userExists(String username);
}
