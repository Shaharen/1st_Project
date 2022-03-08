package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.A_ReplyDAO;
import com.smhrd.model.A_ReplyDTO;

public class ReplyCon  implements iCommand {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ���ڵ�
		request.setCharacterEncoding("utf-8");

		// ���ǿ� ����� bo_num, nick ��������
		HttpSession bo_num = request.getSession();
		HttpSession session = request.getSession();
		int re_bo_num = (int) bo_num.getAttribute("bo_num");
		String nick = (String) session.getAttribute("nick");

		// �������� Ȯ��
		System.out.println(re_bo_num);
		System.out.println(nick);

		// �Է¹��� �� ��������

		String re_coment = request.getParameter("re_coment");

		// ��� �����Ű���??
		// ���� ������Ʈ������ ���ڸ� �޾ƿԴµ� ��� �ٴ±�ɿ��� ����� �ް� ����� �� �������� �̵��ϰ� ������ ������ ������ �ϴ� �����帱���?
		// �ܳ�
		//db���� ���µ� ������ ������ �������󱸿�
		
		
		// dao��ü ����
		A_ReplyDAO dao = new A_ReplyDAO();

		
		// ���⼭ ���� �Ѿ�� null ���� �Ѿ�� �� ���ƿ�
		// ���⼭ �ѱ�� ���� db�� ���µ� db���� �� ����
		
		//�Ʊ� �׷��� content.jsp ���� �ٸ� �������� �̵����Ѻ��ϱ� �ٸ��������δ� �� �̵��� �Ǵµ� �� ���������� �̵��Ϸ��� �ϸ� ������ �������󱸿�
		int cnt = dao.Input(new A_ReplyDTO(0, re_bo_num, nick, re_coment, null, 0));

		// ���Ϲޱ�
		if (cnt > 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('����ۼ��Ϸ�');");
			out.print("location.href = 'Content.jsp?bo_num="+ re_bo_num +"';");  // ��ȣ...... ����.... �ڵ� �� �´µ�.... �ȳѾ�°� ���� �ǹ��̳׿�....
			// �̰� ��� �غ��ϱ� ��� �����ε� Ȥ��
			// ������Ʈ������ �޾ƿ� ���� ������ �ٽ� �����ϸ� ���������?
			//null������ �����°� �� ������������ ������Ʈ������ num�� �������ͼ� null�̶� ������ �ߴ°� ���Ƽ���
			// �׷� �׽�Ʈ�� ���� ���������� �Ѿ�ö� num ���� ���� �����ͼ� ������ ��� �״ٰ� ���⼭ �ٽ� �̵��� �� ���� �������°� ����?
			//�׷��� �̷��� �غôµ��� �ȵǴ��󱸿�
			// Ȥ�� ���� �³� Ȯ�����ֽǼ� �������? ���ɷ� �ϴ� �����ؼ� �� �߻��ϴ� ������ Ȯ���غ��ô�!
			//���� �غ����? �ܳ�! �ѹ� ���ּ���!
			//���� num �����°ɷ� ������Ʈ�� ���·� �ٲ㼭 url�� ������ �Ѱſ��� �����غ��Կ�
			// ������ �������󱸿�...
			
			// �ϴ� ���� �Ѿ�� �ϴ°� ������ �������·� ���ϱ� ���� �� Ȱ���ϸ� �������� �������?
			// " 2" ������� �����ؼ� ���°� ���Ƽ�.. ���Ű� �ɲ� �ɸ��׿�
			// �׷� ��ȯ�ؼ� �ѹ� �غ��ڽ��ϴ�!
			
			// �ܳ� �ѹ� �غ��ñ� �ȵǸ� ���������׵� �ѹ� ��û��� ���ô� �̤�
			//��! �����մϴ� ����
			out.print("</script>");
			//System.out.println();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('����ۼ�����');");
			out.print("location.href = 'Content.jsp';");
			out.print("</script>");
		}

	}

}
