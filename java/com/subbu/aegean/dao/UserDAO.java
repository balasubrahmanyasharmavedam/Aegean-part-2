package com.subbu.aegean.dao;

import java.util.List;

import com.subbu.aegean.model.User;

public interface UserDAO {
	public List<User> list();
	public User get(int id);
	public void saveOrUpdate(User user);
	public void delete(int id);
	public User getByEmail(String email);
	public boolean isValidUser(String email, String password);
	public boolean isAdmin(String email, String password);
	public boolean isSupplier(String email, String password);

}
