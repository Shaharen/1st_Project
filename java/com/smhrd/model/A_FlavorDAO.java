package com.smhrd.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class A_FlavorDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt;
	private String sql;
	private String nick;

	// ������ ���� �޼ҵ�
	public void connect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "campus_f_4_0115";
			String password = "smhrd4";
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	// DB��������
	// �������� �ݾ��ش�!
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	// �� ��������!
	public ArrayList<String> flavor(int sort, String flavor) {
		connect();
		ArrayList<String> list = new ArrayList<String>();

		try {
			sql = "select * from flavor where sort = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, sort);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String fal = rs.getString(flavor); // ����
				list.add(fal);
				
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}

		return list;
	}

}
