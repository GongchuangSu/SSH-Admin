<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%String basePath = request.getContextPath(); %>
<div class="col-xs-6 col-sm-3 col-sm-pull-9 sidebar-offcanvas" id="sidebar">
   <div class="panel panel-primary">
      <div class="panel-heading">
         <h3 class="panel-title">功能列表</h3>                                         
      </div>
      <div class="list-group">
         <a href="#tables" class="list-group-item" data-toggle="collapse">
            <i class="icon-table icon-large"><span>&nbsp;表格</span></i>
         </a>
         <div class="collapse pos-absolute" id="tables">
            <a href="<%=basePath%>/tables/basic-table" id="basic-table" data-toggle="collapse" data-target="#tables" class="list-group-item sub-item">
               <span>&nbsp;&nbsp;<i class="icon-table"><span>&nbsp;基本表格</span></i></span>
            </a>
            <a href="<%=basePath%>/tables/editable-table" id="editable-table"  data-toggle="collapse" data-target="#tables" class="list-group-item sub-item">
               <span>&nbsp;&nbsp;<i class="icon-table"><span>&nbsp;可编辑表格</span></i></span>
            </a>
            <a href="#" data-toggle="collapse" data-target="#tables" class="list-group-item sub-item">
               <span>&nbsp;&nbsp;<i class="icon-table"><span>&nbsp;多功能表格</span></i></span>
            </a>
         </div>
      <a href="#" class="list-group-item">图表统计</a>
      <a href="#" class="list-group-item">树形菜单</a>
      <a href="#" class="list-group-item">日期时间选择器</a>
   </div>
   </div>
</div>
<!--/.sidebar-offcanvas-->