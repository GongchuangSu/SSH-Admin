<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse navbar-fixed-top">
   <div class="container-fluid">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="<%=request.getContextPath()%>">后台管理系统</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
         <ul class="nav navbar-nav navbar-left">
            <li><a href="<%=request.getContextPath()%>">首页</a></li>
            <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" 
                  aria-haspopup="true" aria-expanded="false">
               	功能 <span class="caret"></span>
               </a>
               <ul class="dropdown-menu">
                  <li><a href="#">功能一</a></li>
                  <li><a href="#">功能二</a></li>
                  <li><a href="#">功能三</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">功能四</a></li>
               </ul>
            </li>
            <li><a href="#">帮助</a></li>
         </ul>
         <form class="navbar-form navbar-right">
            <div class="form-group">
               <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
         </form>
      </div>
   </div>
</nav>