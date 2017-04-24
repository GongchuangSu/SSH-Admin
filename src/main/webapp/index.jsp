<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
   <head>
      <meta charset="utf-8">
      <title>主界面</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="google" value="notranslate">
      <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/img/avatar.png">
      <!-- Bootstrap -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.min.css" />
      <!-- Custom styles for this template -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/font-awesome.min.css" />
      <link href="<%=request.getContextPath()%>/static/css/dashboard.css" rel="stylesheet">
   </head>
   <body >
      <nav class="navbar navbar-inverse navbar-fixed-top">
         <div class="container-fluid">
            <div class="navbar-header">
               <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="#">后台管理系统</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
               <ul class="nav navbar-nav navbar-left">
                  <li><a href="#">首页</a></li>
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
      <!-- /.navbar -->
      <div class="container-fluid">
         <div class="row row-offcanvas row-offcanvas-right">
            <div class="col-xs-12 col-sm-9 col-sm-push-3">
               <p class="pull-right visible-xs">
                  <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas" title="Toggle sidebar"><i class="fa fa-chevron-right"></i></button>
               </p>
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
               <div class="list-group">
                  <a href="#" class="list-group-item active">I'm the Sidebar</a>
                  <a href="#" class="list-group-item">Link</a>
                  <a href="#" class="list-group-item">Link</a>
                  <a href="#" class="list-group-item">Link</a>
                  <a href="#" class="list-group-item">Link</a>
                  <a href="#" class="list-group-item">Link</a>
                  <a href="#" class="list-group-item">Link</a>
                  <a href="#" class="list-group-item">Link</a>
                  <a href="#" class="list-group-item">Link</a>
                  <a href="#" class="list-group-item">Link</a>
               </div>
            </div>
            <!--/.sidebar-offcanvas-->
         </div>
         <!--/row-->
         <hr>
         <footer>
            <p>&copy; 2017 GongchuangSu, Inc.</p>
         </footer>
      </div>
      <!--/.container-->
      <script>
         // sandbox disable popups
         if (window.self !== window.top && window.name!="view1") {;
           window.alert = function(){/*disable alert*/};
           window.confirm = function(){/*disable confirm*/};
           window.prompt = function(){/*disable prompt*/};
           window.open = function(){/*disable open*/};
         }
         
         // prevent href=# click jump
         document.addEventListener("DOMContentLoaded", function() {
           var links = document.getElementsByTagName("A");
           for(var i=0; i < links.length; i++) {
             if(links[i].href.indexOf('#')!=-1) {
               links[i].addEventListener("click", function(e) {
               console.debug("prevent href=# click");
                   if (this.hash) {
                     if (this.hash=="#") {
                       e.preventDefault();
                       return false;
                     }
                     else {
                       /*
                       var el = document.getElementById(this.hash.replace(/#/, ""));
                       if (el) {
                         el.scrollIntoView(true);
                       }
                       */
                     }
                   }
                   return false;
               })
             }
           }
         }, false);
      </script>
      <!--scripts loaded here-->
      <script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
      <script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>
      <script>
         $(document).ready(function () {
         $('[data-toggle="offcanvas"]').click(function () {
           $('.row-offcanvas').toggleClass('active')
         });
         });
      </script>
   </body>
</html>