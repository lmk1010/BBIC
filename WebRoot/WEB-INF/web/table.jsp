<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--bootstrap table css-->

</head>
<body>
	<section class="content-header">
				<h1>
					表格数据 <small>表格控制</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a>
					</li>
					<li class="active">Dashboard</li>
				</ol>
			</section>

			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">员工信息查询表</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<div class="panel panel-default">
									<div class="panel-heading">查询条件</div>
									<div class="panel-body">
										<form id="formSearch" class="form-horizontal">
											<div class="form-group" style="margin-top:15px">
												<label class="control-label col-sm-1"
													for="txt_search_departmentname">员工姓名</label>
												<div class="col-sm-3">
													<input type="text" class="form-control"
														id="txt_search_departmentname">
												</div>
												<label class="control-label col-sm-1"
													for="txt_search_year">年份</label>
												<div class="col-sm-3">
													<select class="form-control select2" data-placeholder="Select a State" id="txt_search_year">
														<option selected="selected"></option>
														<option>2016</option>
														<option>2017</option>	
													</select>
												</div>											
												<label class="control-label col-sm-1"
													for="txt_search_month">月份</label>
												<div class="col-sm-3">
													<select  class="form-control select2"  
														id="txt_search_month">
														<option selected="selected"></option>
														<option>01</option>
														<option>02</option>
														<option>03</option>
														<option>04</option>
														<option>05</option>
														<option>06</option>
														<option>07</option>
														<option>08</option>
														<option>09</option>
														<option>10</option>
														<option>11</option>
														<option>12</option>												
														</select>
												</div>
												<div style="text-align:right;">
												<button type="button" style="margin-top:25px; margin-bottom:1px; margin-left:200px;margin-right:50px;"
														id="btn_query" class="btn btn-primary" onclick="initTable()">查询</button>
												</div>
																						
											</div>
										</form>
									</div>
								</div>	
								
								<div id="toolbar">
									<button id="adduser" type="button" class="btn btn-default">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
									</button>
									<button id="removeuser" type="button" class="btn btn-default">
										<span class="glyphicon glyphicon-remove" aria-hidden="true" onclick="deleteuser()"></span>删除
									</button>
									<button id="submit" type="button" class="btn btn-default">
										<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>提交
									</button>
								</div>
								
								
								<!-- 弹出框 -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">新增</h4>
											</div>
											<div class="modal-body">

												<div class="form-group">
													<label for="txt_usercode">员工编号</label> <input
														type="text" name="txt_usercode" class="form-control"
														id="txt_usercode" placeholder="员工编号">
												</div>
												<div class="form-group">
													<label for="txt_username">员工姓名</label> <input
														type="text" name="txt_username"
														class="form-control" id="txt_username"
														placeholder="员工姓名">
												</div>
												<div class="form-group">
													<label for="txt_date">业务日期</label> <input
														type="text" name="txt_date"
														class="form-control" id="txt_date"
														placeholder="业务日期">
												</div>
												<div class="form-group">
													<label for="txt_catagory">业务种类</label> <input
														type="text" name="txt_catagory"
														class="form-control" id="txt_catagory"
														placeholder="业务种类">
												</div>
												<div class="form-group">
													<label for="txt_price">业务价格</label> <input type="text"
														name="txt_price" class="form-control" id="txt_price"
														placeholder="业务价格">
												</div>
												<div class="form-group">
													<label for="txt_score">业务积分</label> <input type="text"
														name="txt_score" class="form-control" id="txt_score"
														placeholder="业务积分">
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">
													<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
												</button>
												<button type="button" id="tan_submit"
													class="btn btn-primary" data-dismiss="modal" onclick="tansubmit()">
													<span class="glyphicon glyphicon-floppy-disk"
														aria-hidden="true"></span>保存
												</button>
											</div>
										</div>
									</div>
								</div>
								
								<!-- sdsdsdsdsdsdsssssssssssssssssssssssssss -->

								<table id="table" data-toolbar="#toolbar" data-search="true"
									data-show-refresh="true" data-show-toggle="true"
									data-show-columns="true" data-show-export="true"
									data-detail-view="true" data-detail-formatter="detailFormatter"
									data-minimum-count-columns="2"
									data-show-pagination-switch="true" 
									data-id-field="Id" 
									data-show-footer="false" data-side-pagination="server"
									data-response-handler="responseHandler">
								</table>
								
								
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
			
			<script>
    var $table = $('#table');
    var  $submit = $('#submit');
    var  $adduser = $('#adduser');
    var  selections = [];
    
    function deleteuser(){
    	alert("执行了");
    	var ids = getIdSelections();
    	alert(ids.toString());
		$.ajax({
			type : "POST",
			url : "http://localhost:8331/BBIC/deleteUser",
			data : {id:ids.toString()}, 
			success : function(data) {
				alert(JSON.stringify(data));
			}
		});	
    	
    }
    
    
    $(function(){ 
        init();
        });
    
    function initTable() {
    	$table.bootstrapTable('destroy');  	
        $table.bootstrapTable({
	        height : getHeight(),
			url : '/BBIC/searchtable',
            pagination: true,
            pageSize: 10,
            pageNumber:1,
            pageList: [5, 10, 15, 20, 25], 
            queryParamsType : "undefined",   
            queryParams: function queryParams(params) {   //设置查询参数  
            var searcht = document.getElementById('txt_search_departmentname').value;
            var mon = document.getElementById('txt_search_month').value;
            var yea = document.getElementById('txt_search_year').value;
              var param = {    
                  pageNumber: params.pageNumber,    
                  pageSize: params.pageSize,  
                  searchText: searcht,
                  month: mon,
                  year: yea,
                  orderNum : $("#orderNum").val()  
              };    
              return param;                   
            },  
            clickToSelect: true,
			columns : [ {
				field : 'state',
				checkbox : true,
				align : 'center',
				valign : 'middle'
			}, {
				title : 'id',
				field : 'id',
				align : 'center',
				valign : 'middle',
				visible : false
			}, {
				field : 'usercode',
				title : '员工编号',
				editable : true,
				sortable : true,
				footerFormatter : totalNameFormatter,
				align : 'center'
			}, {
				field : 'username',
				title : '员工姓名',
				editable : true,
				sortable : true,
				footerFormatter : totalNameFormatter,
				align : 'center'
			}, {
				field : 'date',
				title : '业务日期',
				editable : true,
				sortable : true,
				footerFormatter : totalNameFormatter,
				align : 'center'
			}, {
				field : 'catagory',
				title : '业务种类',
				editable : true,
				sortable : true,
				footerFormatter : totalNameFormatter,
				align : 'center'
			}, {
				field : 'price',
				title : '业务价格',
				sortable : true,
				align : 'center',
				editable : true,
				footerFormatter : totalPriceFormatter
			}, {
				field : 'score',
				title : '业务积分',
				editable : true,
				sortable : true,
				footerFormatter : totalNameFormatter,
				align : 'center'
			}, {
				field : 'operate',
				title : '操作栏目',
				align : 'center',
				events : operateEvents,
				formatter : operateFormatter
			} ]

		});

		// sometimes footer render error.
		setTimeout(function() {
			$table.bootstrapTable('resetView');
		}, 200);
		$table.on('check.bs.table uncheck.bs.table '
				+ 'check-all.bs.table uncheck-all.bs.table', function() {
			$submit.prop('disabled',
					!$table.bootstrapTable('getData').length);

			// save your data, here just save the current page
			selections = getIdSelections();
			// push or splice the selections if you want to save all data selections
		});
		$table.on('expand-row.bs.table', function(e, index, row, $detail) {
			if (index % 2 == 1) {
				$detail.html('Loading from ajax request...');
				$.get('LICENSE', function(res) {
					$detail.html(res.replace(/\n/g, '<br>'));
				});
			}
		});
		$table.on('all.bs.table', function(e, name, args) {
			console.log(name, args);
		});
		
		$adduser.click(function() {
			$("#txt_usercode").val = null;
			$("#txt_username").val = null;
			$("#txt_date").val = null;
			$("#txt_catagory").val = null;
			$("#txt_price").val = null;
			$("#txt_score").val = null;
			$('#myModal').modal();
			
		});

		$submit.click(function() {
			var a = $table.bootstrapTable('getData');
			for ( var i = 0; i < a.length; i++)
		    {
		        delete a[i].state;
		    }
			var b = JSON.stringify(a);
			alert(b);
			
			$.ajax({
				type : "POST",
				url : "http://localhost:8331/BBIC/saveUserAll",
				dataType:"json",
				contentType : "application/json",
				data : b,
				success : function(data) {
					alert(JSON.stringify(data));
				}
			});

		});

		$(window).resize(function() {
			$table.bootstrapTable('resetView', {
				height : getHeight()
			});
		});
	}
	
    function tansubmit(){
    	$.ajax({
			type : "POST",
			url : "http://localhost:8331/BBIC/newUser",
			data : {"usercode":$("#txt_usercode").val(),"username":$("#txt_username").val(),"date":$("#txt_date").val(),"catagory":$("#txt_catagory").val(),"price":$("#txt_price").val(),"score":$("#txt_score").val()},
			success : function(data) {
				alert(JSON.stringify(data));
			}
		});
    }

	function getIdSelections() {
		return $.map($table.bootstrapTable('getSelections'), function(row) {
			return row.id;
		});
	}

	function responseHandler(res) {
		$.each(res.rows, function(i, row) {
			row.state = $.inArray(row.usercode, selections) !== -1;
		});
		return res;
	}

	function detailFormatter(index, row) {
		var html = [];
		$.each(row, function(key, value) {
			html.push('<p><b>' + key + ':</b> ' + value + '</p>');
		});
		return html.join('');
	}

	//操作集合
	function operateFormatter(value, row, index) {
		return [
				'<button type="button" class="RoleOfsubmit btn btn-default  btn-sm" style="margin-right:10px;">更新</button>',
				'<button type="button" class="RoleOfEdit btn btn-default  btn-sm" style="margin-right:10px;">编辑</button>',
			    '</a>' ].join('');
	}

	//自定义操作
	window.operateEvents = {
			
		//提交单行数据
		'click .RoleOfsubmit' : function(e, value, row, index) {
			var a = $table.bootstrapTable('getSelections');
			for ( var i = 0; i < a.length; i++)
		    {
		        delete a[i].state;
		    }
			var da = JSON.stringify(a);
			
			$.ajax({
				type : "POST",
				url : "http://localhost:8331/BBIC/saveUser",
				dataType:"json",
				contentType : "application/json",
				data : da,
				success : function(data) {
					alert(JSON.stringify(data));
				}
			});
		},
		//编辑信息
		'click .RoleOfEdit' : function(e, value, row, index) {
			$('#myModal').modal();

		}
	};

	function totalTextFormatter(data) {
		return 'Total';
	}

	function totalNameFormatter(data) {
		return data.length;
	}

	function totalPriceFormatter(data) {
		var total = 0;
		$.each(data, function(i, row) {
			total += +(row.price.substring(1));
		});
		return '$' + total;
	}

	function getHeight() {
		return $(window).height() - $('h1').outerHeight(true);
	}

	//初始化表格
	function init() {
		var scripts = [
				location.search.substring(1)
						|| '${pageContext.request.contextPath }/js/bootstrap-table.js',
				'${pageContext.request.contextPath }/js/bootstrap-table-export.js',
				'${pageContext.request.contextPath }/js/tableExport.js',
				'${pageContext.request.contextPath }/js/bootstrap-table-editable.js',
				'${pageContext.request.contextPath }/js/bootstrap-editable.js' ], eachSeries = function(
				arr, iterator, callback) {
			callback = callback || function() {
			};
			if (!arr.length) {
				return callback();
			}
			var completed = 0;
			var iterate = function() {
				iterator(arr[completed], function(err) {
					if (err) {
						callback(err);
						callback = function() {
						};
					} else {
						completed += 1;
						if (completed >= arr.length) {
							callback(null);
						} else {
							iterate();
						}
					}
				});
			};
			iterate();
		};
		eachSeries(scripts, getScript, initTable);
	}

	function getScript(url, callback) {
		var head = document.getElementsByTagName('head')[0];
		var script = document.createElement('script');
		script.src = url;

		var done = false;
		// Attach handlers for all browsers
		script.onload = script.onreadystatechange = function() {
			if (!done
					&& (!this.readyState || this.readyState == 'loaded' || this.readyState == 'complete')) {
				done = true;
				if (callback)
					callback();

				// Handle memory leak in IE
				script.onload = script.onreadystatechange = null;
			}
		};

		head.appendChild(script);

		// We handle everything using the script element injection
		return undefined;
	}
</script>
</body>