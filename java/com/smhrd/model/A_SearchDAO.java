package com.smhrd.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class A_SearchDAO {

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

	// �� ���!!!!!

	public ArrayList<A_SearchDTO> result(int sort, String[] taste, String[] flavor, String option) {
		connect();
		ArrayList<A_SearchDTO> list = new ArrayList<A_SearchDTO>();

		/*
		 * sql =
		 * "select dr_id, dr_flavor, dr_taste, dr_abv, dr_des, dr_img, num from test3 where"
		 * ; for (int i = 0; i < taste.length; i++) { sql +=
		 * "(sort = ? and dr_taste like '%"; sql += taste[i]; sql += "%')"; sql += "or";
		 * } for (int i = 0; i < flavor.length; i++) { sql +=
		 * "(sort = ? and dr_taste like '%"; sql += flavor[i]; sql += "%')"; if (i !=
		 * flavor.length) { sql += "or"; }
		 * 
		 * }
		 */
		// �� ��������
		
		
		if (option.equals("or")) {

			sql = "select dr_id, dr_flavor, dr_taste, dr_abv, dr_des, dr_img, dr_num from drinkinfo where";
			for (int i = 0; i < taste.length; i++) {
				sql += "(sort = ? and dr_taste like '%";
				sql += taste[i];
				sql += "%')";
				sql += "or";
			}
			for (int i = 0; i < flavor.length; i++) {
				sql += "(sort = ? and dr_flavor like '%";
				sql += flavor[i];
				sql += "%')";
				if (i != flavor.length-1) {
					sql += "or";
				}

			}
			System.out.println(sql);
			
			//------------------------
			try {
				psmt = conn.prepareStatement(sql);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			//------------------------
			for (int i = 0; i < taste.length; i++) {
				try {
					psmt.setInt(i + 1, sort);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			for (int i = 0; i < flavor.length; i++) {
				try {
					psmt.setInt(taste.length + (i + 1), sort);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			try {
				 rs = psmt.executeQuery();
				while (rs.next()) {

					String dr_id = rs.getString(1);
					String dr_flavor = rs.getString(2);
					String dr_taste = rs.getString(3);
					int dr_abv = rs.getInt(4);
					String dr_des = rs.getString(5);
					String dr_img = rs.getString(6);
					int dr_num = rs.getInt(7);

					A_SearchDTO dtolist = new A_SearchDTO(sort, dr_id, dr_flavor, dr_taste, dr_abv, dr_des, dr_img,
							dr_num);
					list.add(dtolist);

				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close();
			}

		} else if (option.equals("and")) {

			sql = "select dr_id, dr_flavor, dr_taste, dr_abv, dr_des, dr_img, dr_num from drinkinfo where";
			for (int i = 0; i < taste.length; i++) {
				sql += "(sort = ? and dr_taste like '%";
				sql += taste[i];
				sql += "%')";
				sql += "and";
			}
			for (int i = 0; i < flavor.length; i++) {
				sql += "(sort = ? and dr_flavor like '%";
				sql += flavor[i];
				sql += "%')";
				if (i != flavor.length -1) {
					sql += "and";
				}

			}
			
			System.out.println(sql);
			
			//------------------------
			try {
				psmt = conn.prepareStatement(sql);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			//------------------------

			for (int i = 0; i < taste.length; i++) {
				try {
					psmt.setInt(i + 1, sort);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			for (int i = 0; i < flavor.length; i++) {
				try {
					psmt.setInt(taste.length + (i + 1), sort);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			
			
			try {
				 rs = psmt.executeQuery();
				while (rs.next()) {

					String dr_id = rs.getString(1);
					String dr_flavor = rs.getString(2);
					String dr_taste = rs.getString(3);
					int dr_abv = rs.getInt(4);
					String dr_des = rs.getString(5);
					String dr_img = rs.getString(6);
					int dr_num = rs.getInt(7);

					A_SearchDTO dtolist = new A_SearchDTO(sort, dr_id, dr_flavor, dr_taste, dr_abv, dr_des, dr_img,
							dr_num);
					list.add(dtolist);

				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}

		}

	

		return list;
	}
	
	// �� ��ü ���( ���� �Բ� �ִ� ������ )
		public ArrayList<A_SearchDTO> infoAll(int sort) {
			
			connect();

			ArrayList<A_SearchDTO> list = new ArrayList<A_SearchDTO>();
			sql = "select * from drinkInfo where SORT = ?";
			
			try {
					psmt = conn.prepareStatement(sql);
					
					psmt.setInt(1, sort);
					rs = psmt.executeQuery();

					while (rs.next()) {
						String dr_id = rs.getString("DR_ID");
						String dr_flavor = rs.getString("DR_FLAVOR");
						String dr_taste = rs.getString("DR_TASTE");
						int dr_abv = rs.getInt("DR_ABV");
						String dr_des = rs.getString("DR_DES");
						String dr_img = rs.getString("DR_IMG");
						int num = rs.getInt("DR_NUM");
						
						A_SearchDTO drink = new A_SearchDTO(sort, dr_id, dr_flavor, dr_taste, dr_abv, dr_des, dr_img, num);
						list.add(drink);
					}
				

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
			
		}

		public ArrayList<A_SearchDTO> random(int[] numArray) {

			connect();

			ArrayList<A_SearchDTO> list = new ArrayList<A_SearchDTO>();

			try {
				for (int  i = 0 ; i < numArray.length; i++) {
					
					sql = "select * from drinkInfo where DR_NUM = ?";
					psmt = conn.prepareStatement(sql);
					
					psmt.setInt(1, numArray[i]);
					rs = psmt.executeQuery();

					while (rs.next()) {
						int sort = rs.getInt("SORT");
						String dr_id = rs.getString("DR_ID");
						String dr_flavor = rs.getString("DR_FLAVOR");
						String dr_taste = rs.getString("DR_TASTE");
						int dr_abv = rs.getInt("DR_ABV");
						String dr_des = rs.getString("DR_DES");
						String dr_img = rs.getString("DR_IMG");
						
						A_SearchDTO drink = new A_SearchDTO(sort, dr_id, dr_flavor, dr_taste, dr_abv, dr_des, dr_img, numArray[i]);
						list.add(drink);
					}
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
}
