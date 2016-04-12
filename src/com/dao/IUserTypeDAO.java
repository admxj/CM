package com.dao;

import java.util.List;

import com.entity.UserType;

public interface IUserTypeDAO {
	public void add(UserType item);
	public void delete(int id);
	public void update(UserType item);
	public UserType selectById(int id);
	public List<UserType> selectByCondition(UserType item);
}
