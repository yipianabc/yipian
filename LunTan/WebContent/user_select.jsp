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
            <table class="table">
             <caption>用户信息如下：</caption>
  <thead>
    <tr>
      <th>编号</th>
      <th>用户名</th>
       <th>真实姓名</th>
       <th>性别</th>
      <th>电话</th>
       <th>邮箱</th>
      <th>地址</th>
      <th>操作</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="user" items="${user}">
    <tr>
      <td><a href="<%=basePath%>">${user.userid}</a></td>
      <td><a href="#">${user.username}</a></td>
      <td><a href="#">${user.realname}</a></td>
      <td><a href="#">${user.sex}</a></td>
      <td><a href="#">${user.telephone}</a></td>
      <td><a href="#">${user.email}</a></td>
      <td><a href="#">${user.address}</a></td>
    <td><a onclick="return confirm('确认删除该用户?')" href="<%=basePath%>deleteuser.do/${user.userid}" >删除</a> </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
  <span class="txt2" style="color:red;font-weight:700;font-size:14px;">${message}</span>
 </div>
       
       
</body>
</html>