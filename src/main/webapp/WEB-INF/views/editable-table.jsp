<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
   <head>
      <meta charset="utf-8">
      <title>可编辑表格</title>
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
                     <h3 class="panel-title">表格一（页面刷新）</h3>
                  </div>
                  <div class="panel-body">
                     <button class="btn btn-success" onclick="add_book_1()">
                     <i class="glyphicon glyphicon-plus"></i>添加新图书
                     </button>
                     <br/>
                     <br/>
                     <table id="example_1" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                        <thead>
                           <tr>
                              <th>ISBN</th>
                              <th>书名</th>
                              <th>作者</th>
                              <th>类别</th>
                              <th>价格</th>
                              <th style="width: 125px;">操作</th>
                           </tr>
                        </thead>
                        <tbody>
                           <c:forEach items="${bookList}" var="book">
                              <tr>
                                 <td>${book.isbn}</td>
                                 <td>${book.title}</td>
                                 <td>${book.author}</td>
                                 <td>${book.category}</td>
                                 <td>${book.price}</td>
                                 <td>
                                    <button class="btn btn-warning btn-sm" onclick="edit_book_1(${book.id});">
                                    <i class="glyphicon glyphicon-pencil"></i>修改
                                    </button>
                                    <button class="btn btn-danger btn-sm" onclick="delete_book_1(${book.id});">
                                    <i class="glyphicon glyphicon-remove"></i>删除
                                    </button>
                                 </td>
                              </tr>
                           </c:forEach>
                        </tbody>
                     </table>
                  </div>
               </div>
               <div class="panel panel-primary">
                  <div class="panel-heading">
                     <h3 class="panel-title">表格二（局部刷新）</h3>
                  </div>
                  <div class="panel-body">
                     <button class="btn btn-success" onclick="add_book_2()">
                     <i class="glyphicon glyphicon-plus"></i>添加新图书
                     </button>
                     <br/>
                     <br/>
                     <table id="example_2" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                        <thead>
                           <tr>
                              <th>ISBN</th>
                              <th>书名</th>
                              <th>作者</th>
                              <th>类别</th>
                              <th>价格</th>
                              <th style="width: 125px;">操作</th>
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
      <!-- Bootstrap modal -->
      <!-- modal for example_1 -->
      <div class="modal fade" id="modal_form_1" role="dialog">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>                     
                  </button>
                  <h3 class="modal-title">图书信息表单</h3>
               </div>
               <div class="modal-body form">
                  <form action="#" id="form_1" class="form-horizontal">
                     <input type="hidden" value="" name="id"/>
                     <div class="form-body">
                        <div class="form-group">
                           <label class="control-label col-md-3">ISBN</label>
                           <div class="col-md-9">
                              <input name="isbn" placeholder="ISBN" class="form-control" type="text"/>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="control-label col-md-3">书名</label>
                           <div class="col-md-9">
                              <input name="title" placeholder="书名" class="form-control" type="text"/>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="control-label col-md-3">作者</label>
                           <div class="col-md-9">
                              <input name="author" placeholder="作者" class="form-control" type="text"/>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="control-label col-md-3">类别</label>
                           <div class="col-md-9">
                              <input name="category" placeholder="类别" class="form-control" type="text"/>
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
                  <button type="button" id="btnSave_1" onclick="save_1()" class="btn btn-primary">保存</button>
                  <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
               </div>
            </div>
            <!-- /.modal-content -->
         </div>
         <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      <!-- modal for example_2 -->
      <div class="modal fade" id="modal_form_2" role="dialog">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>                     
                  </button>
                  <h3 class="modal-title">图书信息表单</h3>
               </div>
               <div class="modal-body form">
                  <form action="#" id="form_2" class="form-horizontal">
                     <input type="hidden" value="" name="id"/>
                     <div class="form-body">
                        <div class="form-group">
                           <label class="control-label col-md-3">ISBN</label>
                           <div class="col-md-9">
                              <input name="isbn" placeholder="ISBN" class="form-control" type="text"/>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="control-label col-md-3">书名</label>
                           <div class="col-md-9">
                              <input name="title" placeholder="书名" class="form-control" type="text"/>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="control-label col-md-3">作者</label>
                           <div class="col-md-9">
                              <input name="author" placeholder="作者" class="form-control" type="text"/>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="control-label col-md-3">类别</label>
                           <div class="col-md-9">
                              <input name="category" placeholder="类别" class="form-control" type="text"/>
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
                  <button type="button" id="btnSave_2" onclick="save_2()" class="btn btn-primary">保存</button>
                  <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
               </div>
            </div>
            <!-- /.modal-content -->
         </div>
         <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      <!-- End Bootstrap modal -->
      <!-- DataTables -->
      <script src="<%=request.getContextPath()%>/static/DataTables/js/jquery.dataTables.min.js"></script>
      <script src="<%=request.getContextPath()%>/static/DataTables/js/dataTables.bootstrap.min.js"></script>
      <script>
         /* For sidebar offcanvas */
         $(document).ready(function () {
           $('[data-toggle="offcanvas"]').click(function () {
             $('.row-offcanvas').toggleClass('active')
           });
           $('#editable-table').toggleClass('active')
         });
         
         /* For DataTables */
         var table_1, table_2;
         $(document).ready(function() {
         table_1 = $('#example_1').DataTable({
                "scrollX":true,  /* 启用水平滚动 */
                "language":{     /* 中文版 */
              	  "url":"<%=request.getContextPath()%>/static/DataTables/language/Chinese.json"
                }
             });
            table_2 = $('#example_2').DataTable({
              "scrollX":true,  /* 启用水平滚动 */
              "language":{     /* 中文版 */
            	  "url":"<%=request.getContextPath()%>/static/DataTables/language/Chinese.json"
              },
              "ajax":{
           	      url:'editable-table?method=example_2'
              },
              "columns":[
                   {"data": "isbn"},
                   {"data": "title"},
                   {"data": "author"},
                   {"data": "category"},
                   {"data": "price"},
                   {"data": null}
               ],
               "columnDefs": [{
            	   targets: 5,
            	   render: function(data, type, row, meta) {
            		   return '<td><button class="btn btn-warning btn-sm" onclick="edit_book_2('+row.id+');">'
                       +'<i class="glyphicon glyphicon-pencil"></i>修改</button>'
                       +'&nbsp&nbsp'
                       +'<button class="btn btn-danger btn-sm" onclick="delete_book_2('+row.id+');">' 
                       +'<i class="glyphicon glyphicon-remove"></i>删除</button><td>'
            	   }
               }]
           });
         });
         
         /* jQuery Ajax for CRUD */
         var save_method;
         
         function add_book_1(){
          save_method = 'add';
          $('#form_1')[0].reset();
          $('.modal-title').text('添加图书'); // Set title to Bootstrap modal title
          $('#modal_form_1').modal('show');
         }
         
         function add_book_2(){
          save_method = 'add';
          $('#form_2')[0].reset();
          $('.modal-title').text('添加图书'); // Set title to Bootstrap modal title
          $('#modal_form_2').modal('show');
         }
         
         function edit_book_1(id){
          save_method = 'update';
          $('#form_1')[0].reset();
          /* Load data from ajax */
          $.ajax({
               url: "editable-table?method=getBookById&id="+id,
            type: "GET",
            dataType: "json",
            success: function(data){
         	   $('[name="id"]').val(data[0].id);
         	   $('[name="isbn"]').val(data[0].isbn);
         	   $('[name="title"]').val(data[0].title);
         	   $('[name="author"]').val(data[0].author);
         	   $('[name="category"]').val(data[0].category);     
         	   $('[name="price"]').val(data[0].price); 
         	   
         	   $('.modal-title').text('修改图书信息'); // Set title to Bootstrap modal title
         	   $('#modal_form_1').modal('show'); // show bootstrap modal when complete loaded        		   
            },
            error: function(jqXHR, textStatus, errorThrown){
         	   alert('获取数据失败');
            }
          });
         }
         
         function edit_book_2(id){
          save_method = 'update';
          $('#form_2')[0].reset();
          /* Load data from ajax */
          $.ajax({
               url: "editable-table?method=getBookById&id="+id,
            type: "GET",
            dataType: "json",
            success: function(data){
         	   $('[name="id"]').val(data[0].id);
         	   $('[name="isbn"]').val(data[0].isbn);
         	   $('[name="title"]').val(data[0].title);
         	   $('[name="author"]').val(data[0].author);
         	   $('[name="category"]').val(data[0].category);     
         	   $('[name="price"]').val(data[0].price); 
         	   
         	   $('.modal-title').text('修改图书信息'); // Set title to Bootstrap modal title
         	   $('#modal_form_2').modal('show'); // show bootstrap modal when complete loaded        		   
            },
            error: function(jqXHR, textStatus, errorThrown){
         	   alert('获取数据失败');
            }
          });
         }
         
         function save_1(){
          var url;
          if(save_method == 'add')
          {
         	 url = "editable-table?save_method=add";
          }
          else
          {
         	 url = "editable-table?save_method=update";
          }
          /* POST data by Ajax */
          $.ajax({
                url: url,
                type: "POST",
                data: $('#form_1').serialize(),
                success: function(data){
                	//if success, close modal and reload ajax table
               		$('#modal_form_1').modal('hide');
               		location.reload();     // for reload a page              	                 	
                },
         	    error: function(jqXHR, textStatus, errorThrown){
         	    	if(save_method == 'add')
         	        	alert('添加数据失败');
         	    	else
         	    		alert('更新数据失败');
             }
          });
         }
         
         function save_2(){
          var url;
          if(save_method == 'add')
          {
         	 url = "editable-table?save_method=add";
          }
          else
          {
         	 url = "editable-table?save_method=update";
          }
          /* POST data by Ajax */
          $.ajax({
                url: url,
                type: "POST",
                data: $('#form_2').serialize(),
                success: function(data){
                	//if success, close modal and reload ajax table
               		$('#modal_form_2').modal('hide');
               		table_2.ajax.reload(); // for reload a table  
                },
         	    error: function(jqXHR, textStatus, errorThrown){
         	    	if(save_method == 'add')
         	            alert('添加数据失败');
         	    	else
         	    		alert('更新数据失败');
             }
          });
         }
         
         function delete_book_1(id){
          if(confirm('您确定要删除这条数据吗？')){
         	 /* Ajax delete data from database */
         	 $.ajax({
         	    url: "editable-table?method=deleteBookById&id="+id,
         	    type: "POST",
         	    success: function(data)
         	    {
         	    	location.reload(); // reload a page
         	    },
         	    error: function(jqXHR, textStatus, errorThrown)
         	    {
         	    	alert('删除数据失败');
         	    }
         	 });
          }
         }
         
         function delete_book_2(id){
          if(confirm('您确定要删除这条数据吗？')){
         	 /* Ajax delete data from database */
         	 $.ajax({
         	    url: "editable-table?method=deleteBookById&id="+id,
         	    type: "POST",
         	    success: function(data)
         	    {
         	    	table_2.ajax.reload(); // reload ajax table
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
   </body>
</html>