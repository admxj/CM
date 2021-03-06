/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.struts.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.dao.IArticleTypeDAO;
import com.entity.ArticleType;

/** 
 * MyEclipse Struts
 * Creation date: 04-07-2016
 * 
 * XDoclet definition:
 * @struts.action path="/articleType" name="articleTypeForm" parameter="operate" scope="request" validate="true"
 */
public class ArticleTypeAction extends DispatchAction {
	IArticleTypeDAO iArticleTypeDAO;
	public void setiArticleTypeDAO(IArticleTypeDAO iArticleTypeDAO) {
		this.iArticleTypeDAO = iArticleTypeDAO;
	}

//		public ActionForward execute(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) {
//		ArticleTypeForm articleTypeForm = (ArticleTypeForm) form;// TODO Auto-generated method stub
//		return null;
//	}
	
	public ActionForward doSelectAll(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ArticleType item = new ArticleType();
		List list = iArticleTypeDAO.selectByCondition(item);
		HttpSession session =request.getSession();
		session.setAttribute("ARTICLE_TYPE_LIST", list);
		return mapping.findForward("success");
	}
	
}