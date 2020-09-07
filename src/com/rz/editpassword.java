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
 * Servlet implementation class editpassword
 */
@WebServlet("/editpassword")
public class editpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editpassword() {
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
		//新密码是多少，要修改哪个人的密码
		String oldpassword=request.getParameter("oldpassword"); 
		String newpassword=request.getParameter("newpassword"); 
		String currentid=((Map<String,Object>)request.getSession().getAttribute("currentuser")).get("id").toString(); 
		//判断旧密码是不是该用户的密码，如果不是则不能修改密码
		DBHelper Dal=new DBHelper();
		String strSql=" select * from tbusers where id=? and password=?"; 
		List<Object> params = new ArrayList<Object>();
		params.add(currentid);
		params.add(oldpassword);
		//list保存查询出来的数据
		List<Map<String, Object>> list = null;
		try {
			list=Dal.executeQuery(strSql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//验证是否有数据，如果list有数据说明验证成功，否则验证失败
		if(list.size()>0)
		{
			//旧密码输入正确
			String strSql2=" update tbusers set password=? where id=? "; 
			List<Object> params1 = new ArrayList<Object>();
			params1.add(newpassword);
			params1.add(currentid);
			Dal.excuteSql(strSql2, params1);
			//密码更新成功以后跳转
			response.setCharacterEncoding("utf-8");
	   		response.setContentType("text/html;charset=utf-8");
	   		response.getWriter().write("<font color='green'>修改成功,3秒之后发生跳转!</font>");
	   		response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/editpassword.jsp");
			
		}
		else
		{
			//旧密码输入错误，直接跳转回原来的修改页面
			response.setCharacterEncoding("utf-8");
	   		response.setContentType("text/html;charset=utf-8");
	   		response.getWriter().write("<font color='green'>修改失败,请重新填写原始密码!</font>");
	   		response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/editpassword.jsp");
		}
		
	}

}
