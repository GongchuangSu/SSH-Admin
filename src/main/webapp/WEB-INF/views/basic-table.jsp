<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
               <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                  <thead>
                     <tr>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Office</th>
                        <th>Age</th>
                        <th>Start date</th>
                        <th>Salary</th>
                     </tr>
                  </thead>
                  <tfoot>
                     <tr>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Office</th>
                        <th>Age</th>
                        <th>Start date</th>
                        <th>Salary</th>
                     </tr>
                  </tfoot>
                  <tbody>
                     <tr>
                        <td>Tiger Nixon</td>
                        <td>System Architect</td>
                        <td>Edinburgh</td>
                        <td>61</td>
                        <td>2011/04/25</td>
                        <td>$320,800</td>
                     </tr>
                     <tr>
                        <td>Garrett Winters</td>
                        <td>Accountant</td>
                        <td>Tokyo</td>
                        <td>63</td>
                        <td>2011/07/25</td>
                        <td>$170,750</td>
                     </tr>
                     <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                     </tr>
                     <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                     </tr>
                     <tr>
                        <td>Airi Satou</td>
                        <td>Accountant</td>
                        <td>Tokyo</td>
                        <td>33</td>
                        <td>2008/11/28</td>
                        <td>$162,700</td>
                     </tr>
                     <tr>
                        <td>Brielle Williamson</td>
                        <td>Integration Specialist</td>
                        <td>New York</td>
                        <td>61</td>
                        <td>2012/12/02</td>
                        <td>$372,000</td>
                     </tr>
                     <tr>
                        <td>Herrod Chandler</td>
                        <td>Sales Assistant</td>
                        <td>San Francisco</td>
                        <td>59</td>
                        <td>2012/08/06</td>
                        <td>$137,500</td>
                     </tr>
                     <tr>
                        <td>Rhona Davidson</td>
                        <td>Integration Specialist</td>
                        <td>Tokyo</td>
                        <td>55</td>
                        <td>2010/10/14</td>
                        <td>$327,900</td>
                     </tr>
                     <tr>
                        <td>Colleen Hurst</td>
                        <td>Javascript Developer</td>
                        <td>San Francisco</td>
                        <td>39</td>
                        <td>2009/09/15</td>
                        <td>$205,500</td>
                     </tr>
                     <tr>
                        <td>Sonya Frost</td>
                        <td>Software Engineer</td>
                        <td>Edinburgh</td>
                        <td>23</td>
                        <td>2008/12/13</td>
                        <td>$103,600</td>
                     </tr>
                     <tr>
                        <td>Jena Gaines</td>
                        <td>Office Manager</td>
                        <td>London</td>
                        <td>30</td>
                        <td>2008/12/19</td>
                        <td>$90,560</td>
                     </tr>
                     <tr>
                        <td>Quinn Flynn</td>
                        <td>Support Lead</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2013/03/03</td>
                        <td>$342,000</td>
                     </tr>
                     <tr>
                        <td>Charde Marshall</td>
                        <td>Regional Director</td>
                        <td>San Francisco</td>
                        <td>36</td>
                        <td>2008/10/16</td>
                        <td>$470,600</td>
                     </tr>
                     <tr>
                        <td>Haley Kennedy</td>
                        <td>Senior Marketing Designer</td>
                        <td>London</td>
                        <td>43</td>
                        <td>2012/12/18</td>
                        <td>$313,500</td>
                     </tr>
                     <tr>
                        <td>Tatyana Fitzpatrick</td>
                        <td>Regional Director</td>
                        <td>London</td>
                        <td>19</td>
                        <td>2010/03/17</td>
                        <td>$385,750</td>
                     </tr>
                     <tr>
                        <td>Michael Silva</td>
                        <td>Marketing Designer</td>
                        <td>London</td>
                        <td>66</td>
                        <td>2012/11/27</td>
                        <td>$198,500</td>
                     </tr>
                  </tbody>
               </table>
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
                        <a href="basic-table" data-toggle="collapse" data-target="#tables" class="list-group-item sub-item active">
                        <span>&nbsp;&nbsp;<i class="icon-table"><span>&nbsp;基本表格</span></i></span>
                        </a>
                        <a href="#" data-toggle="collapse" data-target="#tables" class="list-group-item sub-item">
                        <span>&nbsp;&nbsp;<i class="icon-table"><span>&nbsp;响应式表格</span></i></span>
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
         </div>
         <!--/row-->
         <hr>
         <%@include file="/WEB-INF/views/footer.jsp"%>
      </div>
      <!-- Bootstrap -->
      <script src="<%=request.getContextPath()%>/static/Bootstrap/js/jquery.min.js"></script>
      <script src="<%=request.getContextPath()%>/static/Bootstrap/js/bootstrap.min.js"></script>
      <!-- DataTables -->
      <script src="<%=request.getContextPath()%>/static/DataTables/js/jquery.dataTables.min.js"></script>
      <script src="<%=request.getContextPath()%>/static/DataTables/js/dataTables.bootstrap.min.js"></script>
      <script>
         /* For sidebar offcanvas */
         $(document).ready(function () {
         $('[data-toggle="offcanvas"]').click(function () {
           $('.row-offcanvas').toggleClass('active')
         });
         });
         
         /* For tables */
         $(document).ready(function() {
           $('#example').DataTable();
         });
      </script>
   </body>
</html>