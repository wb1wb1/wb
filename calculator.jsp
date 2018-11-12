
<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ page  errorPage="calculator.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>简单的计算机</title>
  </head>
  
  <body>
  	<%--创建Calculator对象--%>
  	<jsp:useBean id="cal" class="cn.zq.domain.Calculator" />
  	<%--设置值    通配符*表示设置所有属性--%>
  	<jsp:setProperty property="*" name="cal"/>
  	
  	
  	<%--
  		进行计算
  	 --%>
  	 <c:if test="${empty pageContext.exception}">
  	 	<%
  			cal.calculate();
  		%>
  	 </c:if>
  	
  	
  	<hr/>
  	<p>计算结果：${cal.firstNum } ${cal.operator } ${cal.secondNum } = ${cal.result }</p>
  	<hr/>
  	
  	<%--
  		构建url
  	 --%>
  	<c:url var="formUrl" value="/calculator.jsp"/>
  	<form action="${formUrl }" method="post">
	  	<table border="1" cellpadding="2">
	  		<tr>
	  			<td colspan="2" align="center">我的计算器</td>
	  		</tr>
	  		<tr>
	  			<td>第一个参数:</td>
	  			<td><input type="text" name="firstNum"/></td>
	  		</tr>
	  		<tr>
	  			<td>运算符：</td>
	  			<td>
	  				<select name="operator">
	  					<option value="+">+</option>
	  					<option value="-">-</option>
	  					<option value="*">*</option>
	  					<option value="/">/</option>
	  				</select>
	  			</td>
	  		</tr>
	  		<tr>
	  			<td>第二个参数：</td>
	  			<td>
	  				<input type="text" name="secondNum">
	  			</td>
	  		</tr>
	  		<tr>
	  			<td colspan="2">
	  				<input type="submit" value="计算" />
	  			</td>
	  		</tr>
	  	</table>
  	</form>	
  </body>
</html>

--------------------- 
作者：RiccioZhang 
来源：CSDN 
原文：https://blog.csdn.net/ricciozhang/article/details/43233819 
版权声明：本文为博主原创文章，转载请附上博文链接！
