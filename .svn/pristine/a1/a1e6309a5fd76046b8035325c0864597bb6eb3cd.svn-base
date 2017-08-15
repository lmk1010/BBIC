<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <script src="js/echarts.min.js"></script>
</head>
  
  <body>
    <section class="content-header">
      <h1>
        蚌埠地区数据统计
        <small>预览</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 主界面</a></li>
        <li><a href="#">营业分析</a></li>
        <li class="active">网点汇总</li>
      </ol>
    </section>
    
    <!--主页面控制器.................................................. -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <!-- interactive chart -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">全市各区动态显示</h3>
            </div>
            <div class="box-body">
              <div id="subbranch" style="height:auto !important; height:500px; min-height:344px;width:auto !important;">
                <!--表格填充位置。。。。。。。。。。。。-->


              </div>
            </div>
            <!-- /.box-body-->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
    </section>
    <!-- /.content -->
    
    <script type="text/javascript">
  //扇形图
    var myChart = echarts.init(document.getElementById('subbranch'));
 
    option = {
    	    tooltip: {
    	        trigger: 'item',
    	        formatter: "{a} <br/>{b}: {c} ({d}%)"
    	    },
    	    legend: {
    	        orient: 'vertical',
    	        x: 'left',
    	        data:[/*'蚌埠','五河','怀远','固镇','龙子湖区','蚌山区','禹会区','淮上区','五河县','怀远县','固镇县'*/]
    	    },
    	    series: [
    	        {
    	            name:'访问来源',
    	            type:'pie',
    	            selectedMode: 'single',
    	            radius: [0, '50%'],

    	            label: {
    	                normal: {
    	                    position: 'inner'
    	                }
    	            },
    	            labelLine: {
    	                normal: {
    	                    show: false
    	                }
    	            },
    	            data:[
    	                  /*
    	                {value:2235, name:'蚌埠'},
    	                {value:679, name:'五河'},
    	                {value:879, name:'怀远'},
    	                {value:479, name:'固镇'}*/
    	                
    	            ]
    	        },
    	        {
    	            name:'访问来源',
    	            type:'pie',
    	            radius: ['65%', '90%'],
    	            data:[ 	 
    	                  /*
    	                {value:764, name:'龙子湖区'},
    	                {value:923, name:'蚌山区'},
    	                {value:248, name:'禹会区'},
    	                {value:300, name:'淮上区'},
    	                {value:679, name:'五河县'},
    	                {value:879, name:'怀远县'},
    	                {value:479, name:'固镇县'},
    	                */
    	            ]
    	        }
    	    ]
    	};
    
    myChart.hideLoading();
    myChart.setOption(option);
    
    
    
    $.ajax({
        type: "get",
        async: true, //同步执行
        url: "../../BBIC/assets/subbranch.json",
        dataType: "json", //返回数据形式为json
        success: function(data){
            console.log(data.inside[0].length);
            for(var i= 0,len=data.inside[0].length;i<len;i++){
           	    var json={};
                var data2=data.inside[0];
                json.name=data.inside[0][i];
                json.value=data.inside[1][i];
                option.series[0].data[i]=json; 
             
            }
            for(var i= 0,len=data.outside[0].length;i<len;i++){
           	    var json={};
                var data2=data.outside[0];
                json.name=data.outside[0][i];
                json.value=data.outside[1][i];
                option.series[1].data[i]=json; 
                 
            }
            for(var i= 0,len=data.lend[0].length;i<len;i++){
           	   
                option.legend.data=data.lend[0];  
            }
            myChart.clear();
            myChart.hideLoading();
            myChart.setOption(option);
        },
        error: function(errorMsg) {
            alert("图表请求数据失败啦!");
        }
    });

    </script>
  </body>
</html>
