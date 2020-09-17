<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
</head>
<body>
<p class="path">当前位置：缇梵纪进销存管理系统/经销商管理/新增经销商</p>
<form action="../salepeopleadd" method="post">
<input type="hidden" name="tbproid" id="tbproid"/>
<table border="0" cellspacing="0" cellpadding="0" class="tb">
	<tr><td class="lable">商品编号</td><td><input type="text" name="tbpronum" id="tbpronum"/><input type="button" id="btnsearch" value="查询" style="width:50px;height:24px;"/> <span class="errormsg" id="errormsg"></span></td></tr>
	<tr><td class="lable">商品名称</td><td><input type="text" name="tbproname" id="tbproname" readonly="readonly"/></td></tr>
	<tr><td class="lable">商品类别</td><td><input type="text" name="tbpropath" id="tbpropath"/></td></tr>
	<tr><td class="lable">商品图片</td><td><img src="" id="proimg"/><input type="hidden" name="tbproimg" id="tbproimg" /></td></tr>
	<tr><td class="lable">商品数量</td><td><input type="text" name="tbnum" id="tbrtuExnum"/></td></tr>
	<tr><td class="lable">经销商姓名</td><td><input type="text" name="tbsalename"/></td></tr>
	<tr><td class="lable">经销商电话</td><td><input type="text" name="tbsaletel"/></td></tr>
	<tr><td class="lable">经销地址</td><td><input type="text" name="tbsaleadds"/></td></tr>
	<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="保存" id="btnsave"/></td></tr>
	
</table>
</form>

<script src="../js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">

	$("#btnsave").click(function(e){
		var proid=$("#tbproid").val();
		if(!proid.length>0)
		{
			alert("请先输入商品编号点击查询按钮确认商品库中有该商品");
			$("#tbpronum").focus();
			e.preventDefault();
		}
		
	});

	$("#btnsearch").click(function(){
		var pronum=$("#tbpronum").val();
		$.post("../ajax?" + Math.random(), {rnum:"7",pronum:pronum}, function (res) {
			console.log(res.id);
         	if(res.id=="null")
         	{
         			$("#errormsg").text("商品库中没有该商品,请联系管理员!");
             		$("#tbproid").val("");
             		$("#tbproname").val("");	
             		$("#tbprooldcount").val("");	         		
             		$("#tbproimg").val("");	
             		$("#proimg").prop("src","");	
             		$("#tbpropath").val("");	
         	}
         	else
         	{
         		var imgpath="../upload/"+res.imgurl;
         		$("#errormsg").text("");
         		$("#tbproid").val(res.id);
         		$("#tbproname").val(res.proname);	
         		$("#tbprooldcount").val(res.procount);	         		
         		$("#tbproimg").val(res.imgurl);	
         		$("#proimg").prop("src",imgpath);	
         		$("#tbpropath").val(res.fullpath);	
         	}
     	});	
	});
	
 </script>


</body>
</html>