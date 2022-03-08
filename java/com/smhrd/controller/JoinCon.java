package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.A_MemberDAO;
import com.smhrd.model.A_MemberDTO;

public class JoinCon  implements iCommand {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//����������Ȯ��
		System.out.println("����Ϸ�");
		
		
		//���ڵ�
		request.setCharacterEncoding("utf-8");
		
		
		//�Է¹��� �� ��������
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String phone = request.getParameter("phone");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String birth = year+"-"+month+"-"+day;
		
		
//		int sex =  Integer.parseInt(request.getParameter("sex"));
		//���� ���ڷ� ��ȯ
		int sex;
		
		if(request.getParameter("sex").equals("����")) {
			sex = 0;
		} else {
			sex = 1;
		}

		
		//ajax�� ��й�ȣ Ȯ�� ��� �߰��Ұ�
		
		
		
		//ȸ������
		//1. dao��ü ����
		A_MemberDAO dao = new A_MemberDAO();
		//2. dtoŸ������ �ޱ�
		int cnt = dao.memberJoin(new A_MemberDTO(id, pw, nick, phone, birth, sex));
		
		//3. ���Ϲޱ�
		
		if(cnt > 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('ȸ������ �Ϸ�');");
			out.print("location.href = 'main.jsp';");
			out.print("</script>");
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('ȸ������ ����...!');");
			out.print("location.href = 'Join.html';"); 
			out.print("</script>");
		}
		
		
		
	}

}
