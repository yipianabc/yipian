<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.model.Evaluate" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html> 
<head>
<script type="text/javascript">
function login(){
		window.location.href="index2.jsp";
}
function back(){
	window.history.back();
}

</script>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<base href="<%=basePath%>">
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" >    
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css">
	<script type="text/javascript" src="resources/js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<%
  Object userid=null;
  
  if(session.getAttribute("userid")!=null){
  	userid=session.getAttribute("userid");
  	
  }
  %>
<form class="form-horizontal"  style="background-color: #dedef8; height:400px" role="form">
<div align="center">
<%
List<Evaluate> e=null;
%>
	<c:if test="${empty evaluate.lists}">
		没有任何信息！
	</c:if>
	<c:if test="${!empty requestScope.evaluate.lists}">

<table class="table">
  <thead>
    <tr>
<th>帖子编号</th>
      <th>帖子标题</th>
      <th>回复：</th>
      <th>回复时间：</th>
       <th>操作</th>
    </tr>
  </thead>
  <tbody>
<c:forEach items="${requestScope.evaluate.lists}" var="eva">
    <tr>
      <td>${eva.pid}</td>
    	  	<td>${eva.etitle}</td>
    	  	<td>${eva.econtent}</td>
    	  	<td>${eva.etime}</td>
    	  	<td><a href="deleteEva.do?eid=${eva.eid}">删除</a></td>
    </tr>
  </c:forEach>
  </tbody>
</table>



</c:if>

    <span>第${requestScope.evaluate.currPage }/ ${requestScope.evaluate.totalPage}页</span>&nbsp;&nbsp;
   <span>总记录数：${requestScope.evaluate.totalCount }&nbsp;&nbsp;每页显示:${requestScope.evaluate.pageSize}</span>&nbsp;&nbsp;
   <span>
       <c:if test="${requestScope.evaluate.currPage != 1}">
           <a href="${pageContext.request.contextPath }/searchEvaByUidByPage.do?currentPage=1&userid=<%=userid %>">[首页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/searchEvaByUidByPage.do?currentPage=${requestScope.evaluate.currPage-1}&userid=<%=userid %>">[上一页]</a>&nbsp;&nbsp;
       </c:if>
       
       <c:if test="${requestScope.evaluate.currPage != requestScope.evaluate.totalPage}">
           <a href="${pageContext.request.contextPath }/searchEvaByUidByPage.do?currentPage=${requestScope.evaluate.currPage+1}&userid=<%=userid %>">[下一页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/searchEvaByUidByPage.do?currentPage=${requestScope.evaluate.totalPage}&userid=<%=userid %>">[尾页]</a>&nbsp;&nbsp;
       </c:if>
   </span>
</form>
</div>
</div>
</body>
</html>