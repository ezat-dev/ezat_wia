<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<jsp:include page="../include/pluginpage.jsp"/>
<style>
    html, body {
      height: 100%;
      margin: 0;
      overflow: hidden;
    }
    .container {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      background-color: #f8f9fa;
    }
    .content {
      position: relative;
      text-align: center;
      background-color: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 1700px;
    }
    .date-container {
      display: flex;
      justify-content: right;
      margin-bottom: 20px;
      margin-right: 20px;
    }
    .date-container input {
      margin: 0 10px;
      padding: 12px;
      border: 1px solid #ced4da;
      border-radius: 5px;
      font-size: 16px;
      width: 250px;
    }
    button {
      padding: 10px 20px;
      background-color: #007bff;
      color: white;
      border-radius: 5px;
      cursor: pointer;
      border: none;
      font-size: 16px;
      text-align: center;
      width: 130px;
      margin-left: 20px;
    }
    button:hover {
      background-color: #0056b3;
    }
    #container {
      width: 100%;
      height: 600px;
    }
  </style>
  <title>Trend Chart</title>
</head>
<body>
  <div class="container">
    <div class="content">
      <div class="date-container">
        <input type="datetime-local" id="startDate" placeholder="시작 날짜">
        <input type="datetime-local" id="endDate" placeholder="종료 날짜">
        <button onclick="loadTrendData()">조회</button>
      </div>
      <div id="container"></div>
    </div>
  </div>
  <div class="header"><%@ include file="/WEB-INF/resources/header/index.jsp" %></div>
  <div id="ft"><%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
<script>
/*
//SP값 포함
var seriesNames = ["tf1Pv", "tf2Pv", "tf3Pv", "rinsePv", "dippPv", "tf1Sp", "tf2Sp", "tf3Sp", "rinseSp", "dippSp"];
*/
//SP값 미포함
var seriesNames = ["tf1Pv", "tf2Pv", "tf3Pv", "rinsePv", "dippPv"];
  var chart;
  window.onload = function() {
    var now = new Date();
    var startTime = new Date(now.getTime() - (33 * 60 * 60 * 1000));
    var endTime = new Date(now.getTime() + (9 * 60 * 60 * 1000));

    var nowISO = now.toISOString().slice(0, 16); 
    var startTimeISO = startTime.toISOString().slice(0, 16);
    var endTimeISO = endTime.toISOString().slice(0, 16);

    document.getElementById('startDate').value = startTimeISO;
    document.getElementById('endDate').value = endTimeISO;

    loadTrendData();
  };

  function loadTrendData() {
    var startDate = ($('#startDate').val()).replace("T", " ") + ":00";
    var endDate = ($('#endDate').val()).replace("T", " ") + ":00";

    $.ajax({
      url: "/DHT/trendCm/getData",
      method: "post",
      data: { sdateTime: startDate, edateTime: endDate },
      success: function(result) {

        var seriesData = [];
        var data = result.data;

        seriesNames.forEach(function(name) {
          if (data[name]) {
            var series = {
              name: data[name].name,
              color: data[name].color,
              data: data[name].data.map(function(item) {
                var date = new Date(item[0]);

                var offset = 9 * 60 * 60 * 1000;
                var localDate = new Date(date.getTime() + offset);
                return [localDate.getTime(), item[1]]; // Convert date to Unix timestamp
              })
            };
            seriesData.push(series);
          }
        });

        Highcharts.chart('container', {
             accessibility: { enabled: false },
             title: { text: 'Trend Data' },
             xAxis: {
               type: 'datetime',
               title: { text: '날짜 및 시간' },
               crosshair:{
                  width:1,
                  color:'#E2E2E2',
                  zIndex:5
               },               
               labels: {
                 useHTML: true,
                 formatter: function() {
                   var date = Highcharts.dateFormat('%m-%d', this.value);
                   var time = Highcharts.dateFormat('%H:%M', this.value);
                   return '<span style="font-weight:bold; font-size:10pt;">' + date + '</span><br>' +
                          '<span style="font-size:10pt; color:gray;">' + time + '</span>';
                 },
                 style: {
                   whiteSpace: 'nowrap'
                 }
               }
             },
             tooltip: {
               useHTML: true,
               shared: true, // 여러 시리즈의 데이터를 보여줌
               positioner: function(labelWidth, labelHeight, point) {
                 return { x: point.plotX + this.chart.plotLeft + 15, y: point.plotY + this.chart.plotTop - labelHeight }; // 툴팁 위치 조정
               },
               formatter: function() {
                 var s = '<b>' + Highcharts.dateFormat('%H:%M:%S', this.x) + '</b><br/>'; // 시간 표시
                 this.points.forEach(function(point) {
                   s += '<span style="color:' + point.series.color + '">' + point.series.name + ':</span> ' + point.y + '<br/>'; // 각 시리즈의 데이터 표시
                 });
                 return s;
               },
               borderColor: '#333333',
               shadow: false
             },
             exporting: {
               buttons: {
                 contextButton: {
                   menuItems: ['downloadPNG', 'downloadPDF', 'downloadXLS', 'separator']
                 }
               }
             },
             series: seriesData
           });


      },
      error: function(xhr, status, error) {
        console.error("Ajax request failed:", status, error);
      }
    });
  }
</script>
</body>
</html>
