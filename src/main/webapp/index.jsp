<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
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
	  <style type="text/css">
		body {
		    position: relative; 
		}
		section{
		   padding-top: 30px;
		}
		/* Custom Styles */
		ul.nav-tabs{
		    width: 140px;
		    margin-top: 20px;
		    border-radius: 4px;
		    border: 1px solid #ddd;
		    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
		}
		ul.nav-tabs li{
		    margin: 0;
		    border-top: 1px solid #ddd;
		}
		ul.nav-tabs li:first-child{
		    border-top: none;
		}
		ul.nav-tabs li a{
		    margin: 0;
		    padding: 8px 16px;
		    border-radius: 0;
		}
		ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover{
		    color: #fff;
		    background: #0088cc;
		    border: 1px solid #0088cc;
		}
		ul.nav-tabs li:first-child a{
		    border-radius: 4px 4px 0 0;
		}
		ul.nav-tabs li:last-child a{
		    border-radius: 0 0 4px 4px;
		}
		ul.nav-tabs.affix{
		    top: 80px;   /* Set the top position of pinned element */
		    width: 200px;
		}
	  </style>
   </head>
   <body>
      <%@include file="/WEB-INF/views/navigation.jsp"%>
      <!-- /.navbar -->
      <a href="https://github.com/GongchuangSu/SSH-Admin"><img style="position: absolute; top: 0; right: 0; border: 0; z-index: 2000" src="https://s3.amazonaws.com/github/ribbons/forkme_right_red_aa0000.png" alt="Fork me on GitHub"></a>
      <div class="container-fluid" style="background-color:#337ab7;color:#fff;height:220px;margin-top: -10px">
         <div style="padding: 45px">
            <h1>SSH-Admin</h1>
            <h4>A simple and practical Admin System based on SpringMVC、Spring、Hibernate and Bootstrap.</h4>
         </div>
	  </div>
	  <br>
      <div class="container">
         <div class="row">
             <nav class="col-md-3 hidden-sm hidden-xs" id="navbar-index">
		        <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="205" id="myNav">
		          <li><a href="#project">项目 <i class="icon-chevron-right"></i></a></li>
		          <li><a href="#features">特征 <i class="icon-chevron-right"></i></a></li>
		          <li><a href="#requirement">要求 <i class="icon-chevron-right"></i></a></li>
		          <li><a href="#references">参考 <i class="icon-chevron-right"></i></a></li>
		          <li><a href="#license">协议 <i class="icon-chevron-right"></i></a></li>
		        </ul>
		      </nav>
		      <div class="col-md-9" style="font-size: 16px">
		         <section id="project">
		            <div class="page-header">
		               <h2>项目</h2>
		            </div>
		            <p>
		            A simple and practical Admin System based on SpringMVC、Spring、Hibernate and Bootstrap.
		            </p>
		         </section>
		         <section id="features">
		            <div class="page-header">
		               <h2>特征</h2>
		            </div>
		            <div>
		               <ul>
		                  <li>Responsive sidebar navigation(left sidebar collapse to right-side push)(From <a href="http://blog.codeply.com/2016/05/18/bootstrap-sidebar-responsive-examples/">codeply</a>)</li>
		                  <li>Bootstrap collapsing submenu in dropdown(From <a href="http://www.bootply.com/1u6VW4bsrR">bootply</a>)</li>
		                  <li>Integrate CRUD using Java, Ajax, DataTables, jQuery and MySQL(From <a href="http://www.phpcodify.com/codeigniter-crud-using-ajax-bootstrap-models-and-mysql/">phpcodify</a>)</li>
		                  <li>Asynchronous Loading of chart data(From <a href="http://echarts.baidu.com/tutorial.html#%E5%BC%82%E6%AD%A5%E6%95%B0%E6%8D%AE%E5%8A%A0%E8%BD%BD%E5%92%8C%E6%9B%B4%E6%96%B0">ECharts3</a>)</li>
		                  <li>Bootstrap Tree view implemented by Ajax and JDBC based on bootstrap-treeview(From <a href="https://github.com/jonmiles/bootstrap-treeview">bootstrap-treeview</a>)</li>
		                  <li>Integrate datepicker using bootstrap-datepicker(From <a href="https://github.com/uxsolutions/bootstrap-datepicker">bootstrap-datepicker</a>)</li>
		                  <li>Highlight code in web pages by loading the Prettify script(From <a href="https://github.com/google/code-prettify">code-prettify</a>)</li>
		               </ul>
		            </div>
		         </section>
		         <section id="requirement">
		            <div class="page-header">
		               <h2>要求</h2>
		            </div>
		            <div>
		               <ul>
		                  <li>Eclipse Version: Mars.2 Release (4.5.2)</li>
		                  <li>Apache Tomcat Version: v8.0</li>
		                  <li>JRE Version: jdk1.8.0_111</li>
		                  <li>Spring Version: 4.2.5.RELEASE</li>
		                  <li>Hibernate Version: 4.3.11.Final</li>
		                  <li>Mysql Version: 5.1.39</li>
		               </ul>
		            </div>
		         </section>
		         <section id="references">
		            <div class="page-header">
		               <h2>参考</h2>
		            </div>
		            <div>
		               <ol>
		                  <li><a href="http://v3.bootcss.com/">v3.bootcss</a></li>
		                  <li><a href="http://blog.codeply.com/2016/05/18/bootstrap-sidebar-responsive-examples/">Bootstrap Sidebar Responsive Examples</a></li>
		                  <li><a href="http://www.bootcss.com/p/font-awesome/">Font Awesome</a>(The iconic font and CSS toolkit)</li>
		                  <li><a href="https://datatables.net/">DataTables</a>(Table plug-in for jQuery)</li>
		                  <li><a href="http://echarts.baidu.com/index.html">ECharts3</a>(A pure Javascript chart library)</li>
		                  <li><a href="https://github.com/jonmiles/bootstrap-treeview">Bootstrap Tree View</a>(A simple and elegant solution to displaying hierarchical tree structures)</li>
		                  <li><a href="https://github.com/uxsolutions/bootstrap-datepicker">bootstrap-datepicker</a>(A datepicker for twitter bootstrap)</li>
		                  <li><a href="https://github.com/google/code-prettify">Code Prettifier</a>(An embeddable script that makes source-code snippets in HTML prettier)</li>
		               </ol>
		            </div>
		         </section>
		         <section id="license">
		            <div class="page-header">
		               <h2>协议</h2>
		            </div>
		            <p>
		               GPL-3.0
		            </p>
		         </section>
		      </div>
         </div>
         <!--/row-->
         <hr>
         <%@include file="/WEB-INF/views/footer.jsp"%>
      </div>
      <!--scripts loaded here-->
      <script src="<%=request.getContextPath()%>/static/Bootstrap/js/jquery.min.js"></script>
      <script src="<%=request.getContextPath()%>/static/Bootstrap/js/bootstrap.min.js"></script>
	  <script>
		$(document).ready(function(){
		  // Add scrollspy to <body>
		  $('body').scrollspy({
			  target: "#navbar-index", 
			  offset: 70
		  });   
		  // Add smooth scrolling on all links inside the navbar
		  $("#myNav a").on('click', function(event) {
		    // Make sure this.hash has a value before overriding default behavior
		    if (this.hash !== "") {
		      // Prevent default anchor click behavior
		      event.preventDefault();
		      // Store hash
		      var hash = this.hash;
		      // Using jQuery's animate() method to add smooth page scroll
		      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
		      $('html, body').animate({
		        scrollTop: $(hash).offset().top
		      }, 500, function(){
		        // Add hash (#) to URL when done scrolling (default click behavior)
		        window.location.hash = hash;
		      });
		    }  // End if
		  });
		});
	  </script>
   </body>
</html>