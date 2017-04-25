package com.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.entity.ArticleType;

public class ArticleTypeDAO extends HibernateDaoSupport implements IArticleTypeDAO {

	public void add(ArticleType item) {
		super.getHibernateTemplate().save(item);
	}

	public void delete(int id) {
		ArticleTypeDAO item = super.getHibernateTemplate().get(ArticleTypeDAO.class, id);
		super.getHibernateTemplate().delete(item);
	}

	public void update(ArticleType item) {
		super.getHibernateTemplate().update(item);
	}

	public ArticleType selectById(int id) {
		return super.getHibernateTemplate().get(ArticleType.class, id);
	}

	public List selectByCondition(final ArticleType item) {
		return super.getHibernateTemplate().executeFind(new HibernateCallback() {

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(ArticleType.class);
				if(null!=item.getName() && item.getName()!="")
					criteria.add(Restrictions.like("name", item.getName(),MatchMode.ANYWHERE));
				if(null!=item.getDescript() && item.getDescript()!="")
					criteria.add(Restrictions.like("descript", item.getDescript(),MatchMode.ANYWHERE));
				return criteria.list();
			}

		});
	}

}
