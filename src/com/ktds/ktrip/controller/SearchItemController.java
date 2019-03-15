package com.ktds.ktrip.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ktds.ktrip.dao.ItemDAO;
import com.ktds.ktrip.domain.ItemVO;


/**
 * Servlet implementation class SearchProductController1
 */
@WebServlet("/SearchItem")
public class SearchItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<ItemVO> itemList;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchItemController() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String destination = request.getParameter("destination");
		String startDate = request.getParameter("start_date");
		String endDate = request.getParameter("end_date");
		
		System.out.println(startDate + " " + endDate + " " + destination);
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");
		long diffDays = 0;
		
		try {
			
			
			Date start = transFormat.parse(startDate);
			Date end = transFormat.parse(endDate);
			
			long diff = end.getTime() - start.getTime();
		    diffDays = diff / (24 * 60 * 60 * 1000);
		    
		    System.out.println(diffDays);
		    
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		ItemDAO item = new ItemDAO();
		itemList = item.searchcount(destination, (int)diffDays);
		 
		for(int i = 0; i<itemList.size(); ++i) {
			result.append("[{\"value\": \"" + itemList.get(i).getItem_id() + "\"},");
			result.append("{\"value\": \"" + itemList.get(i).getTitle() + "\"},");
			result.append("{\"value\": \"" + itemList.get(i).getThumbnail() + "\"},");
			result.append("{\"value\": \"" + itemList.get(i).getConcept() + "\"}],");

		}
		result.append("]}");
		
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().write(result.toString());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String destination = request.getParameter("destination");
		String startDate = request.getParameter("start_date");
		String endDate = request.getParameter("end_date");
		int pagingnumber = Integer.parseInt(request.getParameter("pagingnumber"));
		int pageEnd = pagingnumber * 6;
		
		System.out.println(startDate + " " + endDate + " " + destination);
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");
		long diffDays = 0;
		
		try {
			
			
			Date start = transFormat.parse(startDate);
			Date end = transFormat.parse(endDate);
			
			long diff = end.getTime() - start.getTime();
		    diffDays = diff / (24 * 60 * 60 * 1000);
		    
		    System.out.println(diffDays);
		    
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		ItemDAO item = new ItemDAO();
		itemList = item.searchcount(destination, (int)diffDays);
		 
		if(pageEnd > itemList.size()) {
			pageEnd = itemList.size();
		}
		
		for(int i = pagingnumber*6-6; i<pageEnd; ++i) {
			result.append("[{\"value\": \"" + itemList.get(i).getItem_id() + "\"},");
			result.append("{\"value\": \"" + itemList.get(i).getTitle() + "\"},");
			result.append("{\"value\": \"" + itemList.get(i).getThumbnail() + "\"},");
			result.append("{\"value\": \"" + itemList.get(i).getConcept() + "\"}],");

		}
		result.append("]}");
		
		System.out.println("post result" + result);
		response.getWriter().write(result.toString());
		
	}

}
