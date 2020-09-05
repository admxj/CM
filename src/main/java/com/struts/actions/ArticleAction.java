/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.struts.actions;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.hibernate.SessionFactory;

import com.dao.IArticleDAO;
import com.entity.Article;
import com.struts.forms.ArticleForm;

/** 
 * MyEclipse Struts
 * Creation date: 04-07-2016
 * 
 * XDoclet definition:
 * @struts.action path="/article" name="articleForm" parameter="operate" scope="request" validate="true"
 */
public class ArticleAction extends DispatchAction {
	IArticleDAO iArticleDAO;
	public void setiArticleDAO(IArticleDAO iArticleDAO) {
		this.iArticleDAO = iArticleDAO;
	}
	
	
	/*
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ArticleForm articleForm = (ArticleForm) form;// TODO Auto-generated method stub
		return null;
	}
	*/
	public ActionForward doSelectAll(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
			Article item = new Article();
			List<Article> list = iArticleDAO.selectByCondition(item);
			HttpSession session = request.getSession();
			session.setAttribute("ARTICLE_LIST", list);
			response.sendRedirect("articleType.do?operate=doSelectAll");

			return null;
	}
	public ActionForward doSelectById(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String result;
		String str = request.getParameter("id");
		if(null==str || str==""){
			result = "success";
		}else{
			int id = Integer.parseInt(str);
			Article article = iArticleDAO.selectById(id);
			HttpSession session = request.getSession();
			session.setAttribute("Article", article);
			response.sendRedirect("comment.do?operate=doSelectByArticle");
			result = "infor";
		}
		return mapping.findForward(result);
	}
}