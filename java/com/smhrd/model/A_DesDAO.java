package com.smhrd.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class A_DesDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt;
	private String sql;
	private String nick;
	
	
	//������ ���� �޼ҵ�
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
	
		//sort ���� ��������
			public ArrayList<A_DesDTO> des(int sort){
				connect();
				ArrayList<A_DesDTO> list = new ArrayList<A_DesDTO>();
				
				
				try {
					sql = "select des_des, des_img from drinkdes where sort = ?";
					psmt = conn.prepareStatement(sql);
					
					psmt.setInt(1, sort);
					
					rs = psmt.executeQuery();
					
					while(rs.next()) {
						String des = rs.getString(1);
						String img = rs.getString(2);
						
						A_DesDTO deslist = new A_DesDTO(0, des, img);
						list.add(deslist);
					}
					
					
				} catch (SQLException e) {
					e.printStackTrace();
				}finally {
					close();
				}
				
				
				return list;
				
			}
	// ���� ���
			public String[] infoMsg(int num) {
				
				connect();
				
				String[] list = new String[3];
				sql = "select * from drinkdes where SORT = ?";
				
				try {
						psmt = conn.prepareStatement(sql);
						
						psmt.setInt(1, num);
						rs = psmt.executeQuery();
						
					while(rs.next()) {
						String sort = Integer.toString(num);
						String des = rs.getString("DES_DES");
						String img = rs.getString("DES_IMG");
						list[0] = sort;
						list[1] = des;
						list[2] = img;
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close();
				}
				return list;
			}
	
	
}
