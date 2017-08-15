<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>蚌埠市邮政积分系统</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../../BBIC/css/bootstrap.min.css">
<link rel="stylesheet" href="../../BBIC/css/font-awesome.min.css">
<link rel="stylesheet" href="../../BBIC/css/ionicons.min.css">
<link rel="stylesheet" href="../../BBIC/css/AdminLTE.min.css">
<link rel="stylesheet" href="../../BBIC/css/_all-skins.min.css">
<link rel="stylesheet" href="../../BBIC/css/blue.css">
<link rel="stylesheet" href="../../BBIC/css/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet" href="../../BBIC/css/bootstrap-table.css">
<link rel="stylesheet" href="../../BBIC/css/bootstrap-editable.css">
<link rel="stylesheet" href="../../BBIC/css/sweetalert2.min.css">
<script src="../../BBIC/js/sweetalert2.min.js"></script>
<script src="../../BBIC/js/es6-promise.min.js"></script>  
<script src="../../BBIC/js/jquery.min.js"></script>
<script src="../../BBIC/js/bootstrap.min.js"></script>
<script src="../../BBIC/js/fastclick.js"></script>
<script src="../../BBIC/js/app.min.js"></script>
<script src="../../BBIC/js/demo.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="index.do" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>BB</b>IC</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>蚌埠市邮政积分系统</b> </span> </a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span> </a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="img/user2-160x160.jpg" class="user-image" alt="User Image">
								<span class="hidden-xs">${sessionScope.userinfo.username}</span> </a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img src="img/user2-160x160.jpg"
									class="img-circle" alt="User Image">
									<p>
										${sessionScope.userinfo.username} -- ${sessionScope.userinfo.usercompany} <small>${sessionScope.userinfo.userdepartment} ${sessionScope.userinfo.usercatagory}</small>
									</p>
								</li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="row">
										<div class="col-xs-4 text-center">
											<a href="#">Followers</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Sales</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Friends</a>
										</div>
									</div> <!-- /.row -->
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">信息</a>
									</div>
									<div class="pull-right">
										<a href="/BBIC/logout.do" class="btn btn-default btn-flat">注销</a>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		</header>

		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="img/user2-160x160.jpg" class="img-circle"
							alt="User Image">
					</div>
					<div class="pull-left info">
						<p>${sessionScope.userinfo.username}</p>
						<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
					</div>
				</div>
				<!-- 搜索表单 -->
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="搜索......"> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button> </span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="header">功能</li>
					<li class="treeview"><a href="#"> <i class="fa fa-laptop"></i>
							<span>开始界面</span> <i class="fa fa-angle-left pull-right"></i> </a>
						<ul id="main-index" class="treeview-menu">
							<li><a href="javascript:void(0);" target="main.do" onclick = "return false;"><i
									class="fa fa-circle-o"></i>主界面</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
							<span>人员管理</span> <i class="fa fa-angle-left pull-right"></i> </a>
						<ul id = "man-content" class="treeview-menu">
							<li><a href="javascript:void(0);" target="userchange.do" onclick = "return false;"><i
									class="fa fa-circle-o"></i> 员工信息修改</a></li>
							<li><a href="javascript:void(0);" target="usermanager.do" onclick = "return false;"><i
									class="fa fa-circle-o"></i> 权限管理</a></li>
							<li><a href="javascript:void(0);" target="userprofile.do" onclick = "return false;"><i
									class="fa fa-circle-o"></i> 个人信息修改</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
							<span>数据查询</span> <i class="fa fa-angle-left pull-right"></i> </a>
						<ul id="table-content" class="treeview-menu">
							<li><a href="#" target="table.do" onclick = "return false;"><i class="fa fa-circle-o"></i>查询信息</a>
							</li>
							<li><a href="javascript:void(0);" target="upload.do" onclick = "return false;"><i class="fa fa-circle-o"></i>上传信息</a>
							</li>
							<li><a href="javascript:void(0);" target="flot.do" onclick = "return false;"><i
									class="fa fa-circle-o"></i>总览信息</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-pie-chart"></i> <span>营业分析</span> <i
							class="fa fa-angle-left pull-right"></i> </a>
						<ul id = "flot-content" class="treeview-menu">
							<li><a href="javascript:void(0);" target="bengbu.do" onclick = "return false;"><i class="fa fa-circle-o"></i>全市总览</a>
							</li>
							<li><a href="javascript:void(0);" target="flot.do" onclick = "return false;"><i class="fa fa-circle-o"></i>绩效汇总</a>
							</li>
							<li><a href="javascript:void(0);" target="subbranch.do" onclick = "return false;"><i class="fa fa-circle-o"></i>网店汇总</a></li>
							<li><a href="javascript:void(0);" target="branch.do" onclick = "return false;"><i class="fa fa-circle-o"></i>测试总览</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-dashboard"></i> <span>实用工具</span> <i
							class="fa fa-angle-left pull-right"></i> </a>
						<ul id = "tool-content" class="treeview-menu">
							<li><a href="javascript:void(0);" target="messagetool.do" onclick = "return false;"><i class="fa fa-circle-o"></i>短信轰炸机</a>
							</li>
							<li><a href="javascript:void(0);" target="xx.do" onclick = "return false;"><i class="fa fa-circle-o"></i>上传信息</a>
							</li>
							<li><a href="javascript:void(0);" target="xx.do" onclick = "return false;"><i
									class="fa fa-circle-o"></i>总览信息</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-dashboard"></i> <span>系统信息</span> <i
							class="fa fa-angle-left pull-right"></i> </a>
						<ul class="treeview-menu">
							<li><a href="table.html"><i class="fa fa-circle-o"></i>关于我们</a>
							</li>
							<li><a href="uploadtable.html"><i class="fa fa-circle-o"></i>系统版本</a></li>
						</ul>
					</li>
					<!--预留添加功能地方-->
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<!--异步刷新此div-->
		<div id="main-content" class="content-wrapper"></div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.0
			</div>
			<strong>Copyright BengBu Tech Center; 2017-2020 <a
				href="http://www.nexttech.com">LMK Studio</a>.</strong> All rights reserved.
		</footer>
		<!-- ./wrapper -->

		<script>
			$(function() {
				$.get("main.do", function(data) {
					$("#main-content").html(data);//初始化加载界面  
				});

				$('#main-index li').click(
						function() {//点击li加载界面  
							var current = $(this), target = current.find('a')
									.attr('target'); // 找到链接a中的targer的值  
							$.get(target, function(data) {
								$("#main-content").html(data);
							});
						});
				$('#man-content li').click(
						function() {//点击li加载界面  
							var current = $(this), target = current.find('a')
									.attr('target'); // 找到链接a中的targer的值  
							$.get(target, function(data) {
								$("#main-content").html(data);
							});			
						});

				$('#flot-content li').click(
						function() {//点击li加载界面  
							var current = $(this), target = current.find('a')
									.attr('target'); // 找到链接a中的targer的值  
							$.get(target, function(data) {
								$("#main-content").html(data);
								if (data == null) {
									alert("sdsd");
								}
							});
						});
				$('#table-content li').click(
						function() {//点击li加载界面  
							var current = $(this), target = current.find('a')
									.attr('target'); // 找到链接a中的targer的值  
							$.get(target, function(data) {
								$("#main-content").html(data);
							});
						});
				$('#tool-content li').click(
						function() {//点击li加载界面  
							var current = $(this), target = current.find('a')
									.attr('target'); // 找到链接a中的targer的值  
							$.get(target, function(data) {
								$("#main-content").html(data);
							});
						});

			});
		</script>
		</div>
</body>
</html>
