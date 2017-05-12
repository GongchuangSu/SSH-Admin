<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%String basePath = request.getContextPath(); %>
<nav class="navbar navbar-inverse navbar-fixed-top">
   <div class="container-fluid">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="<%=basePath%>">后台管理系统</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
         <ul class="nav navbar-nav navbar-left">
            <li><a href="<%=basePath%>">首页</a></li>
            <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" 
                  aria-haspopup="true" aria-expanded="false">
               	功能列表
               </a>
               <ul class="dropdown-menu">
                  <li><a href="<%=basePath%>/tables/basic-table">基本表格</a></li>
                  <li><a href="<%=basePath%>/tables/editable-table">可编辑表格</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="<%=basePath%>/charts/line-chart">折线图</a></li>
                  <li><a href="<%=basePath%>/charts/bar-chart">柱状图</a></li>
                  <li><a href="<%=basePath%>/charts/pie-chart">饼状图</a></li>
                  <li><a href="<%=basePath%>/charts/others">其它</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="<%=basePath%>/treeview">树形菜单</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="<%=basePath%>/datetimepicker">日期时间选择器</a></li>
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
<!-- Bootstrap -->
<script src="/ssh/static/Bootstrap/js/jquery.min.js"></script>
<script src="/ssh/static/Bootstrap/js/bootstrap.min.js"></script>
<script>
   /* 设置下拉列表淡入淡出效果 */
   $("ul.nav li.dropdown").hover(function(){
	   $(this).find(".dropdown-menu").stop(true,true).delay(100).fadeIn(500);
   },function(){
	   $(this).find(".dropdown-menu").stop(true,true).delay(100).fadeOut(500); 
   });
</script>