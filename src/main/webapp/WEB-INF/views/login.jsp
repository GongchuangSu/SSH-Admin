<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/login.css"  type="text/css"/>
	<title>登陆</title>
</head>
<body>
	<form action="login" method="post">
	<div class="logo"></div>
    <div class="login-block">
	    <h1>登陆</h1>
	    <input type="text" value="" placeholder="用户名" name="username" id="username" />
	    <input type="password" value="" placeholder="密    码" name="password" id="password" />
	    <div class="login_remember">
		    <input type="checkbox" name="remember-me" value="remember" id="remember_me"/>
		    <label for="remember_me">记住登录状态</label>
		    <a href=".">忘记密码？</a>
	    </div>
	    <button>提    交</button>
	    <hr>
	    <div class="login_createAccount">
	    	<a href="./register">还没有账户？创建一个新账户！</a>
	    </div>
	</div>
	<!-- 登陆失败显示错误信息 -->
    <div align="center">
    	<c:if test="${not empty param.error}">
    		<font color="#ff7b81">
    		登录失败，请尝试重新登陆！
    		</font>
    	</c:if>
    </div>
	</form>
</body>
</html>