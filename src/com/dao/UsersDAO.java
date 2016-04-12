package com.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.entity.Users;

public class UsersDAO extends HibernateDaoSupport implements IUsersDAO {

	public void add(Users item) {
		super.getHibernateTemplate().save(item);
	}

	public void delete(int id) {
		Users item = super.getHibernateTemplate().get(Users.class, id);
		super.getHibernateTemplate().delete(item);
	}

	public void update(Users item) {
		super.getHibernateTemplate().update(item);
	}

	public Users selectById(int id) {
		return super.getHibernateTemplate().get(Users.class, id);
	}
	@SuppressWarnings("unchecked")
	public List<Users> selectByCondition(final Users item) {
		return super.getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(Users.class);
				if(null!=item && null!=item.getLoginName() && null!=item.getPassword() && item.getLoginName()!="" && item.getPassword()!=""){
					criteria.add(Restrictions.eq("loginName", item.getLoginName()));
					criteria.add(Restrictions.eq("password", item.getPassword()));					
				}
				return criteria.list();
			}
		});
	}


}
