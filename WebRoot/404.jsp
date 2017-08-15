<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
   <!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!--bootstrap table css-->
  <link rel="stylesheet" href="../../BBIC/css/bootstrap.min.css">
<link rel="stylesheet" href="../../BBIC/css/font-awesome.min.css">
<link rel="stylesheet" href="../../BBIC/css/ionicons.min.css">
<link rel="stylesheet" href="../../BBIC/css/AdminLTE.min.css">
<link rel="stylesheet" href="../../BBIC/css/_all-skins.min.css">
</head>
<style type="text/css"> 
.main{ 
margin:0 auto; /* 居中 这个是必须的，，其它的属性非必须 */ 
text-align:center; /* 文字等内容居中 */ 
} 
</style> 
  <body>
    

    <!-- Main content -->
    <div class="main">
    <section class="content">
    
      <div class="error-page">
        <h2 class="headline text-yellow"> 404</h2>

        <div class="error-content">
          <h3><i class="fa fa-warning text-yellow"></i> 哎呦! 页面不存在!.</h3>

          <p>
                     服务器目前找不到此网页.
            你也可以 <a href="../BBIC/login.jsp">返回登陆页面</a> or 试试换个网址。。。嘻嘻.
          </p>

          <form class="search-form">
            <div class="input-group">
              <input type="text" name="search" class="form-control" placeholder="Search">

              <div class="input-group-btn">
                <button type="submit" name="submit" class="btn btn-warning btn-flat"><i class="fa fa-search"></i>
                </button>
              </div>
            </div>
            <!-- /.input-group -->
          </form>
        </div>
        <!-- /.error-content -->
      </div>
      <!-- /.error-page -->
    </section>
    <!-- /.content --> 
    
    </div>
   
  </body>
</html>
