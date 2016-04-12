package com.dao;

import java.util.List;
import com.entity.Users;

public interface IUsersDAO {
	public void add(Users item);
	public void delete(int id);
	public void update(Users item);
	public Users selectById(int id);
	public List<Users> selectByCondition(Users item);
}
