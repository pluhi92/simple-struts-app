package com.cgi.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.cgi.web.common.SearchHelper;
import com.cgi.web.form.UserListForm;
import com.cgi.web.service.db.OrderedByNicknameListDesc;

public class OrderedByNicknameDescAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		UserListForm userForm = (UserListForm) form;
		OrderedByNicknameListDesc orderedByNicknameListDesc = new OrderedByNicknameListDesc();
		userForm.setUsers(orderedByNicknameListDesc.findDataBy(SearchHelper.withAll(userForm.getNickname()),
				SearchHelper.withAll(userForm.getAge())));
		return mapping.findForward("success");
	}
}


