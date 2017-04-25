package com.dao;

import java.util.List;
import com.entity.Article;

public interface IArticleDAO {
	public void add(Article item);
	public void delete(int id);
	public void update(Article item);
	public Article selectById(int id);
	public List<Article> selectByCondition(Article item);
}
