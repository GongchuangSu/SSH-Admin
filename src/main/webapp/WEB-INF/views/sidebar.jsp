<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%-- String basePath = request.getContextPath(); --%><!-- basePath在navigation中已定义 -->
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
            <a href="<%=request.getContextPath()%>/tables/basic-table" id="basic-table" data-toggle="collapse" data-target="#tables" class="list-group-item sub-item">
               <span>&nbsp;&nbsp;<i class="icon-table"><span>&nbsp;基本表格</span></i></span>
            </a>
            <a href="<%=request.getContextPath()%>/tables/editable-table" id="editable-table"  data-toggle="collapse" data-target="#tables" class="list-group-item sub-item">
               <span>&nbsp;&nbsp;<i class="icon-table"><span>&nbsp;可编辑表格</span></i></span>
            </a>
         </div>
         <a href="#charts" class="list-group-item" data-toggle="collapse">
            <i class="icon-bar-chart icon-large"><span>&nbsp;图表统计</span></i>
         </a>
         <div class="collapse pos-absolute" id="charts">
            <a href="<%=request.getContextPath()%>/charts/line-chart" id="line-chart" data-toggle="collapse" data-target="#charts" class="list-group-item sub-item">
               <span>&nbsp;&nbsp;<i class="icon-bar-chart"><span>&nbsp;折线图</span></i></span>
            </a>
            <a href="<%=request.getContextPath()%>/charts/bar-chart" id="bar-chart"  data-toggle="collapse" data-target="#charts" class="list-group-item sub-item">
               <span>&nbsp;&nbsp;<i class="icon-bar-chart"><span>&nbsp;柱状图</span></i></span>
            </a>
            <a href="<%=request.getContextPath()%>/charts/pie-chart" id="pie-chart" data-toggle="collapse" data-target="#charts" class="list-group-item sub-item">
               <span>&nbsp;&nbsp;<i class="icon-bar-chart"><span>&nbsp;饼状图</span></i></span>
            </a>
            <a href="<%=request.getContextPath()%>/charts/others" id="other-charts" data-toggle="collapse" data-target="#charts" class="list-group-item sub-item">
               <span>&nbsp;&nbsp;<i class="icon-bar-chart"><span>&nbsp;其它</span></i></span>
            </a>
         </div>
         <a href="<%=request.getContextPath()%>/treeview" id="treeview" class="list-group-item">
            <i class="icon-folder-open-alt icon-large"><span>&nbsp;树形菜单</span></i>
         </a>
         <a href="<%=request.getContextPath()%>/datetimepicker" id="datetimepicker" class="list-group-item">
         <i class="icon-calendar icon-large"><span>&nbsp;日期时间选择器</span></i></a>
      </div>
   </div>
</div>
<!--/.sidebar-offcanvas-->