<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="./css/comm.css"/>
	</head>
<body>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
%>
<div class="path">当前位置:/夜鹰进销存系统/经销商管理/查看列表   <span class="rightbox"><input type="text" id="tbkey"/><input type="button" id="btnsearch" value="查询"/></span></div>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblist">
       <tr>
       	  <td style="width:160px;">商品编号</td><td style="width:100px;">商品名称</td><td style="width:100px;">商品图片</td><td>商品数量</td><td>经销商姓名</td><td style="width:100px;">电话</td><td style="width:180px;">地址</td><td style="width:120px;">时间</td><td style="width:120px;">操作</td>    
       </tr>
       <%for (Map<String, Object> m : list) { %>
        <tr>
       		<td><%=m.get("tbpronum")%></td>
       		<td><%=m.get("tbproname")%></td>
       		<td><img src="./upload/<%=m.get("tbproimg")%>" style="width:80px;height:50px;padding:5px 0px;"></td>
       		<td><%=m.get("tbnum")%>件</td>
       		<td><%=m.get("tbsalename")%></td>
       		<td><%=m.get("tbsaletel")%></td>
       		<td><%=m.get("tbsaleadds")%></td>
       		<td><%=m.get("tbcurrtime")%></td>
       		<td><a href="salepeopledelete?id=<%=m.get("id")%>">删除</a></td>
       </tr>
    	<% } %>
    </table>
    
    <div class="pager">
       		<%=pagestr%>
    </div>
    
    <script src="./js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
 
    //localStorage是本地的一个容器 或者说是一个客户端的容器。 我们在查询的时候  首先检查本地容器中是否包含了关键字，如果包含了关键字  就把这个关键字加入到查询搜索框中。
    var key = localStorage.getItem("keyprosearch");
    $("#tbkey").val(key);
    $("#btnsearch").click(function () {//当为点击搜索按钮的时候，就从搜索文本框中获取搜索的关键字
        var key = $("#tbkey").val();//获取关键字
        localStorage.setItem("keyprosearch", key);//获取到关键字之后，首先在本地的localStorage中保存一份，同时把这个关键字传递给后端的servlet,供后端搜索使用。
        location.href = "salepeoplelist?key=" + key;
    });
  
    </script>

</body>
<ml>