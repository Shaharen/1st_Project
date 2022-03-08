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
import com.smhrd.model.A_TasteDAO;

public class TasteCon implements iCommand {
		  
		public void execute(HttpServletRequest request, HttpServletResponse response)	 throws ServletException, IOException {
		
		// ���ڵ�
		request.setCharacterEncoding("utf-8");
		// gson��ü����
		Gson gson = new Gson();
		// JsonArray ��ü ����
		JsonArray jarray = new JsonArray();

		// sort, �ʼ� ��������
		int sort = Integer.parseInt(request.getParameter("num"));
		System.out.println(sort);
		String taste = request.getParameter("index");
		System.out.println(taste);

		// dao ��ü�����
		A_TasteDAO dao = new A_TasteDAO();

		// �迭�����
		ArrayList<String> tastelist = dao.taste(sort, taste);
		

		// ��з� ���ý� �ش� ����� �̹����� ��������
		for (int i = 0; i < tastelist.size(); i++) {
			jarray.add(gson.toJson(tastelist.get(i)));
		}

		response.setContentType("text/plain; charset = utf-8");
		PrintWriter out = response.getWriter();
		out.print(jarray);

	}

}
