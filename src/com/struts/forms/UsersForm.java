package com.struts.forms;

import org.apache.struts.action.ActionForm;

import com.entity.Users;

public class UsersForm extends ActionForm{
	Users item = new Users();

	public Users getItem() {
		return item;
	}

	public void setItem(Users item) {
		this.item = item;
	}
	
}
