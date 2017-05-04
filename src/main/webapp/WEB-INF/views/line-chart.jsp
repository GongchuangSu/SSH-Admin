<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String basepath = request.getContextPath(); %>
<html>
   <head>
      <meta charset="utf-8">
      <title>折线图</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="google" value="notranslate">
      <!-- Bootstrap -->
      <link rel="stylesheet" href="<%=basepath%>/static/Bootstrap/css/bootstrap.min.css" />
      <!-- Custom styles for this template -->
      <link rel="stylesheet" href="<%=basepath%>/static/css/font-awesome.min.css" />
      <link rel="stylesheet" href="<%=basepath%>/static/css/dashboard.css">
   </head>
   <body>
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
               <div style="overflow: auto;">
	              <div id="example_1" style="height:500px; width:100%;"></div>
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
      <script src="<%=basepath%>/static/Bootstrap/js/jquery.min.js"></script>
      <script src="<%=basepath%>/static/Bootstrap/js/bootstrap.min.js"></script>     
      <!-- ECharts -->
      <script src="<%=basepath%>/static/ECharts/js/echarts.js"></script>
      <script>
         /* For sidebar offcanvas */
         $(document).ready(function () {
           $('[data-toggle="offcanvas"]').click(function () {
             $('.row-offcanvas').toggleClass('active')
           });
           $('#line-chart').toggleClass('active')
         });
      </script>
      <script type="text/javascript">
        /* 基于准备好的dom，初始化echarts实例 */
        var myChart = echarts.init(document.getElementById('example_1'));
        /* 指定图表的配置项和数据 */
        var option = {
        	    title: {
        	        text: 'Macbook Pro 价格变化图',
        	        subtext: '数据来源于互联网',
        	    },
        	    tooltip: {
        	        trigger: 'axis'
        	    },
        	    legend: {
        	        data:['Macbook Pro(2015)','Macbook Pro(2016)']
        	    },
        	    xAxis:  {
        	        type: 'category',
        	        boundaryGap: false,
        	        data: ['周一','周二','周三','周四','周五','周六','周日']
        	    },
        	    yAxis: {
        	        type: 'value',
        	        axisLabel: {
        	            formatter: '{value} °C'
        	        }
        	    },
        	    series: [
        	        {
        	            name:'Macbook Pro(2015)',
        	            type:'line',
        	            smooth:true,
        	            data:[11, 11, 15, 13, 12, 13, 10],
        	            markPoint:{
        	            	symbol:'pin',
        	            	data:[
        	            	   {type:'max',name:'最大值'},
        	            	   {type:'min',name:'最小值'},        	            	   
        	            	]
        	            },
        	            markLine:{
        	            	data:[
        	            	   {type:'average',name:'平均值'}
        	            	]
        	            }
        	        },
        	        {
        	            name:'Macbook Pro(2016)',
        	            type:'line',
        	            smooth:true,
        	            data:[1, -2, 2, 5, 3, 2, 0],
        	            markLine:{
        	            	data:[
        	                      [{
        	                          symbol: 'none',
        	                          x: '90%',
        	                          yAxis: 'max'
        	                      }, {
        	                          symbol: 'circle',
        	                          label: {
        	                              normal: {
        	                                  position: 'start',
        	                                  formatter: '最大值'
        	                              }
        	                          },
        	                          type: 'max',
        	                          name: '最高点'
        	                      }]
        	            	]
        	            }
        	        }
        	    ]
        	};
        myChart.setOption(option);
    </script>
   </body>
</html>