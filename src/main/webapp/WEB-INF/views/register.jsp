<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/register.css"  type="text/css"/>
	<title>注册</title>
</head>
<body>
	<sf:form method="post" commandName="user">
		<div class="register-block">
			<h1>注册</h1>
			<sf:errors path="username"/>
			<div>
				<c:if test="${not empty param.userExists}">
		    		<font color="#ff7b81">
		    		该用户名已被注册！
		    		</font>
		    	</c:if>
			</div>
			<sf:input type="text" placeholder="姓名" path="username"/>
			<sf:errors path="password"/>
			<sf:input type="text" placeholder="密码" path="password"/>
			<sf:input type="email" placeholder="Email" path="emailaddress"/>
			<sf:errors path="phonenumber"/>
			<sf:input type="text" placeholder="手机号" path="phonenumber"/>
			<sf:input type="text" placeholder="性别" path="sex"/>
			<button>提    交</button>
			<hr>
			<div class="register_back">
	    		<a href="./login">返回登陆界面</a>
	    	</div>
		</div>
	</sf:form>
</body>
</html>