package com.struts.forms;

import org.apache.struts.action.ActionForm;

import com.entity.Comment;

public class CommentForm extends ActionForm {
	Comment item = new Comment();

	public Comment getItem() {
		return item;
	}

	public void setItem(Comment item) {
		this.item = item;
	}
	
}
