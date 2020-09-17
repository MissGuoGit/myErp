<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/comm.css"/>
</head>
<body>
<p class="path">缇梵纪进销存系统/退换货管理/退换货订单</p>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblist">
       <tr>
       	  <td style="width:160px;">商品编号</td><td style="width:100px;">商品名称</td><td style="width:100px;">商品图片</td><td>商品数量</td><td>顾客姓名</td><td style="width:100px;">电话</td><td style="width:180px;">地址</td><td style="width:120px;">时间</td><td style="width:120px;">类型</td><td style="width:120px;">操作</td>    
       </tr>
       <%for (Map<String, Object> m : list) { %>
        <tr>
       		<td><%=m.get("tbpronum")%></td>
       		<td><%=m.get("tbproname")%></td>
       		<td><img src="./upload/<%=m.get("tbproimg")%>" style="width:80px;height:50px;padding:5px 0px;"></td>
       		<td><%=m.get("tbrtuExnum")%>件</td>
       		<td><%=m.get("tbcusname")%></td>
       		<td><%=m.get("tbcustel")%></td>
       		<td><%=m.get("tbcusadds")%></td>
       		<td><%=m.get("tbcurrtime")%></td>
       		<td><%=m.get("opttype")%></td>
       		<td><a href="returnorderdelete?id=<%=m.get("id")%>">删除</a></td>
       </tr>
    	<% } %>
    </table>
    
    <div class="pager">
       		<%=pagestr%>
    </div>
    
   
</body>
</html>