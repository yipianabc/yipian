<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html> 
<head>
<script type="text/javascript">
function login(){
		window.location.href="admin_login.do";
}
function back(){
	window.location.href="index.jsp";
}

</script>

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
    <div class="row" style="height:400px">
        <div class="col-md-12" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <div class="row">
                <div class="col-md-24" style="background-color: #B18904; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
                   
<div class="container-fluid"> 
        <div class="navbar-header"> 
            <a class="navbar-brand" href="index.jsp">首页</a>
            <a class="navbar-brand" href="nologin.jsp">我要发帖</a> 
            <a class="navbar-brand" href="help.jsp">发布帮助信息</a>
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
<form class="form-horizontal"  method="post" action="<%=basePath%>admin_login.do" style="background-color: #dedef8; height:450px" role="form">
<h2 class="col-sm-offset-3">管理员登录</h2>
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">用户名</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="aname" id="firstname" placeholder="请输入名字">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">密码</label>
    <div class="col-sm-5">
      <input type="password" class="form-control" name="apassword" id="lastname" placeholder="请输入密码">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox">记住密码
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default" onclick="login()">登录</button>
      <button type="button" class="btn btn-default col-sm-offset-2" onclick="back()">返回</button>
    </div>
  </div>
   <span class="txt2 col-sm-offset-2" style="color:red;font-weight:700;font-size:14px;">${message}</span>
</form>
</div>
</div>
</body>
</html>