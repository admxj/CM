package com.entity;

import java.security.Timestamp;
import java.sql.Date;


public class Comment implements java.io.Serializable {

	// Fields

	private Integer id;
	private Article article;
	private Users users;
	private String content;
	private Date date;

	// Constructors

	/** default constructor */
	public Comment() {
		id = 0;
		article = null;
		users = null;
		content = "";
	}

	/** minimal constructor */
	public Comment(String content, Date date) {
		this.content = content;
		this.date = date;
	}

	/** full constructor */
	public Comment(Article article, Users users, String content, Date date) {
		this.article = article;
		this.users = users;
		this.content = content;
		this.date = date;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Article getArticle() {
		return this.article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}