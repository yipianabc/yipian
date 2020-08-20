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
<body style="background-color: #dedef8">
<%
List<Evaluate> e=null;

Object userid=null;
if(session.getAttribute("userid")!=null){
  	userid=session.getAttribute("userid");
}
%>


    	<c:if test="${empty evaluate.lists}">
		没有任何信息！
	</c:if>
	<c:if test="${!empty requestScope.evaluate.lists}">
	
	<table class="table">
  <thead>
    <tr>
      <th>回复标题</th>
      <th>回复内容</th>
      <th>回复时间</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${requestScope.evaluate.lists}" var="eva">
    <tr>
      <td>${eva.etitle}</td>
      <td>${eva.econtent}</td>
      <td>${eva.etime}</td>
    </tr>
    <tr>
			<%
			e=(List)request.getAttribute("eva");
			%>
			
		  </tr>
		  </c:forEach>
  </tbody>
</table>
    </c:if>
    	  <br>
    	  <%
    	  String etitle=e.get(0).getEtitle();
    	  Integer pid=e.get(0).getPid();
    	  System.out.println("aaaaaaa"+pid);
    	  System.out.println("sfssssssssss"+userid);
    	  %>
    	  <form action="addEvaluate.do" >
    	  		<input type="hidden" value="<%=etitle %>" name="etitle" />
    			<input type="hidden" value="<%=userid %>" name="userid" />
    			<input type="hidden" value="<%=pid %>" name="pid" />
    			内容：<TextArea name="econtent" rows="10" cols="100" ></TextArea>
    			<br>
    			<%
    			if(userid!=null){
    				%>
    				<input type="submit" value="回帖" />
    			<%}
    		
    			
    			%>
    			<input type="button" value="返回" onclick="window.history.back()"/>
    		</form> 
    		
    		
    <span>第${requestScope.evaluate.currPage }/ ${requestScope.evaluate.totalPage}页</span>&nbsp;&nbsp;
   <span>总记录数：${requestScope.evaluate.totalCount }&nbsp;&nbsp;每页显示:${requestScope.evaluate.pageSize}</span>&nbsp;&nbsp;
   <span>
       <c:if test="${requestScope.evaluate.currPage != 1}">
           <a href="${pageContext.request.contextPath }/showpostEvaByPage.do?currentPage=1&pid=<%=pid %>">[首页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/showpostEvaByPage.do?currentPage=${requestScope.evaluate.currPage-1}&pid=<%=pid %>">[上一页]</a>&nbsp;&nbsp;
       </c:if>
       
       <c:if test="${requestScope.evaluate.currPage != requestScope.evaluate.totalPage}">
           <a href="${pageContext.request.contextPath }/showpostEvaByPage.do?currentPage=${requestScope.evaluate.currPage+1}&pid=<%=pid %>">[下一页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/showpostEvaByPage.do?currentPage=${requestScope.evaluate.totalPage}&pid=<%=pid %>">[尾页]</a>&nbsp;&nbsp;
       </c:if>
   </span>
</body>
</html>