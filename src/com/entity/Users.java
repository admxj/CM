package com.entity;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer id;
	private UserType userType;
	private String realName;
	private String loginName;
	private String password;
	private String loginIcon;
	private Date regDate;
	private String email;
	private Set comments = new HashSet(0);
	private Set articles = new HashSet(0);

	// Constructors

	/** default constructor */
	public Users() {
		id = 0;
		userType = null;
		realName = "";
		loginName = "";
		password = null;
		loginIcon = "";
		regDate = null;
		email = "";
	}

	/** minimal constructor */
	public Users(UserType userType, String realName, String loginName,
			String password, Date regDate) {
		this.userType = userType;
		this.realName = realName;
		this.loginName = loginName;
		this.password = password;
		this.regDate = regDate;
	}

	/** full constructor */
	public Users(UserType userType, String realName, String loginName,
			String password, String loginIcon, Date regDate, String email,
			Set comments, Set articles) {
		this.userType = userType;
		this.realName = realName;
		this.loginName = loginName;
		this.password = password;
		this.loginIcon = loginIcon;
		this.regDate = regDate;
		this.email = email;
		this.comments = comments;
		this.articles = articles;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public UserType getUserType() {
		return this.userType;
	}

	public void setUserType(UserType userType) {
		this.userType = userType;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getLoginName() {
		return this.loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLoginIcon() {
		return this.loginIcon;
	}

	public void setLoginIcon(String loginIcon) {
		this.loginIcon = loginIcon;
	}

	public Date getRegDate() {
		return this.regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

	public Set getArticles() {
		return this.articles;
	}

	public void setArticles(Set articles) {
		this.articles = articles;
	}

}