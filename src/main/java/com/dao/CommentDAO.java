package com.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.entity.Comment;

public class CommentDAO extends HibernateDaoSupport implements ICommentDAO {

	public void add(Comment item) {
		super.getHibernateTemplate().save(item);
	}

	public void delete(int id) {
		Comment item = super.getHibernateTemplate().get(Comment.class, id);
		super.getHibernateTemplate().delete(item);
	}

	public void update(Comment item) {
		super.getHibernateTemplate().update(item);
	}

	public Comment selectById(int id) {
		return super.getHibernateTemplate().get(Comment.class, id);
	}
	@SuppressWarnings("unchecked")
	public List<Comment> selectByCondition(final Comment item) {
		return super.getHibernateTemplate().executeFind(new HibernateCallback() {

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(Comment.class);
				if(null!=item.getArticle() && item.getArticle().getId()!=0){
					criteria.add(Restrictions.eq("article.id", item.getArticle().getId()));
				}
				return criteria.list();
			}

		});
	}

}
