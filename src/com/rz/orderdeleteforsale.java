package com.rz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class orderdeleteforsale
 */
@WebServlet("/orderdeleteforsale")
public class orderdeleteforsale extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderdeleteforsale() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String orderid=request.getParameter("orderid"); 
		 DBHelper Dal=new DBHelper();
		 String strSql1=" delete from tborderheadforsale where orderid=? "; 
		 String strSql2=" delete from tborderitemsforsale where orderid=? "; 
		 List<Object> params = new ArrayList<Object>();
		 params.add(orderid);
		 Dal.excuteSql(strSql1, params);
		 Dal.excuteSql(strSql2, params);
		 response.sendRedirect("orderheadlistforsale");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
