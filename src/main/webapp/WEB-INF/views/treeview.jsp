<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
   <head>
      <meta charset="utf-8">
      <title>树形菜单</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="google" value="notranslate">
      <!-- Bootstrap -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/Bootstrap/css/bootstrap.min.css" />
      <!-- Custom styles for this template -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/font-awesome.min.css" />
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/dashboard.css">
      <style type="text/css">
        /* 自定义TreeView的行高 */
		.treeview li
		{
		  padding: 3px 10px;
		}
      </style>
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
	            <div class="panel panel-primary">
				  <div class="panel-heading">
				    <h3 class="panel-title">Bootstrap Tree View</h3>
				  </div>
				  <div class="panel-body">
				    <div class="treeview">
						<div class="row">
						   <div class="col-sm-4">
						      <h2>默认格式</h2>
						      <div id="treeview_1"></div>
						   </div>
						   <div class="col-sm-4">
						      <h2>蓝色主题</h2>
						      <div id="treeview_2"></div>
						   </div>
						   <div class="col-sm-4">
						      <h2>无边框</h2>
						      <div id="treeview_3"></div>
						   </div>
						</div>
						<div class="row">
						   <div class="col-sm-12">
						      <h2>Ajax Data</h2>
						      <div style="width: 250px;overflow: auto" class="nav-justified">
						         <div id="treeview_4" style="width: 100%;height: 400px"></div>
						      </div>						      			   
						   </div>
						</div>
				    </div>
				  </div>
				</div>
            </div>
            <!--/.col-xs-12.col-sm-9-->
            <%@include file="/WEB-INF/views/sidebar.jsp" %> <!-- sidebar offcanvas for function list -->
         </div>
         <!--/row-->
         <hr>
         <%@include file="/WEB-INF/views/footer.jsp"%>
      </div>
      <!-- Bootstrap -->
      <script src="<%=request.getContextPath()%>/static/Bootstrap/js/jquery.min.js"></script>
      <script src="<%=request.getContextPath()%>/static/Bootstrap/js/bootstrap.min.js"></script>
      <!-- Bootstrap Tree View -->
      <script src="<%=request.getContextPath()%>/static/TreeView/js/bootstrap-treeview.min.js"></script>
      <script>
         /* For sidebar offcanvas */
         $(document).ready(function () {
           $('[data-toggle="offcanvas"]').click(function () {
             $('.row-offcanvas').toggleClass('active')
           });
           $('#treeview').toggleClass('active')
         });
         /* For TreeView */
         function getTree() {
        	 var tree = [{
               "nodes": [
                  {
                     "nodes": [
                        {
                           "text": "机械1班"
                        },
                        {
                           "text": "机械2班"
                        },
                        {
                           "text": "机械3班"
                        }
                     ],
                     "text": "机械专业"
                  },
                  {
                     "nodes": [
                        {
                           "text": "测控1班"
                        },
                        {
                           "text": "测控2班"
                        }
                     ],
                     "text": "测控专业"
                  }
               ],
               "text": "机械科学与工程学院"
            }];
        	return tree;
         }
		
		 $('#treeview_1').treeview({
			 data: getTree()
		 });
		 $('#treeview_2').treeview({
			 data: getTree(),
			 levels: 1,
			 color: "#428bca",
	         expandIcon: 'glyphicon glyphicon-chevron-right',
	         collapseIcon: 'glyphicon glyphicon-chevron-down',
	         showBorder: true
		 }); 
		 $('#treeview_3').treeview({
			 data: getTree(),
			 levels: 99,
			 color: "#428bca",
	         expandIcon: 'glyphicon glyphicon-folder-close',
	         collapseIcon: 'glyphicon glyphicon-folder-open',
	         showBorder: false
		 }); 
         /* Load data from ajax */
         $.ajax({
           url: "treeview?action=getData",
           type: "GET",
           dataType: "json",
           success: function(data){
              $('#treeview_4').treeview({
           	   data: JSON.stringify(data),
	      		   levels: 99,
	    		   color: "#428bca",
	    	       expandIcon: 'glyphicon glyphicon-folder-close',
	    	       collapseIcon: 'glyphicon glyphicon-folder-open',
	    	       showBorder: false
              });
           },
           error: function(jqXHR, textStatus, errorThrown){
        	   alert('获取数据失败');
           }
         });
      </script>
   </body>
</html>