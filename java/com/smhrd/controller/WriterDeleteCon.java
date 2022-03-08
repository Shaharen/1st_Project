package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.A_BoardDAO;

public class WriterDeleteCon  implements iCommand {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ���ڵ�
		request.setCharacterEncoding("utf-8");

		// ���ǿ� ����� ��ȣ ��������
		HttpSession session = request.getSession();
		int bo_num = (int) session.getAttribute("bo_num");
		System.out.println("������ ���� �Խ��� ��ȣ�� " + bo_num);
		String nick = (String)session.getAttribute("nick");
		System.out.println("���� ������ �г����� >" + nick);
		
		
		//dao ��ü �����
		A_BoardDAO dao = new A_BoardDAO();
		
		int cnt = dao.Delete(bo_num, nick);
		

		if(cnt > 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('�ۻ��� �Ϸ�');");
			out.print("location.href = 'Board.jsp';");
			out.print("</script>");
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('�ۻ��� ����');");
			out.print("location.href = 'Board.jsp';"); 
			out.print("</script>");
		}
		
		
		
		

	}

}
