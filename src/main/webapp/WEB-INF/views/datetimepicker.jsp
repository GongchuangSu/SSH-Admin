<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
   <head>
      <meta charset="utf-8">
      <title>日期时间选择器</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="google" value="notranslate">
      <!-- Bootstrap -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/Bootstrap/css/bootstrap.min.css" />
      <!-- DateTimePicker -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/DateTimePicker/css/bootstrap-datepicker3.min.css" />
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
               <section>
	              <h2>基本样式</h2>
	              <hr>
	              <pre class="prettyprint">	              
   &lt;div id=&quot;form_datetime1&quot; style=&quot;width: 250px&quot;&gt;
      &lt;input type=&quot;text&quot; class=&quot;form-control&quot;&gt;
   &lt;/div&gt;	 
 
   &lt;script type=&quot;text/javascript&quot;&gt;
   $(&quot;#form_datetime1 input&quot;).datepicker({
  	 format: &#x27;yyyy-mm-dd&#x27;,
  	 todayHighlight: true,
  	 language: &#x27;zh-CN&#x27;
   });    
   &lt;/script&gt;            
	              </pre>
	              <div id="form_datetime1" style="width: 250px">
	                 <input type="text" class="form-control">
	              </div>	             
               </section>
               <section>
                  <h2>带组件的样式</h2>
                  <hr>
                  <pre class="prettyprint">
   &lt;div id=&quot;form_datetime2&quot;&gt;
      &lt;div class=&quot;input-group date&quot; style=&quot;width: 250px&quot;&gt;
         &lt;input class=&quot;form-control&quot;&gt;
         &lt;span class=&quot;input-group-addon&quot;&gt;&lt;i class=&quot;glyphicon glyphicon-th-list&quot;&gt;&lt;/i&gt;&lt;/span&gt;
      &lt;/div&gt;    
   &lt;/div&gt; 
   
   &lt;script&gt;
   $(&quot;#form_datetime2 .input-group.date&quot;).datepicker({
  	 format: &#x27;yyyy-mm-dd&#x27;,
  	 todayHighlight: true,
  	 language: &#x27;zh-CN&#x27;
   });
   &lt;/script&gt;                 
                  </pre>
                  <div id="form_datetime2">
                     <div class="input-group date" style="width: 250px">
                        <input class="form-control">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>
                     </div>    
                  </div>
               </section>
               <section>
                  <h2>嵌入式/内联式</h2>
                  <hr>
                  <pre class="prettyprint">
   &lt;div id=&quot;form_datetime3&quot;&gt;
     &lt;div&gt;&lt;/div&gt;    
   &lt;/div&gt;    
   
   &lt;script&gt;
   $(&quot;#form_datetime3&quot;).datepicker({
  	 format: &#x27;yyyy-mm-dd&#x27;,
  	 todayHighlight: true,
  	 language: &#x27;zh-CN&#x27;
   });
   &lt;/script&gt;                
                  </pre>
                  <div id="form_datetime3">
                     <div></div>    
                  </div>
               </section>
               <section>
                  <h2>带范围的样式</h2>
                  <hr>
                  <pre class="prettyprint">
   &lt;div id=&quot;form_datetime4&quot;&gt;
      &lt;div class=&quot;input-daterange input-group&quot; id=&quot;datepicker&quot;&gt;
         &lt;input type=&quot;text&quot; class=&quot;input-sm form-control&quot; name=&quot;start&quot;&gt;
         &lt;span class=&quot;input-group-addon&quot;&gt;至&lt;/span&gt;
         &lt;input type=&quot;text&quot; class=&quot;input-sm form-control&quot; name=&quot;end&quot;&gt;
      &lt;/div&gt;    
   &lt;/div&gt;  
   
   &lt;script&gt;
   $(&quot;#form_datetime4 .input-daterange&quot;).datepicker({
  	 format: &#x27;yyyy-mm-dd&#x27;,
  	 todayHighlight: true,
  	 language: &#x27;zh-CN&#x27;
   });
   &lt;/script&gt;                   
                  </pre>
                  <div id="form_datetime4" style="width: 500px">
                     <div class="input-daterange input-group" id="datepicker">
                        <input type="text" class="input-sm form-control" name="start">
                        <span class="input-group-addon">至</span>
                        <input type="text" class="input-sm form-control" name="end">
                     </div>    
                  </div>
               </section>
            </div>
            <!--/.col-xs-12.col-sm-9-->
            <%@include file="/WEB-INF/views/sidebar.jsp" %> <!-- sidebar offcanvas for function list -->
         </div>
         <!--/row-->
         <hr>
         <%@include file="/WEB-INF/views/footer.jsp"%>
      </div>
      <!-- DateTimePicker -->
      <script src="<%=request.getContextPath()%>/static/DateTimePicker/js/bootstrap-datepicker.min.js"></script>
      <script src="<%=request.getContextPath()%>/static/DateTimePicker/language/bootstrap-datepicker.zh-CN.min.js"></script>
      <!-- code-prettify -->
      <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
      <script>
         /* For sidebar offcanvas */
         $(document).ready(function () {
           $('[data-toggle="offcanvas"]').click(function () {
             $('.row-offcanvas').toggleClass('active')
           });
           $('#datetimepicker').toggleClass('active')
         });
         /* For DateTimePicker */
	     $("#form_datetime1 input").datepicker({
	    	 format: 'yyyy-mm-dd',
	    	 todayHighlight: true,
	    	 language: 'zh-CN'
	     });
	     $("#form_datetime2 .input-group.date").datepicker({
	    	 format: 'yyyy-mm-dd',
	    	 todayHighlight: true,
	    	 language: 'zh-CN'
	     });
	     $("#form_datetime3").datepicker({
	    	 format: 'yyyy-mm-dd',
	    	 todayHighlight: true,
	    	 language: 'zh-CN'
	     });
	     $("#form_datetime4 .input-daterange").datepicker({
	    	 format: 'yyyy-mm-dd',
	    	 todayHighlight: true,
	    	 language: 'zh-CN'
	     });
      </script>
   </body>
</html>