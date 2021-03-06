<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ page import="com.model.Posts" %>
<%@ page import="com.model.PageData" %>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html> 
<head>

<script type="text/javascript">
function show(){
	if(window.location.href=="<%=basePath%>index.jsp"){
		window.location.href="showpostByPage.do";
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
<%=application.getRealPath("/") %>
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
    <h1><img src="resources/image/xiaoxiong.png" style="width:40px">小熊论坛</h1>
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
        <form action="searchPost.do" class="navbar-form navbar-right" role="search"  accept-charset="utf-8">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search" name="ptitle">
        </div>
        <button type="submit" class="btn btn-default">提交</button>
    </form>
    </div> 

                </div>
        
        
        <div class="container">
    <div class="row" style="height:400px">
        <div class="col-xs-9 col-sm-9" 
            style="background-color: #dedef8;
            box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
             <p><font color="red" size="5px">
                        热帖榜     *TOP10
                    </font></p>
        </div>
        
        <div class="col-xs-3 col-sm-3" 
        style="background-color: #dedef8;box-shadow: 
        inset 1px -1px 0px 1px #444, inset -1px 1px 0px #444;">
                   <p><font color="red" size="5px">
                        论坛公告
                    </font></p>
        </div>
 <div class="col-xs-9 col-sm-9" 
        style="background-color: #dedef8;box-shadow: 
        inset 1px 1px 1px #444, inset 1px 0px 1px #444;">
		
		<table class="table">
  <thead>
    <tr>
      <th>标题</th>
      <th>时间</th>
    </tr>
  </thead>
  
  <tbody>
  <c:forEach items="${requestScope.pagemsg.lists}" var="posts">
    <tr>
      <td><a href="showpostEvaByPage.do?pid=${posts.pid}">${posts.ptitle}</a></td>
      <td>
      	<fmt:formatDate value="${posts.ptime}" pattern="yyyy-MM-dd HH:mm:ss"/>
      </td>
    </tr>
    </c:forEach>
  </tbody>
  
</table>
		
		
		
		
    <span>第${requestScope.pagemsg.currPage }/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;
   <span>总记录数：${requestScope.pagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.pagemsg.pageSize}</span>&nbsp;&nbsp;
   <span>
       <c:if test="${requestScope.pagemsg.currPage != 1}">
           <a href="${pageContext.request.contextPath }/showpostByPage.do?currentPage=1">[首页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/showpostByPage.do?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
       </c:if>
       
       <c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">
           <a href="${pageContext.request.contextPath }/showpostByPage.do?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/showpostByPage.do?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
       </c:if>
   </span>
  
 </div>
 <div class="col-xs-3 col-sm-3" 
        style="background-color: #dedef8;box-shadow: 
        inset 1px 1px 0px 1px #444, inset -1px 1px 1px #444;height:500px">
          <p><a href="#">这个时代，你需要怎样的论坛/社区呢 ？</a></p>
           <p><a href="#">《电脑爱好者》网站升级 安装Discuz!替换VBB</a></p>
            <p><a href="#">新版 Discuz!应用中心，点击查看</a></p>
             <p><a href="#">手握手积分兑奖，多重好礼等你拿</a></p>
 </div>
        </div>
       </div>
       </div>
       </div>
       <span class="txt2" style="color:red;font-weight:700;font-size:14px;">${message}</span>
        </div>
        
</div>
<footer><p align="center"><a href="">关于论坛| </a><a href="#">隐私政策| </a><a href="<%=basePath%>admin_login.jsp">后台管理</a></p></footer>
</body>
</html>