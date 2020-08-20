<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.model.Posts" %>
<%@ page import="com.model.PageData" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


 
</head>
<body>
<div align="center">
<%
List<Posts> p=null;
%>
<%
  Object userid=null;
  
  if(session.getAttribute("userid")!=null){
  	userid=session.getAttribute("userid");
  	
  }
  %>

	<c:if test="${empty pagemsg.lists}">
		没有任何信息！
	</c:if>
	
		
		<table class="table">
  <thead>
    <tr>
      <th>标题</th>
      <th>时间</th>
      <th>操作</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${requestScope.pagemsg.lists}" var="posts">
    <tr>
    	  			<td><a href="showpostEvaByPage.do?pid=${posts.pid}">${posts.ptitle}</a></td>
    	  			<td>${posts.ptime}</td>
    	  			<td><a href="deletepost.do?pid=${posts.pid}">删除</a></td>
    	 		</tr>
    	 		</c:forEach>
  </tbody>
</table>
		
		
    <span>第${requestScope.pagemsg.currPage }/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;
   <span>总记录数：${requestScope.pagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.pagemsg.pageSize}</span>&nbsp;&nbsp;
   <span>
       <c:if test="${requestScope.pagemsg.currPage != 1}">
           <a href="${pageContext.request.contextPath }/searchPostByUidByPage.do?currentPage=1&userid=<%=userid %>">[首页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/searchPostByUidByPage.do?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
       </c:if>
       
       <c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">
           <a href="${pageContext.request.contextPath }/searchPostByUidByPage.do?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/searchPostByUidByPage.do?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
       </c:if>
   </span>
  
</form>



</div>
</body>
</html>