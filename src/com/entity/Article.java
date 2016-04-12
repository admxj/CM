package com.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Article entity. @author MyEclipse Persistence Tools
 */

public class Article implements java.io.Serializable {

	// Fields

	private Integer id;
	private ArticleType articleType;
	private Users users;
	private Date date;
	private String title;
	private String content;
	private Set comments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Article() {
	}

	/** minimal constructor */
	public Article(Users users, Date date, String title) {
		this.users = users;
		this.date = date;
		this.title = title;
	}

	/** full constructor */
	public Article(ArticleType articleType, Users users, Date date,
			String title, String content, Set comments) {
		this.articleType = articleType;
		this.users = users;
		this.date = date;
		this.title = title;
		this.content = content;
		this.comments = comments;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ArticleType getArticleType() {
		return this.articleType;
	}

	public void setArticleType(ArticleType articleType) {
		this.articleType = articleType;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

}