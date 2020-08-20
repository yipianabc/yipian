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
	<!--  
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" >    
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css">
	<script type="text/javascript" src="resources/js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
	-->
</head>
<body>
<div class="container" style="background-color: #dedef8;height:500px">
       
  <div class="container" style="background-color: #dedef8">
<form class="form-horizontal" method="post" style="height:600px" method="post" action="updateuser.do" role="form" >
<h2 class="col-sm-offset-3">个人信息</h2>
  <div class="form-group">
  <label for="firstname" class="col-sm-3 col-xs-3 control-label">用户编号</label>
    <div class="col-sm-3 col-xs-3">
      <input type="text" class="form-control" id="firstname" name="userid" value="${user.userid}" readonly>
    </div>
</div>   
 <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">用户名</label>
    <div class="col-sm-3 col-xs-3">
      <input type="text" class="form-control" id="firstname" name="username" value="${user.username}" readonly>
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-3 col-xs-3 control-label">密码</label>
    <div class="col-sm-3 col-xs-3">
      <input type="text" name="password" class="form-control" id="lastname" value="${user.password}">
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">真实姓名</label>
    <div class="col-sm-3 col-xs-3">
      <input type="text" name="realname" class="form-control" id="firstname" value="${user.realname}">
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">性别</label>
  <label class="radio-inline">
        <input type="radio" name="sex" id="optionsRadios3" value="男"> 男
    </label>
    <label class="radio-inline">
        <input type="radio" name="sex" id="optionsRadios4"  value="女"> 女
    </label>
    <label class="radio-inline">
        <input type="text" name="sex" value="${user.sex}" disabled size="4"/>
        </label>
    </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">电话</label>
    <div class="col-sm-3 col-xs-3">
      <input type="text" name="telephone" class="form-control" id="firstname" value="${user.telephone}">
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">邮箱</label>
    <div class="col-sm-3 col-xs-3">
      <input type="text" name="email" class="form-control" id="firstname" value="${user.email}">
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="col-sm-3 col-xs-3 control-label">地址</label>
    <div class="col-sm-3 col-xs-3">
      <input type="text" name="address" class="form-control" id="firstname" value="${user.address}">
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">修改</button>
    </div>
  </div>
   <p class="col-sm-offset-2"><span class="txt2" style="color:red;font-weight:700;font-size:14px;">${message}</span></p>
</form>
                </div>
                
</body>
</html>