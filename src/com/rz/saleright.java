package com.rz;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class saleright
 */
@WebServlet("/saleright")
public class saleright extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public saleright() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sessionid=request.getSession().getId();
		List<Map<String, Object>> carlistall = null;
		List<Object> params2 = new ArrayList<Object>();
		DBHelper Dal=new DBHelper();
		String strSqlpager=" select  * from tbshoppingcarforsale where sessionid=? "; 
		params2.add(sessionid);
		try {
			carlistall=Dal.executeQuery(strSqlpager, params2);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("carlistall", carlistall);		
		request.getRequestDispatcher("/admin/saleright.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
