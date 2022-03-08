package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.A_MemberDAO;

public class UpdateCon  implements iCommand {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//���ڵ�
		request.setCharacterEncoding("utf-8");
		
		
		//���ǿ� ����� �г��� ��������
		HttpSession session = request.getSession();
		String nick = (String) session.getAttribute("nick");
		
		//�Է¹��� ��
		String re_pw = request.getParameter("pw");
		String re_nick = request.getParameter("nick");
		String re_phone = request.getParameter("phone");
		
		//ajax�� ��й�ȣ Ȯ�� ����
		
		//dao ��ü ����
		A_MemberDAO dao = new A_MemberDAO();
		
		int cnt = dao.memberUdate(re_pw, re_nick, re_phone, nick);
		
		
		if(cnt >0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			session.setAttribute("nick", nick);
			out.print("<script>");
			out.print("alert('ȸ�������� ����Ǿ����ϴ�.');"); //alert : �߰��� ���� â�� ����ش�
			out.print("location.href = 'main2.jsp';"); // Ȯ��Ű ������ �̵��ϴ� ���(��,�ܺ� ���� ����)
			out.print("</script>");
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('ȸ������ ���� ����...!');"); //alert : �߰��� ���� â�� ����ش�
			out.print("location.href = 'Updatew.html';"); // Ȯ��Ű ������ �̵��ϴ� ���(��,�ܺ� ���� ����)
			out.print("</script>");
		}
		
		
		
		
	}

}
