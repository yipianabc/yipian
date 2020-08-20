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
	window.location.href="index.jsp";
}

</script>

<nav class="navbar navbar-default" role="navigation"> 
    <div class="container-fluid"> 
        <div class="navbar-header"> 
            <a class="navbar-brand" href="#">设为首页</a> 
            <a class="navbar-brand" href="#">收藏本站</a> 
        </div> 
        <ul class="nav navbar-nav navbar-right"> 
           <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li> 
            <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> 注册</a></li> 
        </ul> 
    </div> 
</nav>

<div class="container">
    <h1><img src="https://f11.baidu.com/it/u=2029577316,72683288&fm=72" style="width:40px">小熊论坛</h1>
    <div class="row">
        <div class="col-md-12" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <div class="row">
                <div class="col-md-24" style="background-color: #B18904; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
                   
<div class="container-fluid"> 
        <div class="navbar-header"> 
            <a class="navbar-brand" href="index.jsp">首页</a>
            <a class="navbar-brand" href="nologin.jsp">我要发帖</a> 
            <a class="navbar-brand" href="help2.jsp">帮助</a>
        </div> 
        <form class="navbar-form navbar-right" role="search">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">提交</button>
    </form>
    </div> 
    </div>
    </div>
    </div>
    
<form class="form-horizontal" style="background-color: #dedef8;" method="post" action="<%=basePath%>register.do" role="form">
<h2 class="col-sm-offset-3">用户注册</h2>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">用户名</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="firstname" name="username" placeholder="请输入1-10位非空白字符" pattern="[\S]{1,10}" required>
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">密码</label>
    <div class="col-sm-5">
      <input type="password" name="password" class="form-control" id="lastname" placeholder="请输入4-10位字母、数字或者下划线" pattern="^(\w){4,10}$" required>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">确认密码</label>
    <div class="col-sm-5">
      <input type="password" name="repassword" class="form-control" id="firstname" placeholder="请再次输入密码" pattern="^(\w){4,10}$" required>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">真实姓名</label>
    <div class="col-sm-5">
      <input type="text" name="realname" class="form-control" id="firstname" placeholder="请输入真实姓名" pattern="[\D][\S]{1,8}" required>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">性别</label>
  <label class="radio-inline">
        <input type="radio" name="sex" id="optionsRadios3" value="男" checked> 男
    </label>
    <label class="radio-inline">
        <input type="radio" name="sex" id="optionsRadios4"  value="女"> 女
    </label>
    </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">电话</label>
    <div class="col-sm-5">
      <input type="text" name="telephone" class="form-control" id="firstname" placeholder="请输入电话"  required>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">邮箱</label>
    <div class="col-sm-5">
      <input type="text" name="email" class="form-control" id="firstname" placeholder="请输入邮箱" pattern="^([A-Za-z0-9_\-\.])+@([A-Za-z0-9_\-\.])+.([A-Za-z]{2,4})$" required>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">地址</label>
    <div class="col-sm-5">
      <input type="text" name="address" class="form-control" id="firstname" placeholder="请输入地址" pattern="[\S]+" required>
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">注册</button>
      <button type="button" class="btn btn-default col-sm-offset-2" onclick="back()" >返回</button>
    </div>
  </div>
   <span class="txt2" style="color:red;font-weight:700;font-size:14px;">${message}</span>
</form>
                </div>
                
                </div>
</body>
</html>