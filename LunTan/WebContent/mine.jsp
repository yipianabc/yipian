<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
  Object userid=null;
  Object username=null;
  if(session.getAttribute("userid")!=null){
  	userid=session.getAttribute("userid");
  	username=session.getAttribute("username");
  }
  %>
<html> 
<head>

<script>

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
            <a class="navbar-brand" href="index.jsp">设为首页</a> 
            <a class="navbar-brand" href="#">收藏本站</a> 
        </div> 
        <ul class="nav navbar-nav navbar-right"> 
			<li><a href="login_success.jsp"><span class="glyphicon glyphicon-user"></span> 你好,<%=username %></a></li> 
            <li><a href="index.jsp"><span class="glyphicon glyphicon-off"></span> 安全退出</a></li> 
        </ul> 
    </div> 
</nav>

<div class="container" >
    <h1><img src="https://f11.baidu.com/it/u=2029577316,72683288&fm=72" style="width:40px">小熊论坛</h1>
    <div class="row">
        <div class="col-md-12" style="background-color: #dedef8;">
            <div class="row">
                <div class="col-md-24" style="background-color: #B18904;">
                   
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

        <div class="container">
    <div class="row" style="height:400px">
        <div class="col-xs-4 col-sm-4" 
            style="background-color: #dedef8;
            ">
            
<ul class="nav nav-pills nav-stacked">
<!-- 这里的active属性就是使得所在的li的背景色变为蓝色-->
<li><a href="<%=basePath%>searchPostByUidByPage.do" target="right">我的帖子</a></li>
<li><a href="<%=basePath%>searchEvaByUidByPage.do" target="right">我的评论</a></li>
<li><a href="<%=basePath%>selectOneuser.do?username=${username}" target="right">我的信息</a></li>
<li><a href="login_success.jsp">返回首页</a></li>
           </ul> 

        </div>
        <iframe name="right" frameborder="no" class="col-xs-8 col-sm-8" style="background-color: #dedef8;height:400px"> 
        </iframe>
        </div>
       </div>
       </div>
       
        
    </div>
</div>
</body>
</html>