package com.cgi.web.form;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import com.cgi.web.form.data.UserData;

public class UserListForm extends ActionForm {

	private static final long serialVersionUID = -473562596852452021L;

	private List<UserData> users;

	private String nickname;
	private String age;

	public UserListForm() {
		users = new ArrayList<>();
	}

	public List<UserData> getUsers() {
		return users;
	}

	public void setUsers(List<UserData> users) {
		this.users = users;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public void setAge(String age) {
		this.age = age;
	}

	public String getAge() {
		return age;
	}

	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		users = new ArrayList<>();
		nickname = null;
		age = null;
	}
}


