package com.struts.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.dao.ICommentDAO;
import com.entity.Article;
import com.entity.Comment;
import com.struts.forms.CommentForm;

public class CommentAction extends DispatchAction {
	ICommentDAO iCommentDAO;
	public void setiCommentDAO(ICommentDAO iCommentDAO) {
		this.iCommentDAO = iCommentDAO;
	}

	public ActionForward doSelectByArticle(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		Article article = (Article) session.getAttribute("Article");
		Comment item = new Comment();
		item.setArticle(article);
		List list = iCommentDAO.selectByCondition(item);
		
		session.setAttribute("COMMENT_LIST", list);
		return mapping.findForward("success");
	}
	public ActionForward doAddComment(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		Article article = (Article) session.getAttribute("Article");
		CommentForm commentForm = (CommentForm) form;
		commentForm.getItem().setArticle(article);
		iCommentDAO.add(commentForm.getItem());
		return mapping.findForward("addSuccess");
	}
}
