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
<div class="path">当前位置:/夜鹰进销存系统/系统设置/日志查询   <span class="rightbox"><input type="text" id="tbkey"/><input type="button" id="btnsearch" value="查询"/></span></div>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblist">
       <tr>
       	 <td style="width:50px;">ID</td><td style="width:150px;">日志类型</td><td style="width:150px;">用户名</td><td>日志内容</td><td style="width:180px;">创建时间</td>
       </tr>
       <%for (Map<String, Object> m : list) { %>
        <tr>
       		<td><%=m.get("id")%></td>       		
       		<td data-typeid="<%=m.get("typeid")%>"  class="hastypeid"></td>
       		<td><%=m.get("username")%></td>
       		<td><%=m.get("msg")%></td>       		
       		<td><%=m.get("ctime")%></td>
       </tr>
    	<% } %>
    </table>
    
    <div class="pager">
       		<%=pagestr%>
    </div>
    
    <script src="./js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
    $("td.hastypeid").each(function(index,item){
    	var typeid=$(item).attr("data-typeid");
    	switch(typeid)
    	{
    		case "1":$(item).text("登录日志");break;
    		case "2":$(item).text("操作日志");break;
    		case "3":$(item).text("异常日志"); $(item).parents("tr").css({"background-color":"red","color":"#fff"});  break;
    	
    	}
    	
    	
    });
    
    //localStorage是本地的一个容器 或者说是一个客户端的容器。 我们在查询的时候  首先检查本地容器中是否包含了关键字，如果包含了关键字  就把这个关键字加入到查询搜索框中。
    var key = localStorage.getItem("keyprosearch");
    $("#tbkey").val(key);
    $("#btnsearch").click(function () {//当为点击搜索按钮的时候，就从搜索文本框中获取搜索的关键字
        var key = $("#tbkey").val();//获取关键字
        localStorage.setItem("keyprosearch", key);//获取到关键字之后，首先在本地的localStorage中保存一份，同时把这个关键字传递给后端的servlet,供后端搜索使用。
        location.href = "loglistforsearch?key=" + key;
    });
  
    </script>

</body>
<ml>