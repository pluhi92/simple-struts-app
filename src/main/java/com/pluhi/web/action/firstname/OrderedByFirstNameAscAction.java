package com.pluhi.web.action.firstname;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.pluhi.web.common.SearchHelper;
import com.pluhi.web.form.UserListForm;
import com.pluhi.web.service.db.firstname.OrderedByFirstNameAsc;

public class OrderedByFirstNameAscAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		UserListForm userForm = (UserListForm) form;
		OrderedByFirstNameAsc orderedByFirstNameAsc = new OrderedByFirstNameAsc();
		userForm.setUsers(orderedByFirstNameAsc.findDataBy(SearchHelper.withAll(userForm.getNickname()),
				SearchHelper.withAll(userForm.getAge())));
		return mapping.findForward("success");
	}
}
