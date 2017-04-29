<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html >
   <head>
      <meta charset="utf-8">
      <title>主界面</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="google" value="notranslate">
      <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/img/avatar.png">
      <!-- Bootstrap -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/Bootstrap/css/bootstrap.min.css" />
      <!-- Custom styles for this template -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/font-awesome.min.css" />
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/dashboard.css">
   </head>
   <body >
      <%@include file="/WEB-INF/views/navigation.jsp"%>
      <!-- /.navbar -->
      <div class="container-fluid">
         <div class="row row-offcanvas row-offcanvas-right">
            <p class="pull-right visible-xs">
               <button type="button" class="btn btn-xs" data-toggle="offcanvas" title="切换侧边栏">
               	  <i class="icon-circle-arrow-right icon-2x"></i> 
               </button>
            </p>
            <div class="col-xs-12 col-sm-9 col-sm-push-3">
               <div class="jumbotron">
                  <h1>Hello, world!</h1>
                  <p>This is an example to show the potential of an offcanvas layout pattern in Bootstrap. Try some responsive-range viewport sizes to see it in action.</p>
               </div>
               <div class="row">
                  <div class="col-xs-6 col-lg-4">
                     <h2>Heading</h2>
                     <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                     <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                  </div>
                  <!--/.col-xs-6.col-lg-4-->
                  <div class="col-xs-6 col-lg-4">
                     <h2>Heading</h2>
                     <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                     <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                  </div>
                  <!--/.col-xs-6.col-lg-4-->
                  <div class="col-xs-6 col-lg-4">
                     <h2>Heading</h2>
                     <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                     <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                  </div>
                  <!--/.col-xs-6.col-lg-4-->
                  <div class="col-xs-6 col-lg-4">
                     <h2>Heading</h2>
                     <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                     <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                  </div>
                  <!--/.col-xs-6.col-lg-4-->
                  <div class="col-xs-6 col-lg-4">
                     <h2>Heading</h2>
                     <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                     <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                  </div>
                  <!--/.col-xs-6.col-lg-4-->
                  <div class="col-xs-6 col-lg-4">
                     <h2>Heading</h2>
                     <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                     <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                  </div>
                  <!--/.col-xs-6.col-lg-4-->
               </div>
               <!--/row-->
            </div>
            <!--/.col-xs-12.col-sm-9-->
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
                        <a href="tables/basic-table" data-toggle="collapse" data-target="#tables" class="list-group-item sub-item">
                           <span>&nbsp;&nbsp;<i class="icon-table"><span>&nbsp;基本表格</span></i></span>
                        </a>
                        <a href="tables/editable-table" data-toggle="collapse" data-target="#tables" class="list-group-item sub-item">
                           <span>&nbsp;&nbsp;<i class="icon-table"><span>&nbsp;可编辑表格</span></i></span>
                        </a>
                        <a href="tables" data-toggle="collapse" data-target="#tables" class="list-group-item sub-item">
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
         </div>
         <!--/row-->
         <hr>
         <%@include file="/WEB-INF/views/footer.jsp"%>
      </div>
      <!--scripts loaded here-->
      <script src="<%=request.getContextPath()%>/static/Bootstrap/js/jquery.min.js"></script>
      <script src="<%=request.getContextPath()%>/static/Bootstrap/js/bootstrap.min.js"></script>
      <script>
         $(document).ready(function () {
         $('[data-toggle="offcanvas"]').click(function () {
           $('.row-offcanvas').toggleClass('active')
         });
         });
      </script>
   </body>
</html>