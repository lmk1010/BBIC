<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="css/default.css">
<link href="css/fileinput.css" media="all" rel="stylesheet"
	type="text/css" />
<script src="../../BBIC/js/fileinput.js" type="text/javascript"></script>
<!--简体中文-->
<script src="../../BBIC/js/locales/zh.js" type="text/javascript"></script>
<!--繁体中文-->
<script src="../../BBIC/js/locales/zh-TW.js" type="text/javascript"></script>

<script type="text/javascript" src="../../BBIC/js/jquery.jsontotable.min.js"></script>

<style>
	.jsontotable table, .jsontotable th, .jsontotable td {
		border: 1px solid black;
		margin: 10px;
	}

  code {
    white-space: normal;
  }
	</style>
	
</head>
<body>
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<!-- interactive chart -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<i class="fa fa-bar-chart-o"></i>

						<h3 class="box-title">上传信息</h3>
					</div>
					<div class="box-body">
						<div class="htmleaf-container">
							<header class="htmleaf-header">
								<h1>
									员工信息可预览上传界面 <span>An enhanced HTML 5
										file input for Bootstrap 3.x with file preview, multiple
										selection, and more features</span>
								</h1>
								
								
							</header>
							<div class="container kv-main">
								<div class="page-header">
									<h2>EXCEL文件上传处</h2>
								</div>
								<hr>
								<form enctype="multipart/form-data">
									<!--<div class="form-group">
										<input id="file-4" type="file" class="file"
											data-upload-url="/BBIC/uploadexcel.do">
									</div> 
									<div class="form-group">
										<input id="file-5" class="file" type="file" multiple
											data-preview-file-type="any" data-upload-url="/BBIC/uploadexcel.do">
									</div> -->

									<label>简体中文</label>
									 <input id="file-zh" name="file-zh[]" type="file" multiple>
									<hr>
								
								</form>
								<div class="form-group">
								        <button class="btn btn-primary" onclick="showfile()">预览数据</button>
										<button class="btn btn-primary" onclick="submitfile()">提交数据</button>
								</div>
							</div>
						</div>
						
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">预览</h4>
											</div>
									<div class="modal-body">
										<div class="container">
											<div id="jsontotable-obj" class="jsontotable"></div>
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


					</div>
					<!-- /.box-body-->
				</div>
				<!-- /.box -->

			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->


		<!-- /.row -->
	</section>
	<!-- /.content -->



	<script>
	
	function delefile(){
		$.ajax({
			type : "POST",
			url : "/BBIC/delexcelpath.do",
			data : {
				deltag : 1
			},
			success : function(data) {
				
			},
			error : function(returndata) {
				swal(JSON.stringify(returndata));
			}
		});
		
	}
	function showfile(){
		
		$('#myModal').modal();
		
		$.ajax({
			type : "POST",
			url : "/BBIC/showexcel.do",
			data : {
				showtag : 1
			},
			success : function(data) {
				var obj = data;

				input = JSON.stringify(obj);

				$.jsontotable(obj, {
					id : "#jsontotable-obj",
					header : false
				});
			},
			error : function(returndata) {
				swal(JSON.stringify(returndata));
			}
		});
		
		
		}

		function submitfile() {
			$.ajax({
				type : "POST",
				url : "/BBIC/saveexcel.do",
				data : {
					uptag : 1
				},
				success : function(returndata) {
					swal(JSON.stringify(returndata));
				},
				error : function(returndata) {
					swal(JSON.stringify(returndata));
				}
			});
		}
		$('#file-zh').fileinput({
			language : 'zh',
			uploadUrl : '/BBIC/uploadexcel.do',
			'allowedFileExtensions' : [ 'xls', 'xlsx', 'gif' ],
		});
		$("#file-5").fileinput({
			language : 'zh',
		});
		$(".btn-warning").on('click', function() {
			if ($('#file-4').attr('disabled')) {
				$('#file-4').fileinput('enable');
			} else {
				$('#file-4').fileinput('disable');
			}
		});
		$(".btn-info").on('click', function() {
			$('#file-4').fileinput('refresh', {
				previewClass : 'bg-info'
			});
		});
		/*
		$('#file-4').on('fileselectnone', function() {
		    alert('Huh! You elected no files.');
		});
		$('#file-4').on('filebrowse', function() {
		    alert('File browse clicked for #file-4');
		});
		 */
		$(document).ready(function() {
			$("#test-upload").fileinput({
				'showPreview' : false,
				'allowedFileExtensions' : [ 'jpg', 'png', 'gif' ],
				'elErrorContainer' : '#errorBlock'
			});
			/*
			$("#test-upload").on('fileloaded', function(event, file, previewId, index) {
			    alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
			});
			 */
		});
	</script>