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
      <!-- DataTables -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/static/DataTables/css/dataTables.bootstrap.min.css"/>
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
				         <h3 class="panel-title">MacBook Pro价格信息统计表</h3>
				      </div>
				      <div class="panel-body">
				         <button class="btn btn-success" onclick="add_macbook()">
				         <i class="glyphicon glyphicon-plus"></i>添加新条目
				         </button>
				         <br/>
				         <br/>
				         <table id="macbooks_table" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
				            <thead>
				               <tr>
				                  <th>型号</th>
				                  <th>日期</th>
				                  <th>价格</th>
				                  <th style="width: 125px;">操作</th>
				               </tr>
				            </thead>
				         </table>
				      </div>
				</div>
				<br/>
				<br/>
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
      <!-- Bootstrap modal -->
      <div class="modal fade" id="modal_form" role="dialog">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>                     
                  </button>
                  <h3 class="modal-title">MacBook Pro价格信息表单</h3>
               </div>
               <div class="modal-body form">
                  <form action="#" id="form" class="form-horizontal">
                     <input type="hidden" value="" name="id"/>
                     <div class="form-body">
                        <div class="form-group">
                           <label class="control-label col-md-3">型号</label>
                           <div class="col-md-9">
                              <input name="modelNumber" placeholder="型号" class="form-control" type="text"/>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="control-label col-md-3">日期</label>
                           <div class="col-md-9">
                              <input name="date" placeholder="日期" class="form-control" type="date"/>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="control-label col-md-3">价格</label>
                           <div class="col-md-9">
                              <input name="price" placeholder="价格" class="form-control" type="text"/>
                           </div>
                        </div>
                     </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" id="btnSave" onclick="save()" class="btn btn-primary">保存</button>
                  <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
               </div>
            </div>
            <!-- /.modal-content -->
         </div>
         <!-- /.modal-dialog -->
      </div>
      <!-- DataTables -->
      <script src="<%=request.getContextPath()%>/static/DataTables/js/jquery.dataTables.min.js"></script>
      <script src="<%=request.getContextPath()%>/static/DataTables/js/dataTables.bootstrap.min.js"></script>   
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
         /* For DataTables */
         var table;
         $(document).ready(function() {
            table = $('#macbooks_table').DataTable({
              "scrollX":true,  /* 启用水平滚动 */
              "language":{     /* 中文版 */
            	  "url":"<%=request.getContextPath()%>/static/DataTables/language/Chinese.json"
              },
              "ajax":{
           	      url:'macbooks?method=macbooks_table'
              },
              "columns":[
                   {"data": "modelNumber"},
                   {"data": "date"},
                   {"data": "price"},
                   {"data": null}
               ],
               "columnDefs": [{
            	   targets: 3,
            	   render: function(data, type, row, meta) {
            		   return '<td><button class="btn btn-warning btn-sm" onclick="edit_macbook('+row.id+');">'
                       +'<i class="glyphicon glyphicon-pencil"></i>修改</button>'
                       +'&nbsp&nbsp'
                       +'<button class="btn btn-danger btn-sm" onclick="delete_macbook('+row.id+');">' 
                       +'<i class="glyphicon glyphicon-remove"></i>删除</button><td>'
            	   }
               }]
           });
         });
         
         /* jQuery Ajax for CRUD */
         var save_method;       
         
         function add_macbook(){
          save_method = 'add';
          $('#form')[0].reset();
          $('.modal-title').text('添加新条目'); // Set title to Bootstrap modal title
          $('#modal_form').modal('show');
         }
         
         function edit_macbook(id){
          save_method = 'update';
          $('#form')[0].reset();
          /* Load data from ajax */
          $.ajax({
               url: "macbooks?method=getMacBookById&id="+id,
            type: "GET",
            dataType: "json",
            success: function(data){
         	   $('[name="id"]').val(data[0].id);
         	   $('[name="modelNumber"]').val(data[0].modelNumber);
         	   $('[name="date"]').val(data[0].date);
         	   $('[name="price"]').val(data[0].price); 
         	   
         	   $('.modal-title').text('修改条目信息'); // Set title to Bootstrap modal title
         	   $('#modal_form').modal('show'); // show bootstrap modal when complete loaded        		   
            },
            error: function(jqXHR, textStatus, errorThrown){
         	   alert('获取数据失败');
            }
          });
         }
         
         function save(){
          var url;
          if(save_method == 'add')
          {
         	 url = "macbooks?save_method=add";
          }
          else
          {
         	 url = "macbooks?save_method=update";
          }
          /* POST data by Ajax */
          $.ajax({
                url: url,
                type: "POST",
                data: $('#form').serialize(),
                success: function(data){
                	//if success, close modal and reload ajax table
               		$('#modal_form').modal('hide');
               		table.ajax.reload(); // for reload a table  
                },
         	    error: function(jqXHR, textStatus, errorThrown){
         	    	if(save_method == 'add')
         	            alert('添加数据失败');
         	    	else
         	    		alert('更新数据失败');
             }
          });
         }
         
         function delete_macbook(id){
          if(confirm('您确定要删除这条数据吗？')){
         	 /* Ajax delete data from database */
         	 $.ajax({
         	    url: "macbooks?method=deleteMacBookById&id="+id,
         	    type: "POST",
         	    success: function(data)
         	    {
         	    	table.ajax.reload(); // reload ajax table
         	    },
         	    error: function(jqXHR, textStatus, errorThrown)
         	    {
         	    	alert('删除数据失败');
         	    }
         	 });
          }
         }
         /* End jQuery Ajax for CRUD */
      </script>
      <!-- ECharts configuration -->
      <script type="text/javascript">
        /* 基于准备好的dom，初始化echarts实例 */
        var myChart = echarts.init(document.getElementById('example_1'));
        /* 指定图表的配置项和数据 */
        myChart.setOption({
       	    title: {
       	        text: 'Macbook Pro 价格变化图',
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
       	            type:'line',
       	            smooth:true,
       	            data: [],
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
       	        }
       	    ]
        });
        /* Load data from ajax */
        var arrX = new Array();
       	var arrY = new Array();
        $.ajax({
          url: "line-chart?action=getDataXY",
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
          },
          error: function(jqXHR, textStatus, errorThrown){
       	   alert('获取数据失败');
          }
        });           
    </script>
   </body>
</html>