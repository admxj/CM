package com.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.entity.Article;

public class ArticleDAO extends HibernateDaoSupport implements IArticleDAO {
	
	public void add(Article item) {
		super.getHibernateTemplate().save(item);
	}

	public void delete(int id) {
		Article item = super.getHibernateTemplate().get(Article.class, id);
		super.getHibernateTemplate().delete(item);
	}

	public void update(Article item) {
		super.getHibernateTemplate().update(item);
	}

	public Article selectById(int id) {
		return super.getHibernateTemplate().get(Article.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<Article> selectByCondition(final Article item) {
		return super.getHibernateTemplate().executeFind(new HibernateCallback() {

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(Article.class);
				
				if(item.getArticleType()!=null && item.getArticleType().getId()!=0)
					criteria.createAlias("articleType", "a2").add(Restrictions.eq("id", item.getArticleType().getId()));
				return criteria.list();
			}

		});
	}

}
