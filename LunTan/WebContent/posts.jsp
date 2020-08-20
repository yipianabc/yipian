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
	
	<script type="text/javascript">
function post(){
		window.location.href="addPost.do";
}
function back(){
	window.history.back();
}

</script>

<script type="text/javascript" src="ckeditor/ckeditor.js"></script>


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
<%
  Object userid=null;
Object username=null;
username=session.getAttribute("username");
  if(session.getAttribute("userid")!=null){
  	userid=session.getAttribute("userid");
  	
  }
  %>
<nav class="navbar navbar-default" role="navigation"> 
    <div class="container-fluid"> 
        <div class="navbar-header"> 
            <a class="navbar-brand" href="#">设为首页</a> 
            <a class="navbar-brand" href="#">收藏本站</a> 
        </div> 
        <ul class="nav navbar-nav navbar-right"> 
            <li><a href="login_success.jsp"><span class="glyphicon glyphicon-user"></span> 你好<%=username %></a></li> 
            <li><a href="index.jsp"><span class="glyphicon glyphicon-off"></span> 安全退出</a></li> 
            <li><a href="mine.jsp"><span class="glyphicon glyphicon-certificate"></span> 个人中心</a></li> 
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
            <a class="navbar-brand" href="login_success.jsp">首页</a>
            <a class="navbar-brand" href="posts.jsp">我要发帖</a> 
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
                
               
        <form role="form" style="height:400px" action="<%=basePath%>addPost.do" accept-charset="utf-8">
 
 
 
  <div class="form-group">
  <label for="name" class="col-sm-2 control-label">标题</label>
  <input type="text" name="ptitle">
  <input type="hidden" value="<%=userid %>" name="userid">
  </div>
    <div class="form-group">
    <label for="name" class="col-sm-2 control-label">内容</label>
    <textarea class="ckeditor" cols="80" name="pcontent" rows="12"></textarea>
     </div>
    <div class="col-sm-offset-4 col-sm-10">
      <button type="submit" class="btn btn-default">发帖</button>
      <button type="button" class="btn btn-default col-sm-offset-2" onclick="back()">返回</button>
  </div>
  <span class="txt2" style="color:red;font-weight:700;font-size:14px;">${message}</span>
  </form>
 
		 
</div>
</div>
</div>
</div>

<footer><p align="center"><a href="">关于论坛| </a><a href="#">隐私政策| </a><a href="admin_login">后台管理</a></p></footer>
</body>
</html>
