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
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username"); 
		String password=request.getParameter("password"); 
		username=common.sqlValidate(username);
		password=common.sqlValidate(password);
		DBHelper Dal=new DBHelper();
		String strSql=" select * from tbusers where username='"+username+"' and password='"+password+"'"; 
		List<Object> params = new ArrayList<Object>();
		List<Map<String, Object>> userlist = null;
		try {
			userlist=Dal.executeQuery(strSql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(userlist.size()>0)
		{
			//currentmember
			request.getSession().setAttribute("currentuser", userlist.get(0));
			tblogopt.addmsg(1, "正常登陆系统", request);
			response.sendRedirect("/myerp/admin/default.jsp");
			
		}
		else
		{
			String msg="登陆系统失败,用户名为："+username+"密码为"+password;
			tblogopt.addmsg(3, msg, request);
			response.setCharacterEncoding("utf-8");
	   		response.setContentType("text/html;charset=utf-8");
	   		response.getWriter().write("<font color='red'>登陆失败,2秒之后发生跳转!</font>");
	   		response.setHeader("Refresh", "2;URL="+request.getContextPath()+"/admin/login.jsp");
		}
	}

}
