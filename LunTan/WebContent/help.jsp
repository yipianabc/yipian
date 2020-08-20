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

<script>
function show(){
	if(window.location.href=="<%=basePath%>index.jsp"){
	window.location.href="showposts.do";
	}
	
}

    	 window.onload = function(){ show();} 
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
	<!--  
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" >    
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css">
	<script type="text/javascript" src="resources/js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
	-->
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
    <div class="row">
        <div class="col-md-12" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <div class="row">
                <div class="col-md-24" style="background-color: #B18904; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
                   
<div class="container-fluid"> 
        <div class="navbar-header"> 
            <a class="navbar-brand" href="index.jsp">首页</a>
            <a class="navbar-brand" href="nologin.jsp">我要发帖</a> 
            <a class="navbar-brand" href="help.jsp">帮助</a>
        </div> 
        <form class="navbar-form navbar-right" role="search">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">提交</button>
    </form>
    </div> 

                </div>
        
        
   <div class="container">
        <div class="row" style="height:400px">
        <div class="col-xs-9 col-sm-9" 
            style="background-color: #dedef8;height:500px;
            box-shadow: inset 1px -1px 0px 0px #444, inset -1px 1px 0px 0px #444;" >
            <div align="center">
            <p><font size="5px"> 以下是帮助信息：</font> </p>                                 
			<p><a href="#">注册常见问题</a></p>
			<p><a href="#">登录常见问题</a></p>
			<p><a href="#">邀请码常见问题</a></p>
			<p><a href="#">发帖常见问题</a></p>
			<p><a href="#">回复常见问题</a></p>
			<p><a href="#">控制面板常见问题</a></p>
			<p><a href="#">其他常见问题</a></p>
        </div>
        </div>
        <div class="col-xs-3 col-sm-3" 
        style="background-color: #dedef8;box-shadow: 
        inset 1px -1px 0px 1px #444, inset -1px 1px 0px #444;">
                   <p><font color="red" size="5px">
                        论坛公告
                    </font></p>
        </div>
 <div class="col-xs-3 col-sm-3" 
        style="background-color: #dedef8;box-shadow: 
        inset 1px 1px 0px 1px #444, inset -1px 1px 1px #444;height:455px">
          <p><a href="#">这个时代，你需要怎样的论坛/社区呢 ？</a></p>
           <p><a href="#">《电脑爱好者》网站升级 安装Discuz!替换VBB</a></p>
            <p><a href="#">新版 Discuz!应用中心，点击查看</a></p>
             <p><a href="#">手握手积分兑奖，多重好礼等你拿</a></p>
 </div>
        </div>
       </div>
       </div>
       </div>
        </div>
        
</div>
<footer><p align="center"><a href="">关于论坛| </a><a href="#">隐私政策| </a><a href="<%=basePath%>admin_login.jsp">后台管理</a></p></footer>
</body>
</html>