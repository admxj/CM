package com.dao;

import java.util.List;

import com.entity.Comment;

public interface ICommentDAO {
	public void add(Comment item);
	public void delete(int id);
	public void update(Comment item);
	public Comment selectById(int id);
	public List<Comment> selectByCondition(Comment item);
}
