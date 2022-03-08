package com.smhrd.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class A_JjimDAO {
	
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
	//�˻��ϰ� �ٷ� �����̺� �����ϱ�
	public int insert(ArrayList<A_SearchDTO> list, String nick) {
		connect();
		
		
		
		
		
		try {
			for(int i = 0; i < list.size(); i++) {
			sql = "insert into list values(list_listorder_seq.nextval,?,?,?,?,0,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
//			psmt.setString(1, nick);
//			psmt.setInt(2, list.get(i).getSort());
//			psmt.setString(3, list.get(i).getDr_id());
//			psmt.setString(4, list.get(i).getDr_flavor());
//			psmt.setString(5, list.get(i).getDr_taste());
//			psmt.setInt(6, list.get(i).getDr_abv());
//			psmt.setString(7, list.get(i).getDr_img());
//			psmt.setInt(8, list.get(i).getDr_num());
			
			psmt.setInt(1, list.get(i).getDr_num());
			psmt.setString(2, nick);
			psmt.setInt(3, list.get(i).getSort());
			psmt.setString(4, list.get(i).getDr_id());
			psmt.setString(5, list.get(i).getDr_flavor());
			psmt.setString(6, list.get(i).getDr_taste());
			psmt.setInt(7, list.get(i).getDr_abv());
			psmt.setString(8, list.get(i).getDr_img());
			
			
			
			
			cnt = psmt.executeUpdate();
			
			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return cnt;
	}
	//�� ī��Ʈ ����
	public int cnt(int Jcnt, String nick2, int num) {
		connect();
		int check = 0;
		
		//�򿩺� ���� Ȯ��
		try {
			sql = "select count from list where dr_num = ? and nick = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, num);
			psmt.setString(2, nick2);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				check = rs.getInt(1);
			}
			//���� �ȵȻ��¶�� ī���͸� 1�� ����� �� ���
			if(check == 0) {
				sql = "update list set count = ? where dr_num =? and nick =?";
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, Jcnt);
				psmt.setInt(2, num);
				psmt.setString(3, nick2);
				
				cnt = psmt.executeUpdate();
				return cnt;
				//���� �� ���¶�� ī���͸� 0���� ����� �� ����
			}else if(check == 1) {
				sql =  "update list set count = 0 where dr_num =? and nick =?";
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, num);
				psmt.setString(2, nick2);
				
				cnt = psmt.executeUpdate();
				return cnt;
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		
		
		
		
		
		
		return cnt;
	}
	//���� ���� ���
	public ArrayList<A_JjimDTO> print(String nick2, int cnt2) {
		connect();
		ArrayList<A_JjimDTO> list = new ArrayList<A_JjimDTO>();
		
		
		
		try {
			sql = "select distinct dr_id, dr_flavor, dr_taste, dr_abv, to_char(dr_img),dr_num from list where nick = ? and count = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, nick2);
			psmt.setInt(2, cnt2);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String dr_id =  rs.getString(1);
				String dr_flavor = rs.getString(2);
				String dr_taste = rs.getString(3);
				int dr_abv = rs.getInt(4);
				String dr_img = rs.getString(5);
				int dr_num = rs.getInt(6);
				
				A_JjimDTO jjim = new A_JjimDTO(0, null, 0, dr_id, dr_flavor, dr_taste, dr_abv, dr_img, 0, dr_num);
	            list.add(jjim);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	//�α׾ƿ��� ī���� 0�� ��� ����
	public int JjimDelete(String nick2) {
		connect();
		
		
		
		try {
			sql = "delete from list where nick = ? and count = 0";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, nick2);
			
			cnt = psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
	}
	//����Ʈ���� ������ư�� ���� ����(�����߰��� �κ�)
	   public void listDelete(String nick2, int dr_num) {
	      
	      connect();
	      
	      try {
	         sql = "delete from list where nick = ? and dr_num =?";
	         psmt = conn.prepareStatement(sql);
	         
	         psmt.setString(1, nick2);
	         psmt.setInt(2, dr_num);
	         
	         cnt = psmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	     
	   }
}
