<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">@IMPORT url("<%=path%>/css/bootstrap.min.css");</style>
<script language='javascript' src='<%=path%>/js/jquery-3.1.0.js'></script>
<script language='javascript' src='<%=path%>/js/bootstrap.js'></script>
<title>登录</title>
<script type="text/javascript">
$(function(){
	var ok1=false;
	var ok2=false;
	 $("form").submit(function(){
		if($('input[name="name"]').val()!=''){
			ok1=true;	
		}
		if($('input[name="pwd"]').val()!=''){
			ok2=true;	
		}
		if(ok1 && ok2){
		$('form').submit();
		}else{
		alert("用户名密码不能为空！");
		 return false;
		}
	});	         
	});
function regist(){
	document.myform.action ="regist";
	document.myform.submit();
	}
</script>
</head>
<body>
 ${msg}
<form action="checkLogin" method="post" name="myform">
<div style="margin-top:50px;text-align:center;">
<div class="col-lg-6" >
<div class="well col-lg-8 col-lg-offset-8">
	<h3>用户登录</h3>
    <div class="input-group" style="margin-top:5px;">
          <span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
          <input type="text" name="name" class="form-control" placeholder="用户名" aria-describedby="sizing-addon1">
    </div>
    <div class="input-group" style="margin-top:5px;">
          <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
          <input type="password" name="pwd" class="form-control" placeholder="密码" aria-describedby="sizing-addon1">
    </div>
	<div style="text-align:center;margin-top:10px;">
    <button type="submit" class="btn btn-success"> &nbsp;&nbsp;登 &nbsp;&nbsp;  录&nbsp;&nbsp;
    </button> 
	&nbsp;&nbsp;
	<button type="button" onclick="regist()" class="btn btn-success"> &nbsp;&nbsp;注&nbsp;&nbsp;  册&nbsp;&nbsp;
    </button> 
	</div>
</div>
</div> 
</div>
</form>
</body>
</html>