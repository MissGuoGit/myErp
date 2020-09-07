package com.rz;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class returnExadd
 */
@WebServlet("/returnExadd")
public class returnExadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public returnExadd() {
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
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		String opttype=request.getParameter("opttype");//退换货标记
		String tbproid=request.getParameter("tbproid");
		String tbpronum=request.getParameter("tbpronum");
		String tbproname=request.getParameter("tbproname");
		String tbpropath=request.getParameter("tbpropath");
		String tbproimg=request.getParameter("tbproimg");
		String tbrtuExnum=request.getParameter("tbrtuExnum");		
		String tbcusname=request.getParameter("tbcusname");	
		String tbcustel=request.getParameter("tbcustel");	
		String tbcusadds=request.getParameter("tbcusadds");	
		Date time1=new Date();
	    SimpleDateFormat df1= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String ctime=df1.format(time1);
	    	
	    
		String strSql1=" insert into tbreturnEx (opttype,tbproid,tbpronum,tbproname,tbpropath,tbproimg,tbcusname,tbcustel,tbcusadds,tbcurrtime,tbrtuExnum) values (?,?,?,?,?,?,?,?,?,?,?)";
		List<Object> params = new ArrayList<Object>();
		
		params.add(opttype);
		params.add(tbproid);
		params.add(tbpronum);	
		params.add(tbproname);				
		params.add(tbpropath);				
		params.add(tbproimg);				
		params.add(tbcusname);
		params.add(tbcustel);
		params.add(tbcusadds);
		params.add(ctime);	
		params.add(tbrtuExnum);
		
		DBHelper Dal=new DBHelper();		
		Dal.excuteSql(strSql1, params);	
		
		// strSql2="update tbproduct set procount=procount+? where pronum=?";
		//String strSql2="update tbproduct set procount=(SELECT SUM(opttype*proaddnum) from tbinout where pronum=?) where pronum=?";		
		//int procountres=Integer.parseInt(tbprocount)*Integer.parseInt(t);	
		//List<Object> params2 = new ArrayList<Object>();			
		//params2.add(tbpronum);
		//params2.add(tbpronum);
		//Dal.excuteSql(strSql2, params2);
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write("<font color='green'>退换货成功！</font>");
		response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/returnExadd.jsp");	
	}

	private String Number(String opttype) {
		// TODO Auto-generated method stub
		return null;
	}

}
