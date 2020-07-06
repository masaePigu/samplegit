package com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AnswerServlet
 */
@WebServlet("/answer3")
public class AnswerServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// リクエストに対応する処理
		request.setCharacterEncoding("UTF-8");
		String ans = request.getParameter("choice");
		if ("1".equals(ans)) {
			request.setAttribute("message", "おめでとうございます。正解です。");
		} else {
			request.setAttribute("message", "残念!　不正解です。");
		}
		request.getRequestDispatcher("answer.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// doPostメソッドを呼び出す
		doPost(request, response);
	}
}
