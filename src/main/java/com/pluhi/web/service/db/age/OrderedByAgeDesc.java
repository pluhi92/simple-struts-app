package com.pluhi.web.service.db.age;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.pluhi.web.form.data.UserData;

public class OrderedByAgeDesc {

	private static final String DATA_SQL = "select id_user, nickname, first_name, age, email from user WHERE nickname like ? AND age like ?"
			+ " ORDER BY age desc";

	private DataSource ds;

	public OrderedByAgeDesc() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("data/mysql");
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}

	public List<UserData> findDataBy(String nickname, String age) throws SQLException {
		List<UserData> data = new ArrayList<>();
		try (Connection conn = ds.getConnection(); 
				PreparedStatement ps = conn.prepareStatement(DATA_SQL);) {
			
			ps.setString(1, nickname);
			ps.setString(2, age);
			
			try (ResultSet rs = ps.executeQuery()) {
				while (rs.next()) {
					UserData user = new UserData();
					user.setId(rs.getLong("id_user"));
					user.setNickname(rs.getString("nickname"));
					user.setFirstName(rs.getString("first_name"));
					user.setAge(rs.getString("age"));
					user.setEmail(rs.getString("email"));
					data.add(user);
				}
				rs.close();
				return data;
			}
		} finally {
		}
	}
}
