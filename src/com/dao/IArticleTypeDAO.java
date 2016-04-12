package com.dao;

import java.util.List;

import com.entity.ArticleType;

public interface IArticleTypeDAO {
	public void add(ArticleType item);
	public void delete(int id);
	public void update(ArticleType item);
	public ArticleType selectById(int id);
	public List<ArticleType> selectByCondition(ArticleType item);
}
