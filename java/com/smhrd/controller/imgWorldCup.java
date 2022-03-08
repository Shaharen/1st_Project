package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.A_WorldCupDAO;
import com.smhrd.model.A_WorldCupDTO;


@WebServlet("/imgWorldCup")
public class imgWorldCup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		A_WorldCupDAO dao = new A_WorldCupDAO();

		Random rd = new Random();

		ArrayList<A_WorldCupDTO> imgGroup = new ArrayList<A_WorldCupDTO>();
		int[] number = new int[8];
		ArrayList<Integer> num = new ArrayList<Integer>();

		for (int i = 0; i < 8; i++) {
			number[i] = rd.nextInt(21) + 1;
			for (int j = 0; j < i; j++) {
				if (number[i] == number[j]) {
					i--;
					break;
				}
			}
		}
		for (int i = 0; i < number.length; i++) {
			System.out.println(number[i]);
			num.add(number[i]);
		}

		imgGroup = dao.worldCup(num);

		System.out.println(num);
		System.out.println(imgGroup);
		System.out.println(num.get(0));

		request.setAttribute("imgGroup", imgGroup);

		RequestDispatcher dispatcher = request.getRequestDispatcher("worldCup.jsp");
		dispatcher.forward(request, response);
	}

}
