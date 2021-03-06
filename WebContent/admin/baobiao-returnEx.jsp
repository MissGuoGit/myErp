<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div>
    年份选择：<select id="yearselect">
                    <option value="2020">2020</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                </select>
    <div id="main" style="width: 600px;height:400px;"></div>
    </div>

    <script src="../js/jquery-1.11.0.js"></script>
    <script src="../js/echarts.min.js"></script>
    <script>
    var myChart = echarts.init(document.getElementById('main'));
    // 指定图表的配置项和数据
    var option = {
		    title: {
		        text: '2020三季度企业退换货报表',
		        subtext: '制作：实训family',
		        left: 'center'
		    },
		    tooltip: {
		        trigger: 'item',
		        formatter: '{a} <br/>{b}: {c} ({d}%)'
		    },
		    legend: {
		        orient: 'vertical',
		        left:20,
		        data: []
		    },
		    series: [
		    {
		            name: '每月占比',
		            type: 'pie',
		            radius: ['50%', '70%'],
		            center: ['50%', '50%'],
		            avoidLabelOverlap: false,
		            label: {
		                show: false,
		                position: 'center'
		            },
		            emphasis: {
		                label: {
		                    show: true,
		                    fontSize: '30',
		                    fontWeight: 'bold'
		                }
		            },
		            labelLine: {
		                show: false
		            },
		            data: []
		            
			}
			]
		};
    myChart.setOption(option);

        function getajaxdata(objyear) {
            $.ajax({
                type: "post",
                url: "../ajax",
                data: { rnum:12, cyear: objyear },
                timeout: 5000,
                dataType: "json",
                async: true,//默认设置为true，所有请求均为异步请求
                //cache：true,//默认为true（当dataType为script时，默认为false）设置为false将不会从浏览器缓存中加载请求信息。
                success: function (data) {
                   //{"datamonths":["1月","2月","3月"],"dataitems":[100,200,150]}
                    var optionhasvalue = {
                		    title: {
                		        text: '2020三季度企业进货成本报表',
                		        subtext: '制作：张三',
                		        left: 'center'
                		    },
                		    tooltip: {
                		        trigger: 'item',
                		        formatter: '{a} <br/>{b}: {c} ({d}%)'
                		    },
                		    legend: {
                		        orient: 'vertical',
                		        left:20,
                		        data: data.data1
                		    },
                		    series: [
                		    {
                		            name: '每月占比',
                		            type: 'pie',
                		            radius: ['50%', '70%'],
                		            center: ['50%', '50%'],
                		            avoidLabelOverlap: false,
                		            label: {
                		                show: false,
                		                position: 'center'
                		            },
                		            emphasis: {
                		                label: {
                		                    show: true,
                		                    fontSize: '30',
                		                    fontWeight: 'bold'
                		                }
                		            },
                		            labelLine: {
                		                show: false
                		            },
                		            data: data.data2
                		            
                			}
                			]
                		};
                    myChart.setOption(optionhasvalue);
                }
            });

        }

        getajaxdata(2020);
        $("#yearselect").change(function () {
            var v = $(this).val();
            getajaxdata(v);
        });
    </script>
</body>
</html>