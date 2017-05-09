<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String basepath = request.getContextPath(); %>
<html>
   <head>
      <meta charset="utf-8">
      <title>柱状图</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="google" value="notranslate">
      <!-- Bootstrap -->
      <link rel="stylesheet" href="<%=basepath%>/static/Bootstrap/css/bootstrap.min.css" />
      <!-- DataTables -->
      <link rel="stylesheet" href="<%=basepath%>/static/DataTables/css/dataTables.bootstrap.min.css"/>
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
               <div class="panel panel-primary">
				  <div class="panel-heading">
				    <h3 class="panel-title">柱状图示例一</h3>
				  </div>
				  <div class="panel-body">
				     <div style="overflow: auto;">
	                    <div id="example_1" style="height:500px; width:100%;"></div>
	                 </div>
				  </div>
			   </div>
               <div class="panel panel-primary">
				  <div class="panel-heading">
				    <h3 class="panel-title">柱状图示例二</h3>
				  </div>
				  <div class="panel-body">
				     <div style="overflow: auto;">
	                    <div id="example_2" style="height:500px; width:100%;"></div>
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
      <script src="<%=basepath%>/static/Bootstrap/js/jquery.min.js"></script>
      <script src="<%=basepath%>/static/Bootstrap/js/bootstrap.min.js"></script>  
      <!-- DataTables -->
      <script src="<%=basepath%>/static/DataTables/js/jquery.dataTables.min.js"></script>
      <script src="<%=basepath%>/static/DataTables/js/dataTables.bootstrap.min.js"></script>   
      <!-- ECharts -->
      <script src="<%=basepath%>/static/ECharts/js/echarts.js"></script>
      <!-- For sidebar offcanvas -->
      <script>
         $(document).ready(function () {
           $('[data-toggle="offcanvas"]').click(function () {
             $('.row-offcanvas').toggleClass('active')
           });
           $('#bar-chart').toggleClass('active')
         });
      </script>
      <!-- ECharts configuration -->
      <script type="text/javascript">
        /* 基于准备好的dom，初始化echarts实例 */
        var myChart = echarts.init(document.getElementById('example_1'));
        var myChart_2 = echarts.init(document.getElementById('example_2'));
        /* 指定图表的配置项和数据 */
        /****************************For myChart****************************/
        myChart.setOption({
        	color: ['#3398DB'],
       	    title: {
       	        text: 'Macbook Pro 价格柱状图',
       	        subtext: '数据来源于互联网',
       	    },
       	    tooltip: {
       	        trigger: 'axis'
       	    },
       	    legend: {
       	        data:['Macbook Pro(2015)']
       	    },
			toolbox: {
			    show: true,
			    feature: {
			        magicType: {type: ['line', 'bar']},
			        restore: {},
			        saveAsImage: {}
			    }
			},
       	    xAxis:  {
       	        type: 'category',
       	        boundaryGap: false,
       	        data: []
       	    },
       	    yAxis: {
       	        type: 'value',
       	        min: 10000,
       	        max: 12200,
       	        interval: 200,
    	        axisLabel: {
    	            formatter: '￥{value}'
    	        }
       	    },
       	    series: [
       	        {
       	            name:'Macbook Pro(2015)',
       	            type:'bar',
       	            barWidth: '60%',
       	            data: []
       	        }
       	    ]
        });
        /****************************For myChart_2****************************/
        myChart_2.setOption({
            title: {
                text: 'Macbook Pro 价格柱状图',
                subtext: '特性示例：渐变色 阴影 点击缩放'
            },
            tooltip: {
       	        trigger: 'axis'
       	    },
            legend: {
       	        data:['Macbook Pro(2015)']
       	    },
            xAxis: {
                data: [],
                axisTick: {
                    show: false
                },
                axisLine: {
                    show: false
                },
                z: 10
            },
            yAxis: {
       	        min: 10000,
       	        max: 12200,
       	        interval: 200,
                axisLabel: {
                    textStyle: {
                        color: '#999'
                    }
                }
            },
            dataZoom: [
                {
                    type: 'inside'
                }
            ],
            series: [
                { // For shadow
                    type: 'bar',
                    itemStyle: {
                        normal: {color: 'rgba(0,0,0,0.05)'}
                    },
                    barGap:'-100%',
                    barCategoryGap:'40%',
                    data: [],
                    tooltip:{trigger: 'none'},
                    animation: false
                },
                {
                    type: 'bar',
                    name:'Macbook Pro(2015)',
                    itemStyle: {
                        normal: {
                            color: new echarts.graphic.LinearGradient(
                                0, 0, 0, 1,
                                [
                                    {offset: 0, color: '#83bff6'},
                                    {offset: 0.5, color: '#188df0'},
                                    {offset: 1, color: '#188df0'}
                                ]
                            )
                        },
                        emphasis: {
                            color: new echarts.graphic.LinearGradient(
                                0, 0, 0, 1,
                                [
                                    {offset: 0, color: '#2378f7'},
                                    {offset: 0.7, color: '#2378f7'},
                                    {offset: 1, color: '#83bff6'}
                                ]
                            )
                        }
                    },
                    data: []
                }
            ]
        });
        /* Load data from ajax */
        var arrX = new Array();
       	var arrY = new Array();
        $.ajax({
          url: "bar-chart?action=getDataXY",
          type: "GET",
          dataType: "json",
          success: function(data){
           /* 转换为数组格式 */
           for(var i=0;i<data.length;i++)
           {
        	   arrX.push(data[i].date);
        	   arrY.push(data[i].price);
           }       
           /* 更新配置，填入数据 */
           /****************For myChart***************/
           myChart.setOption({  
        	   xAxis:  {
          	        data: arrX
          	    },
         	   series:[{
         		    // 根据名字对应到相应的系列
          			name: 'Macbook Pro(2015)',
          			data: arrY
          		}]
           });
           /****************For myChart_2***************/
           var yMax = 12200;
           var dataShadow = [];
           for (var i = 0; i < arrY.length; i++) {
               dataShadow.push(yMax);
           }
           myChart_2.setOption({ 
        	   xAxis:  {
          	        data: arrX
          	    },
         	   series:[{
         		    data: dataShadow
         	   },
         	   {
          			data: arrY
          	   }]
           });
           /* Enable data zoom when user click bar */
           var zoomSize = 6;
           myChart_2.on('click', function (params) {
               console.log(arrX[Math.max(params.dataIndex - zoomSize / 2, 0)]);
               myChart_2.dispatchAction({
                   type: 'dataZoom',
                   startValue: arrX[Math.max(params.dataIndex - zoomSize / 2, 0)],
                   endValue: arrX[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
               });
           });
          },
          error: function(jqXHR, textStatus, errorThrown){
       	   alert('获取数据失败');
          }
        });           
    </script>
   </body>
</html>