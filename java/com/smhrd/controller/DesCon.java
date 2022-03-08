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
import com.smhrd.model.A_DesDAO;
import com.smhrd.model.A_DesDTO;


public class DesCon implements iCommand{

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//���ڵ�
		request.setCharacterEncoding("utf-8");
		//gson��ü����
		//Gson gson = new Gson();
		Gson gson = new Gson();
		//JsonArray ��ü ����
		JsonArray jarray = new JsonArray();
		
		
		 int sort = Integer.parseInt(request.getParameter("num"));
		 System.out.println("������ ��з��� > " + sort);
		 
		 
		
		//dao��ü �����
		A_DesDAO dao = new A_DesDAO();
		//�迭�����
		ArrayList<A_DesDTO> deslist = dao.des(sort);
		
		//��з� ���ý� �ش� ����� �̹����� ��������
		for(int i = 0; i < deslist.size(); i++) {
			jarray.add(gson.toJson(deslist.get(i)));
		}
		
		response.setContentType("text/plain; charset = utf-8");
		PrintWriter out = response.getWriter();
		out.print(jarray);
		
		
		
		
		
		
		
		
		
		
	}

}
