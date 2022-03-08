package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.A_JjimDAO;

public class JjimDeleteCon  implements iCommand {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ���ڵ�
		request.setCharacterEncoding("utf-8");
		
		//�г��� ��������
		String nick = request.getParameter("nick");
		System.out.println("�α׾ƿ��� �г����� >" + nick);
		//dao��ü ����
		A_JjimDAO dao = new A_JjimDAO();
		
		int cnt = dao.JjimDelete(nick);
		System.out.println("�Ѿ�� cnt�� " + cnt);
		
		if(cnt > 0) {
			HttpSession session = request.getSession(); 
			session.invalidate();
			//response.sendRedirect("main.jsp");
		}else {
			//response.sendRedirect("main.jsp");
		}
		
		
		
	}

}
