package com.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * UserType entity. @author MyEclipse Persistence Tools
 */

public class UserType implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String descript;
	private Set userses = new HashSet(0);

	// Constructors

	/** default constructor */
	public UserType() {
	}

	/** minimal constructor */
	public UserType(String name) {
		this.name = name;
	}

	/** full constructor */
	public UserType(String name, String descript, Set userses) {
		this.name = name;
		this.descript = descript;
		this.userses = userses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescript() {
		return this.descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

	public Set getUserses() {
		return this.userses;
	}

	public void setUserses(Set userses) {
		this.userses = userses;
	}

}