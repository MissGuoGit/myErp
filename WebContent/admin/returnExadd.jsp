<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style tyle="text/css">
   ul{
	list-style: none;
}
   
.table{
	border-collapse: collapse;
}
.table tr{

}
.table tr td{
    border:solid 1px #ccc;
	width:300px;
	text-align:left;
	padding:5px;
}

.table tr .lable{
    width:100px;
}
.table tr td input{
height:20px;
}
#btnsave{
  width:45px;
  height:25px;
  line-height:25px;
  text-align:center;
}
#btnsearch{
   margin:7px 0 0 10px;
}
</style>
</head>
<body>
<p class="path">当前位置：缇梵纪进销存管理系统/退换货管理/退换货信息录入</p>
<form action="../returnExadd" method="post">
<input type="hidden" name="tbproid" id="tbproid"/>
<table border="0" cellspacing="0" cellpadding="0" class="table">
	<tr><td class="lable">商品编号</td><td><input type="text" name="tbpronum" id="tbpronum"/><input type="button" id="btnsearch" value="查询" style="width:50px;height:24px;"/> <span class="errormsg" id="errormsg"></span></td></tr>
	<tr><td class="lable">商品名称</td><td><input type="text" name="tbproname" id="tbproname" readonly="readonly"/></td></tr>
	<tr><td class="lable">商品类别</td><td><input type="text" name="tbpropath" id="tbpropath"/></td></tr>
	<tr><td class="lable">商品图片</td><td><img src="" id="proimg"/><input type="hidden" name="tbproimg" id="tbproimg" /></td></tr>
	<tr><td class="lable">商品数量</td><td><input type="text" name="tbrtuExnum" id="tbrtuExnum"/></td></tr>
	<tr><td class="lable">顾客姓名</td><td><input type="text" name="tbcusname"/></td></tr>
	<tr><td class="lable">顾客电话</td><td><input type="text" name="tbcustel"/></td></tr>
	<tr><td class="lable">顾客地址</td><td><input type="text" name="tbcusadds"/></td></tr>
	<tr><td class="lable change"><input type="radio" value="退货" name="opttype" checked="checked"/>退货 </td><td class="lable"> <input type="radio" value="换货" name="opttype"/>换货</td></tr>	
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