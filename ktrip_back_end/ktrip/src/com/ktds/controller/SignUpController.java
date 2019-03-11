package com.ktds.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/signUpCheck")
public class SignUpController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String DB_URL = "jdbc:mysql://ktrip-mysql.crl10pgh3bye.ap-northeast-2.rds.amazonaws.com:3306/ktripdb";
		String DB_USER = "ktrip";
		String DB_PASSWORD = "123456789";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String jdbc_driver = "com.mysql.jdbc.Driver";

		try {
			Class.forName(jdbc_driver);

			conn = (Connection) DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

			/*
			 * signup.jsp form에서 넘어온
			 * id,pwd,name,phone_num,email,sex,national,residential_contry
			 */
			String id = request.getParameter("id");
			String password = request.getParameter("pwd");
			String name = request.getParameter("name");
			String phone_num = request.getParameter("phone_num");
			String email = request.getParameter("email");
			String sex = request.getParameter("sex");
			String nationality = request.getParameter("nationality");
			String residential_contry = request.getParameter("residential_contry");

			pstmt = conn.prepareStatement("select id from user where id = ?");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				System.out.println("중복된 아이디");
				response.sendRedirect("/ktrip/signupFail.jsp");
				return;
			}

			String insertQuery = "insert into user(id,pwd,name,phone_num,email,sex,national,residential_contry) values (?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(insertQuery);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, phone_num);
			pstmt.setString(5, email);
			pstmt.setString(6, sex);
			pstmt.setString(7, nationality);
			pstmt.setString(8, residential_contry);
			
			System.out.println("회원가입 성공");
			request.setAttribute("success", "true");
			response.sendRedirect("/ktrip/index.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("success", "false");
		}

	}
}
