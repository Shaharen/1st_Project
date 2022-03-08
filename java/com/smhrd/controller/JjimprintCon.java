package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.smhrd.model.A_JjimDAO;
import com.smhrd.model.A_JjimDTO;


public class JjimprintCon  implements iCommand {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ���ڵ�
		request.setCharacterEncoding("utf-8");
		// gson��ü����
		Gson gson = new Gson();
		// JsonArray ��ü ����
		JsonArray jarray = new JsonArray();

		// �г��� ��������
		String nick = request.getParameter("nick");
		// ��Ȱ͵鸸 �������� ���� ����
		int cnt = 1;

		// dao ��ü ����
		A_JjimDAO dao = new A_JjimDAO();

		// dtoŸ�� �迭 ����
		ArrayList<A_JjimDTO> list = dao.print(nick, cnt);

		for (int i = 0; i < list.size(); i++) {
			jarray.add(gson.toJson(list.get(i)));
		}

		response.setContentType("text/plain; charset = utf-8");
		PrintWriter out = response.getWriter();
		out.print(jarray);

	}

}
