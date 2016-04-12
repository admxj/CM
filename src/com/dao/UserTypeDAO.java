package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.entity.UserType;

public class UserTypeDAO extends HibernateDaoSupport implements IUserTypeDAO {

	public void add(UserType item) {
		super.getHibernateTemplate().save(item);
	}

	public void delete(int id) {
		UserType item = super.getHibernateTemplate().get(UserType.class, id);
		super.getHibernateTemplate().delete(item);
	}

	public void update(UserType item) {
		super.getHibernateTemplate().update(item);
	}

	public UserType selectById(int id) {
		return super.getHibernateTemplate().get(UserType.class, id);
	}

	public List<UserType> selectByCondition(UserType item) {
		
		return null;
	}

}
