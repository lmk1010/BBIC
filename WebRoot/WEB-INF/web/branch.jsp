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
						<div id="branch" style="height: 800px;"></div>
					</div>
            </div>
            <!-- /.box-body-->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
    </section>
    <!-- /.content -->
    
    
    <script type="text/javascript">
    var myChart = echarts.init(document.getElementById('branch'));
    
    
    
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

    var convertData = function (data) {
        var res = [];
        for (var i = 0; i < data.length; i++) {
            var geoCoord = geoCoordMap[data[i].name];
            if (geoCoord) {
                res.push({
                    name: data[i].name,
                    value: geoCoord.concat(data[i].value)
                });
            }
        }
        return res;
    };

    var convertedData = [
        convertData(data),
        convertData(data.sort(function (a, b) {
            return b.value - a.value;
        }).slice(0, 6))
    ];


    option = {
        backgroundColor: '#404a59',
        animation: true,
        animationDuration: 1000,
        animationEasing: 'cubicInOut',
        animationDurationUpdate: 1000,
        animationEasingUpdate: 'cubicInOut',
        title: [
            {
                text: '三县一市营销积分',
                subtext: 'data from BBIC',
                sublink: 'www.baidu.com',
                left: 'center',
                textStyle: {
                    color: '#fff'
                }
            },
            {
                id: 'statistic',
                right: 120,
                top: 40,
                width: 100,
                textStyle: {
                    color: '#fff',
                    fontSize: 16
                }
            }
        ],
        toolbox: {
            iconStyle: {
                normal: {
                    borderColor: '#fff'
                },
                emphasis: {
                    borderColor: '#b1e4ff'
                }
            }
        },
        brush: {
            outOfBrush: {
                color: '#abc'
            },
            brushStyle: {
                borderWidth: 2,
                color: 'rgba(0,0,0,0.2)',
                borderColor: 'rgba(0,0,0,0.5)',
            },
            seriesIndex: [0, 1],
            throttleType: 'debounce',
            throttleDelay: 300,
            geoIndex: 0
        },
        geo: {
            map: 'bengbu',
            left: '10',
            right: '35%',
            center: [117.3893200000,32.9154800000],
            zoom: 2.5,
            label: {
                emphasis: {
                    show: false
                }
            },
            roam: true,
            itemStyle: {
                normal: {
                    areaColor: '#323c48',
                    borderColor: '#111'
                },
                emphasis: {
                    areaColor: '#2a333d'
                }
            }
        },
        tooltip : {
            trigger: 'item'
        },
        grid: {
            right: 40,
            top: 100,
            bottom: 40,
            width: '30%'
        },
        xAxis: {
            type: 'value',
            scale: true,
            position: 'top',
            boundaryGap: false,
            splitLine: {show: false},
            axisLine: {show: false},
            axisTick: {show: false},
            axisLabel: {margin: 2, textStyle: {color: '#aaa'}},
        },
        yAxis: {
            type: 'category',
            name: 'TOP 20',
            nameGap: 16,
            axisLine: {show: false, lineStyle: {color: '#ddd'}},
            axisTick: {show: false, lineStyle: {color: '#ddd'}},
            axisLabel: {interval: 0, textStyle: {color: '#ddd'}},
            data: []
        },
        series : [
            {
                name: 'pm2.5',
                type: 'scatter',
                coordinateSystem: 'geo',
                data: convertedData[0],
                symbolSize: function (val) {
                    return Math.max(val[2] / 10, 8);
                },
                label: {
                    normal: {
                        formatter: '{b}',
                        position: 'right',
                        show: false
                    },
                    emphasis: {
                        show: true
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#ddb926'
                    }
                }
            },
            {
                name: 'Top 5',
                type: 'effectScatter',
                coordinateSystem: 'geo',
                data: convertedData[1],
                symbolSize: function (val) {
                    return Math.max(val[2] / 10, 8);
                },
                showEffectOn: 'emphasis',
                rippleEffect: {
                    brushType: 'stroke'
                },
                hoverAnimation: true,
                label: {
                    normal: {
                        formatter: '{b}',
                        position: 'right',
                        show: true
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#f4e925',
                        shadowBlur: 10,
                        shadowColor: '#333'
                    }
                },
                zlevel: 1
            },
            {
                id: 'bar',
                zlevel: 2,
                type: 'bar',
                symbol: 'none',
                itemStyle: {
                    normal: {
                        color: '#ddb926'
                    }
                },
                data: []
            }
        ]
    };


    myChart.on('brushselected', renderBrushed);

    // myChart.setOption(option);

    setTimeout(function () {
        myChart.dispatchAction({
            type: 'brush',
            areas: [
                {
                    geoIndex: 0,
                    brushType: 'polygon',
                    coordRange: [[119.72,34.85],[119.68,34.85],[119.5,34.84],[119.19,34.77],[118.76,34.63],[118.6,34.6],[118.46,34.6],[118.33,34.57],[118.05,34.56],[117.6,34.56],[117.41,34.56],[117.25,34.56],[117.11,34.56],[117.02,34.56],[117,34.56],[116.94,34.56],[116.94,34.55],[116.9,34.5],[116.88,34.44],[116.88,34.37],[116.88,34.33],[116.88,34.24],[116.92,34.15],[116.98,34.09],[117.05,34.06],[117.19,33.96],[117.29,33.9],[117.43,33.8],[117.49,33.75],[117.54,33.68],[117.6,33.65],[117.62,33.61],[117.64,33.59],[117.68,33.58],[117.7,33.52],[117.74,33.5],[117.74,33.46],[117.8,33.44],[117.82,33.41],[117.86,33.37],[117.9,33.3],[117.9,33.28],[117.9,33.27],[118.09,32.97],[118.21,32.7],[118.29,32.56],[118.31,32.5],[118.35,32.46],[118.35,32.42],[118.35,32.36],[118.35,32.34],[118.37,32.24],[118.37,32.14],[118.37,32.09],[118.44,32.05],[118.46,32.01],[118.54,31.98],[118.6,31.93],[118.68,31.86],[118.72,31.8],[118.74,31.78],[118.76,31.74],[118.78,31.7],[118.82,31.64],[118.82,31.62],[118.86,31.58],[118.86,31.55],[118.88,31.54],[118.88,31.52],[118.9,31.51],[118.91,31.48],[118.93,31.43],[118.95,31.4],[118.97,31.39],[118.97,31.37],[118.97,31.34],[118.97,31.27],[118.97,31.21],[118.97,31.17],[118.97,31.12],[118.97,31.02],[118.97,30.93],[118.97,30.87],[118.97,30.85],[118.95,30.8],[118.95,30.77],[118.95,30.76],[118.93,30.7],[118.91,30.63],[118.91,30.61],[118.91,30.6],[118.9,30.6],[118.88,30.54],[118.88,30.51],[118.86,30.51],[118.86,30.46],[118.72,30.18],[118.68,30.1],[118.66,30.07],[118.62,29.91],[118.56,29.73],[118.52,29.63],[118.48,29.51],[118.44,29.42],[118.44,29.32],[118.43,29.19],[118.43,29.14],[118.43,29.08],[118.44,29.05],[118.46,29.05],[118.6,28.95],[118.64,28.94],[119.07,28.51],[119.25,28.41],[119.36,28.28],[119.46,28.19],[119.54,28.13],[119.66,28.03],[119.78,28],[119.87,27.94],[120.03,27.86],[120.17,27.79],[120.23,27.76],[120.3,27.72],[120.42,27.66],[120.52,27.64],[120.58,27.63],[120.64,27.63],[120.77,27.63],[120.89,27.61],[120.97,27.6],[121.07,27.59],[121.15,27.59],[121.28,27.59],[121.38,27.61],[121.56,27.73],[121.73,27.89],[122.03,28.2],[122.3,28.5],[122.46,28.72],[122.5,28.77],[122.54,28.82],[122.56,28.82],[122.58,28.85],[122.6,28.86],[122.61,28.91],[122.71,29.02],[122.73,29.08],[122.93,29.44],[122.99,29.54],[123.03,29.66],[123.05,29.73],[123.16,29.92],[123.24,30.02],[123.28,30.13],[123.32,30.29],[123.36,30.36],[123.36,30.55],[123.36,30.74],[123.36,31.05],[123.36,31.14],[123.36,31.26],[123.38,31.42],[123.46,31.74],[123.48,31.83],[123.48,31.95],[123.46,32.09],[123.34,32.25],[123.22,32.39],[123.12,32.46],[123.07,32.48],[123.05,32.49],[122.97,32.53],[122.91,32.59],[122.83,32.81],[122.77,32.87],[122.71,32.9],[122.56,32.97],[122.38,33.05],[122.3,33.12],[122.26,33.15],[122.22,33.21],[122.22,33.3],[122.22,33.39],[122.18,33.44],[122.07,33.56],[121.99,33.69],[121.89,33.78],[121.69,34.02],[121.66,34.05],[121.64,34.08]]
                }
            ]
        });
    }, 0);


    function renderBrushed(params) {
        var mainSeries = params.batch[0].selected[0];

        var selectedItems = [];
        var categoryData = [];
        var barData = [];
        var maxBar = 30;
        var sum = 0;
        var count = 0;

        for (var i = 0; i < mainSeries.dataIndex.length; i++) {
            var rawIndex = mainSeries.dataIndex[i];
            var dataItem = convertedData[0][rawIndex];
            var pmValue = dataItem.value[2];

            sum += pmValue;
            count++;

            selectedItems.push(dataItem);
        }

        selectedItems.sort(function (a, b) {
            return a.value[2] - b.value[2];
        });

        for (var i = 0; i < Math.min(selectedItems.length, maxBar); i++) {
            categoryData.push(selectedItems[i].name);
            barData.push(selectedItems[i].value[2]);
        }

        this.setOption({
            yAxis: {
                data: categoryData
            },
            xAxis: {
                axisLabel: {show: !!count}
            },
            title: {
                id: 'statistic',
                text: count ? '平均: ' + (sum / count).toFixed(4) : ''
            },
            series: {
                id: 'bar',
                data: barData
            }
        });
    }
    
    myChart.setOption(option);
    </script>
  
  </body>
 
</html>
