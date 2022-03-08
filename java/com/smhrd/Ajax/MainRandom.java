package com.smhrd.Ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.smhrd.model.A_SearchDAO;
import com.smhrd.model.A_SearchDTO;


@WebServlet("/MainRandom")
public class MainRandom extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Random rd = new Random();
		A_SearchDAO dao = new A_SearchDAO();
		ArrayList<A_SearchDTO> randomGroup = new ArrayList<A_SearchDTO>();
		
		int[] numArray = new int[10];
		
		for (int i = 0 ; i < 10; i++) {
			numArray[i] = rd.nextInt(1600)+1;
		}
		randomGroup = dao.random(numArray);
		System.out.println(numArray);
		System.out.println(numArray[0]);
		System.out.println(randomGroup);
		
		Gson gson = new Gson();
		JsonArray jarray = new JsonArray();
		
		for (int i = 0; i < randomGroup.size(); i++) {
			jarray.add(gson.toJson(randomGroup.get(i)));
		}
		response.setContentType("text/plain; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.print(jarray);
		
	}

}
