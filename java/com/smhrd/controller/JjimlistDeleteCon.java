package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.A_JjimDAO;

public class JjimlistDeleteCon implements iCommand {

   public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      // ���ڵ�
      request.setCharacterEncoding("utf-8");
      
      //�г��� ��������
      String nick = request.getParameter("nick");
      int dr_num = Integer.parseInt(request.getParameter("dr_num"));
      
      //dao ��ü ����
      A_JjimDAO dao = new A_JjimDAO();
      
      dao.listDelete(nick,dr_num);

   }

}