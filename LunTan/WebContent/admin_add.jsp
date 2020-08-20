<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html> 
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<base href="<%=basePath%>">
	<link rel="stylesheet" href="https://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css">
	<!-- JavaScript 放置在文档最后面可以使页面加载速度更快 -->
    <!-- 可选: 包含 jQuery 库 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 可选: 合并了 Bootstrap JavaScript 插件 -->
    <script src="https://apps.bdimg.com/libs/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

<script type="text/javascript">
function register(){
		window.location.href="register.do";
}
function back(){
	window.location.href="admin.jsp";
}

</script>
<div class="container" style="background-color: #dedef8">
<form class="form-horizontal" method="post" style="height:600px" method="post" action="insertadmin.do" role="form" >
<h2 class="col-sm-offset-3">添加管理员</h2>
 <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">用户名</label>
    <div class="col-sm-5 col-xs-5">
      <input type="text" class="form-control" id="firstname" name="aname" placeholder="请输入1-10位非空白字符" pattern="[\S]{1,10}" required>
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-3 col-xs-3 control-label">密码</label>
    <div class="col-sm-5 col-xs-5">
      <input type="password" name="apassword" class="form-control" id="lastname" placeholder="请输入4-10位字母、数字或者下划线" pattern="^(\w){4,10}$" required>
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-3 col-xs-3 control-label">再次输入密码</label>
    <div class="col-sm-5 col-xs-5">
      <input type="password" name="arepassword" class="form-control" id="lastname" placeholder="请输入4-10位字母、数字或者下划线" pattern="^(\w){4,10}$" required>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">真实姓名</label>
    <div class="col-sm-5 col-xs-5">
      <input type="text" name="arealname" class="form-control" id="firstname" placeholder="请输入真实姓名" pattern="[\D][\S]{1,8}" required>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">性别</label>
  <label class="radio-inline">
        <input type="radio" name="asex" id="optionsRadios3" value="男"> 男
    </label>
    <label class="radio-inline">
        <input type="radio" name="asex" id="optionsRadios4"  value="女"> 女
    </label>
    </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">电话</label>
    <div class="col-sm-5 col-xs-5">
      <input type="text" name="atelephone" class="form-control" id="firstname" placeholder="请输入电话"  required>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">邮箱</label>
    <div class="col-sm-5 col-xs-5">
      <input type="text" name="aemail" class="form-control" id="firstname" placeholder="请输入邮箱" pattern="^([A-Za-z0-9_\-\.])+@([A-Za-z0-9_\-\.])+.([A-Za-z]{2,4})$" required>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">地址</label>
    <div class="col-sm-5 col-xs-5">
      <input type="text" name="aaddress" class="form-control" id="firstname" placeholder="请输入地址" pattern="[\S]+" required>
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">确定</button>
    </div>
  </div>
   <p class="col-sm-offset-2"><span class="txt2" style="color:red;font-weight:700;font-size:14px;">${message}</span></p>
</form>
                </div>
                
</body>
</html>