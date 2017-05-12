<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
   <head>
      <meta charset="utf-8">
      <title>基本表格</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="google" value="notranslate">
      <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/img/avatar.png">
      <!-- Bootstrap -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/Bootstrap/css/bootstrap.min.css" />
      <!-- DataTables -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/DataTables/css/dataTables.bootstrap.min.css"/>
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
	            <div class="panel panel-primary">
				  <div class="panel-heading">
				    <h3 class="panel-title">服务器端数据（直接请求）</h3>
				  </div>
				  <div class="panel-body">
				    <table id="example_1" class="table table-striped table-bordered" cellspacing="0" width="100%">
	                  <thead>
	                     <tr>
	                        <th>用户名</th>
	                        <th>性别</th>
	                        <th>手机号</th>
	                        <th>地址</th>
	                     </tr>
	                  </thead>
	                  <tbody>
	                     <c:forEach items="${userList}" var="user">
	                        <tr>
	                           <td>${user.username}</td>
	                           <td>${user.sex}</td>
	                           <td>${user.phonenumber}</td>
	                           <td>${user.emailaddress}</td>
	                        </tr>
	                     </c:forEach>
	                  </tbody>
	                </table>
				  </div>
				</div>
	            <div class="panel panel-primary">
				  <div class="panel-heading">
				    <h3 class="panel-title">服务器端数据（使用Ajax异步传输）</h3>
				  </div>
				  <div class="panel-body">
				    <table id="example_2" class="table table-striped table-bordered" cellspacing="0" width="100%">
	                  <thead>
	                     <tr>
	                        <th>用户名</th>
	                        <th>性别</th>
	                        <th>手机号</th>
	                        <th>地址</th>
	                     </tr>
	                  </thead>
	                </table>
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
      <!-- DataTables -->
      <script src="<%=request.getContextPath()%>/static/DataTables/js/jquery.dataTables.min.js"></script>
      <script src="<%=request.getContextPath()%>/static/DataTables/js/dataTables.bootstrap.min.js"></script>
      <script>
         /* For sidebar offcanvas */
         $(document).ready(function () {
           $('[data-toggle="offcanvas"]').click(function () {
             $('.row-offcanvas').toggleClass('active')
           });
           $('#basic-table').toggleClass('active')
         });
         
         /* For DataTables */
         $(document).ready(function() {
           $('#example_1').DataTable({
              "scrollX":true,  /* 启用水平滚动 */
              "language":{     /* 中文版 */
            	  "url":"<%=request.getContextPath()%>/static/DataTables/language/Chinese.json"
              }
           });
           
           $('#example_2').DataTable({
               "scrollX":true,  /* 启用水平滚动 */
               "language":{     /* 中文版 */
             	  "url":"<%=request.getContextPath()%>/static/DataTables/language/Chinese.json"
               },
               "ajax":{
            	   url:'basic-table?keyword=example_2'
               },
               "columns":[
                   {"data": "username"},
                   {"data": "sex"},
                   {"data": "phonenumber"},
                   {"data": "emailaddress"}
               ]
            });
         });
      </script>
   </body>
</html>