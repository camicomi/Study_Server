<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>
	#container {
	
		width: 770px;
		height: 500px;
	
	}
</style>
</head>
<body>
	<!-- ex01.jsp  -->
	<h1>Chart</h1>
	
	<div id="container"></div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/series-label.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>
	<script>
	
	Highcharts.chart('container', {

	    title: {
	        text: '2023년 체중 변화',
	        align: 'center'
	    },

	    subtitle: {
	        text: '작년 한해동안의 몸무게 변화를 기록합니다.',
	        align: 'center'
	    },

	    // Y축
	    yAxis: {
	        title: {
	            text: '몸무게(kg)'
	        }
	    },

	    xAxis: {
	        accessibility: {
	            rangeDescription: ''
	        }
	    },

	    // 범례
	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },

	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            },
	            pointStart: 1
	        }
	    },

	    // 중요 
	    series: [{
	        name: '홍길동',
	        data: [75, 74, 76, 73, 72, 70, 68, 66, 67, 70, 75, 80]
	    },
	    {
	        name: '아무개',
	        data: [68, 66, 73, 64, 70, 69, 67, 66, 63, 60, 62, 55]
	    }],

	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }

	});

	
	
	</script>
</body>
</html>