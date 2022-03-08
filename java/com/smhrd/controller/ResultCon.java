package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.smhrd.model.A_JjimDAO;
import com.smhrd.model.A_SearchDAO;
import com.smhrd.model.A_SearchDTO;


public class ResultCon  implements iCommand {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ���ڵ�
		request.setCharacterEncoding("utf-8");
		// gson��ü����
		Gson gson = new Gson();
		// JsonArray ��ü ����
		JsonArray jarray = new JsonArray();
		
		//�г��� ��������
		//�ϴ� ���Ƿ� �ο� -> ���ǿ� ����� �г��� �������� ��
		HttpSession session = request.getSession();
		String nick = (String)session.getAttribute("nick");
		
		
		// sort, �ʼ� ��������
		int sort = Integer.parseInt(request.getParameter("num"));
		System.out.println(sort);
		//��
		String[] taste = request.getParameterValues("tasteList");
		int size = taste.length;
		System.out.println("���� ���̴�" + size);
		System.out.println(taste[0]);
		//��
		String[] flavor = request.getParameterValues("flavorList");
		int size2 = flavor.length;
		System.out.println("���� ���̴� " + size2);
		
		//�ɼ�
		String option = request.getParameter("option");
		if(option == null) {
			option = "or";
		}
		System.out.println("������ �ɼ��� > " + option);

		
		// dao ��ü ����
		A_SearchDAO dao = new A_SearchDAO();
		// dtoŸ���� �迭 ����
		ArrayList<A_SearchDTO> list = dao.result(sort, taste, flavor, option);
		
		//�����̺� �����ϱ�
		
		A_JjimDAO dao2 = new A_JjimDAO();
		dao2.insert(list, nick);
		
		
		
		
		System.out.println("������ �ɼ��� " + option + "�̸� �� ������ > " + list.size());

		// ��� ��������
		for (int i = 0; i < list.size(); i++) {
			jarray.add(gson.toJson(list.get(i)));
		}

		response.setContentType("text/plain; charset = utf-8");
		PrintWriter out = response.getWriter();
		out.print(jarray);

	}

}
