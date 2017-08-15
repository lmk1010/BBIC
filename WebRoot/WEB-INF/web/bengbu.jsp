<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <script src="../../BBIC/js/echarts.min.js"></script>
  <script src="../../BBIC/js/bengbu.js"></script>
</head>
  
  <body>
	<section class="content-header">
		<h1>
			蚌埠地区数据统计 <small>预览</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a>
			</li>
			<li><a href="#">Charts</a>
			</li>
			<li class="active">Flot</li>
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

						<h3 class="box-title">全市各网点动态显示</h3>

					<div class="box-body">
						<div id="interactive" style="height: 800px;"></div>
					</div>
				</div>
			</div>
		</div>

	</section>


	<script type="text/javascript"> 
	          

        	 var myChart = echarts.init(document.getElementById('interactive'));
           	 
     	    
         	var data = [
         	            {name: '胜利东路', value: 255},
         	            {name: '前进', value: 62},
         	            {name: '荆山', value: 45},
         	            {name: '淮支', value: 77},
         	            {name: '南岗', value: 141},
         	            {name: '陶山', value: 41},
         	            {name: '长征', value: 41},
         	            {name: '光彩', value: 102},
         	            {name: '解放', value: 320},
         	            {name: '财大', value: 60},
         	            {name: '迎湖', value: 65},
         	            {name: '爱国', value: 88},
         	            {name: '雪华', value: 72},
         	            {name: '交通', value: 72},
         	            {name: '固镇胜利', value: 72},
         	            {name: '固镇刘集', value: 101},
         	            {name: '固镇东关', value: 111},
         	            {name: '固镇杨庙', value: 131},
         	            {name: '固镇何集', value: 151},
         	            {name: '固镇王庄', value: 141},
         	            {name: '固镇磨盘张', value: 171},
         	            {name: '固镇黄园路', value: 221},
         	            {name: '怀远双桥', value: 261},
         	            {name: '怀远万福', value: 261},
         	            {name: '五河双忠', value: 256},
         	            {name: '五河青年', value: 256}
         	            
         	       ];
         	      
         		var geoCoordMap = {
         			'胜利东路' : [ 117.365, 32.939 ],
         			'前进' : [ 117.354, 32.922 ],
         			'荆山' : [ 117.364, 137.35 ],
         			'淮支' : [ 117.363, 32.944 ],
         		    '南岗' : [ 117.355, 32.930 ],
         		    '陶山' : [ 117.334, 32.904 ],
         		    '长征' : [ 117.325, 32.926 ],
         		    '光彩' : [ 117.350, 32.912 ],
         		    '解放' : [ 117.394, 32.947 ],
         		    '财大' : [ 117.425, 32.908 ],
         		    '迎湖' : [ 117.396, 32.926 ],
         		    '爱国' : [ 117.385, 32.939 ],
         		    '雪华' : [ 117.392, 32.934 ],
         		    '交通' : [ 117.377, 32.951 ],
         		    '固镇胜利' : [ 117.310, 33.317 ],
         		    '固镇刘集' : [ 117.484, 33.249 ],
         		    '固镇东关' : [ 117.328, 33.311 ],
         		    '固镇杨庙' : [ 117.241, 33.304 ],
         		    '固镇何集' : [ 117.257, 33.201 ],
         		    '固镇王庄' : [ 117.465, 33.098 ],
         		    '固镇磨盘张' : [ 117.373, 33.106 ],
         		    '固镇黄园路' : [ 117.319, 33.322 ],
         		    '怀远双桥' : [ 116.923, 33.258 ],
         		    '怀远万福' : [ 116.866, 32.971 ],
         		    '五河双忠' : [ 117.898, 33.225 ],
         		    '五河青年' : [ 117.887, 33.148 ]
         		};

         		var convertData = function(data) {
         			var res = [];
         			for ( var i = 0; i < data.length; i++) {
         				var geoCoord = geoCoordMap[data[i].name];
         				if (geoCoord) {
         					res.push({
         						name : data[i].name,
         						value : geoCoord.concat(data[i].value)
         					});
         				}
         			}
         			return res;
         		};

         		option = {
         			backgroundColor : '#404a59',
         			title : {
         				text : '本市所有营业所的营销积分',
         				subtext : 'data from db',
         				sublink : 'http://www.pm25.in',
         				left : 'center',
         				textStyle : {
         					color : '#fff'
         				}
         			},
         			tooltip : {
         				trigger : 'item'
         			},
         			toolbox: {

                         show: true,

                         feature: {

                             mark: { show: true },

                             dataView: { show: true, readOnly: false },

                             restore: { show: true },

                             saveAsImage: { show: true }

                         }

                     },
         			legend : {
         				orient : 'vertical',
         				y : 'bottom',
         				x : 'right',
         				data : [ '营销积分' ],
         				textStyle : {
         					color : '#fff'
         				}
         			},
         			geo : {
         				map : 'bengbu',
         				label : {
         					emphasis : {
         						show : false
         					}
         				},
         				roam : true,
         				itemStyle : {
         					normal : {
         						areaColor : '#323c48',
         						borderColor : '#111'
         					},
         					emphasis : {
         						areaColor : '#2a333d'
         					}
         				}
         			},
         			series : [ {
         				name : '营销积分',
         				type : 'scatter',
         				coordinateSystem : 'geo',
         				data : convertData(data),
         				symbolSize : function(val) {
         					return val[2] / 10;
         				},
         				label : {
         					normal : {
         						formatter : '{b}',
         						position : 'right',
         						show : false
         					},
         					emphasis : {
         						show : true
         					}
         				},
         				itemStyle : {
         					normal : {
         						color : '#ddb926'
         					}
         				}
         			}, {
         				name : 'Top 5',
         				type : 'effectScatter',
         				coordinateSystem : 'geo',
         				data : convertData(data.sort(function(a, b) {
         					return b.value - a.value;
         				}).slice(0, 6)),
         				symbolSize : function(val) {
         					return val[2] / 10;
         				},
         				showEffectOn : 'render',
         				rippleEffect : {
         					brushType : 'stroke'
         				},
         				hoverAnimation : true,
         				label : {
         					normal : {
         						formatter : '{b}',
         						position : 'right',
         						show : true
         					}
         				},
         				itemStyle : {
         					normal : {
         						color : '#f4e925',
         						shadowBlur : 10,
         						shadowColor : '#333'
         					}
         				},
         				zlevel : 1
         			} ]
         		};
         		myChart.setOption(option);
 	
	</script>
  </body>
  
</html>
