package com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/memo3")
public class MemoServlet3 extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memotext = request.getParameter("memotext");
		String prevtext = request.getParameter("prevtext");
		if(prevtext == null){
			prevtext = "";
		}
		String concattext = prevtext + memotext;
		request.setAttribute("concattext", concattext);
		request.getRequestDispatcher("memo3.jsp").forward(request, response);
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
