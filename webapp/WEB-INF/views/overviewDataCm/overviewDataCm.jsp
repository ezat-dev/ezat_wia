<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/overview_2_1/vars.css">
  <link rel="stylesheet" href="/DHT/css/overview_2_1/style.css">
	<jsp:include page="../include/pluginpage.jsp"/>
  
  <style>
@keyframes blink-effect {
  50% {
    opacity: 0;
  }
}    
   a,
   button,
   input,
   select,
   h1,
   h2,
   h3,
   h4,
   h5,
   * {
       box-sizing: border-box;
       margin: 0;
       padding: 0;
       border: none;
       text-decoration: none;
       background: none;
   
       -webkit-font-smoothing: antialiased;
   }
   
   menu, ol, ul {
       list-style-type: none;
       margin: 0;
       padding: 0;
   }
        .footer{
  	 margin-top:85px;
   }
   </style>
  <title>Document</title>
</head>
<body>
  <div class="overview-2-1">
    <div class="group-3">
     <div class="header"><%@ include file="/WEB-INF/resources/header/index.jsp" %></div>

      <div id="ft">  <%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
      <div class="main"></div>
       </div>
    <div class="product-data"></div>
  <div class="pro-data-text-box"></div>
  <div class="cycle-text-box"></div>
  <div class="pro-onoff-text-box"></div>
  <div class="cool-text-box"></div>
  <div class="pro-number-text-box"></div>
  <div class="q-time-text-box"></div>
  <div class="pro-data-text">처리품 데이터</div>
  <div class="cycle-text">사이클 번호</div>
  <div class="pro-onoff-text">처리품 유/무</div>
  <div class="cool-text">예비</div>
  <div class="pro-number-text">제품 번호</div>
  <div class="q-time-text">소입 시간</div>
  <div class="pro-data-27"></div>
  <div class="pro-data-26"></div>
  <div class="pro-data-25"></div>
  <div class="pro-data-24"></div>
  <div class="pro-data-23"></div>
  <div class="pro-data-22"></div>
  <div class="pro-data-21"></div>
  <div class="pro-data-20"></div>
  <div class="pro-data-19"></div>
  <div class="pro-data-18"></div>
  <div class="pro-data-17"></div>
  <div class="pro-data-16"></div>
  <div class="pro-data-15"></div>
  <div class="pro-data-14"></div>
  <div class="pro-data-13"></div>
  <div class="pro-data-12"></div>
  <div class="pro-data-11"></div>
  <div class="pro-data-10"></div>
  <div class="pro-data-9"></div>
  <div class="pro-data-8"></div>
  <div class="pro-data-7"></div>
  <div class="pro-data-6"></div>
  <div class="pro-data-5"></div>
  <div class="pro-data-4"></div>
  <div class="pro-data-3"></div>
  <div class="pro-data-2"></div>
  <div class="pro-data-1"></div>
  <div class="pro-data-0"></div>
  <div class="cycle-27"></div>
  <div class="cycle-26"></div>
  <div class="cycle-25"></div>
  <div class="cycle-24"></div>
  <div class="cycle-23"></div>
  <div class="cycle-22"></div>
  <div class="cycle-21"></div>
  <div class="cycle-20"></div>
  <div class="cycle-19"></div>
  <div class="cycle-18"></div>
  <div class="cycle-17"></div>
  <div class="cycle-16"></div>
  <div class="cycle-15"></div>
  <div class="cycle-14"></div>
  <div class="cycle-13"></div>
  <div class="cycle-12"></div>
  <div class="cycle-11"></div>
  <div class="cycle-10"></div>
  <div class="cycle-9"></div>
  <div class="cycle-8"></div>
  <div class="cycle-7"></div>
  <div class="cycle-6"></div>
  <div class="cycle-5"></div>
  <div class="cycle-4"></div>
  <div class="cycle-3"></div>
  <div class="cycle-2"></div>
  <div class="cycle-1"></div>
  <div class="cycle-0"></div>
  <div class="pro-onoff-27"></div>
  <div class="pro-onoff-26"></div>
  <div class="pro-onoff-25"></div>
  <div class="pro-onoff-24"></div>
  <div class="pro-onoff-23"></div>
  <div class="pro-onoff-22"></div>
  <div class="pro-onoff-21"></div>
  <div class="pro-onoff-20"></div>
  <div class="pro-onoff-19"></div>
  <div class="pro-onoff-18"></div>
  <div class="pro-onoff-17"></div>
  <div class="pro-onoff-16"></div>
  <div class="pro-onoff-15"></div>
  <div class="pro-onoff-14"></div>
  <div class="pro-onoff-13"></div>
  <div class="pro-onoff-12"></div>
  <div class="pro-onoff-11"></div>
  <div class="pro-onoff-10"></div>
  <div class="pro-onoff-9"></div>
  <div class="pro-onoff-8"></div>
  <div class="pro-onoff-7"></div>
  <div class="pro-onoff-6"></div>
  <div class="pro-onoff-5"></div>
  <div class="pro-onoff-4"></div>
  <div class="pro-onoff-3"></div>
  <div class="pro-onoff-2"></div>
  <div class="pro-onoff-1"></div>
  <div class="pro-onoff-0"></div>
  <div class="cool-27"></div>
  <div class="cool-26"></div>
  <div class="cool-25"></div>
  <div class="cool-24"></div>
  <div class="cool-23"></div>
  <div class="cool-22"></div>
  <div class="cool-21"></div>
  <div class="cool-20"></div>
  <div class="cool-19"></div>
  <div class="cool-18"></div>
  <div class="cool-17"></div>
  <div class="cool-16"></div>
  <div class="cool-15"></div>
  <div class="cool-14"></div>
  <div class="cool-13"></div>
  <div class="cool-12"></div>
  <div class="cool-11"></div>
  <div class="cool-10"></div>
  <div class="cool-9"></div>
  <div class="cool-8"></div>
  <div class="cool-7"></div>
  <div class="cool-6"></div>
  <div class="cool-5"></div>
  <div class="cool-4"></div>
  <div class="cool-3"></div>
  <div class="cool-2"></div>
  <div class="cool-1"></div>
  <div class="cool-0"></div>
  <div class="pro-number-27"></div>
  <div class="pro-number-26"></div>
  <div class="pro-number-25"></div>
  <div class="pro-number-24"></div>
  <div class="pro-number-23"></div>
  <div class="pro-number-22"></div>
  <div class="pro-number-21"></div>
  <div class="pro-number-20"></div>
  <div class="pro-number-19"></div>
  <div class="pro-number-18"></div>
  <div class="pro-number-17"></div>
  <div class="pro-number-16"></div>
  <div class="pro-number-15"></div>
  <div class="pro-number-14"></div>
  <div class="pro-number-13"></div>
  <div class="pro-number-12"></div>
  <div class="pro-number-11"></div>
  <div class="pro-number-10"></div>
  <div class="pro-number-9"></div>
  <div class="pro-number-8"></div>
  <div class="pro-number-7"></div>
  <div class="pro-number-6"></div>
  <div class="pro-number-5"></div>
  <div class="pro-number-4"></div>
  <div class="pro-number-3"></div>
  <div class="pro-number-2"></div>
  <div class="pro-number-1"></div>
  <div class="pro-number-0"></div>
    <img class="cm-2-1-1" src="/DHT/image/overview_2_1/cm-2-1-10.png" />
    <img class="elevator-1" src="/DHT/image/overview_2_1/elevator-10.png" />
    <img class="elevator-2" src="/DHT/image/overview_2_1/elevator-20.png" />
    <img class="elevator-3" src="/DHT/image/overview_2_1/elevator-30.png" />
    <img class="green-up-1" src="/DHT/image/overview_2_1/green-up-10.png" />
    <img class="green-down-1" src="/DHT/image/overview_2_1/green-down-10.png" />
    <img class="green-up-2" src="/DHT/image/overview_2_1/green-up-20.png" />
    <img class="green-down-2" src="/DHT/image/overview_2_1/green-down-20.png" />
    <img class="green-up-3" src="/DHT/image/overview_2_1/green-up-30.png" />
    <img class="green-down-3" src="/DHT/image/overview_2_1/green-down-30.png" />
    <img class="green-up-4" src="/DHT/image/overview_2_1/green-up-40.png" />
    <img class="green-down-4" src="/DHT/image/overview_2_1/green-down-40.png" />
    <img class="green-up-5" src="/DHT/image/overview_2_1/green-up-50.png" />
    <img class="green-down-5" src="/DHT/image/overview_2_1/green-down-50.png" />
    <img class="hose" src="/DHT/image/overview_2_1/hose0.png" />
    <img class="lamp-red-1" src="/DHT/image/overview_2_1/lamp-red-10.png" />
    <img class="lamp-green-1" src="/DHT/image/overview_2_1/lamp-green-10.png" />
    <img class="pen-rol-1" src="/DHT/image/overview_2_1/pen-rol-10.png" />
    <img class="lamp-red-2" src="/DHT/image/overview_2_1/lamp-red-20.png" />
    <img class="lamp-green-2" src="/DHT/image/overview_2_1/lamp-green-20.png" />
    <img class="pen-rol-2" src="/DHT/image/overview_2_1/pen-rol-20.png" />
    <img class="lamp-red-3" src="/DHT/image/overview_2_1/lamp-red-30.png" />
    <img class="lamp-green-3" src="/DHT/image/overview_2_1/lamp-green-30.png" />
    <img class="pen-rol-3" src="/DHT/image/overview_2_1/pen-rol-30.png" />
    <img class="lamp-red-4" src="/DHT/image/overview_2_1/lamp-red-40.png" />
    <img class="lamp-green-4" src="/DHT/image/overview_2_1/lamp-green-40.png" />
    <img class="moter-red-1" src="/DHT/image/overview_2_1/moter-red-10.png" />
    <img class="moter-green-1" src="/DHT/image/overview_2_1/moter-green-10.png" />
    <img class="moter-red-2" src="/DHT/image/overview_2_1/moter-red-20.png" />
    <img class="moter-green-2" src="/DHT/image/overview_2_1/moter-green-20.png" />
    <img class="moter-red-3" src="/DHT/image/overview_2_1/moter-red-30.png" />
    <img class="moter-green-3" src="/DHT/image/overview_2_1/moter-green-30.png" />
    <img class="moter-red-4" src="/DHT/image/overview_2_1/moter-red-40.png" />
    <img class="moter-green-4" src="/DHT/image/overview_2_1/moter-green-40.png" />
    <img class="moter-red-5" src="/DHT/image/overview_2_1/moter-red-50.png" />
    <img class="moter-green-5" src="/DHT/image/overview_2_1/moter-green-50.png" />
    <img class="moter-red-6" src="/DHT/image/overview_2_1/moter-red-60.png" />
    <img class="moter-green-6" src="/DHT/image/overview_2_1/moter-green-60.png" />
    <img class="moter-red-7" src="/DHT/image/overview_2_1/moter-red-70.png" />
    <img class="moter-green-7" src="/DHT/image/overview_2_1/moter-green-70.png" />
    <img class="moter-red-8" src="/DHT/image/overview_2_1/moter-red-80.png" />
    <img class="moter-green-8" src="/DHT/image/overview_2_1/moter-green-80.png" />
    <img class="bupum-red-3" src="/DHT/image/overview_2_1/bupum-red-30.png" />
    <img class="bupum-green-3" src="/DHT/image/overview_2_1/bupum-green-30.png" />
    <img class="bupum-yellow-3" src="/DHT/image/overview_2_1/bupum-yellow-30.png" />
    <img class="moter-red-9" src="/DHT/image/overview_2_1/moter-red-90.png" />
    <img class="moter-green-9" src="/DHT/image/overview_2_1/moter-green-90.png" />
    <img class="moter-red-10" src="/DHT/image/overview_2_1/moter-red-100.png" />
    <img class="moter-green-10" src="/DHT/image/overview_2_1/moter-green-100.png" />
    <div class="door-green-1"></div>
    <div class="door-yellow-1"></div>
    <div class="door-red-1"></div>
    <div class="door-green-2"></div>
    <div class="door-yellow-2"></div>
    <div class="door-red-2"></div>
    <div class="door-green-3"></div>
    <div class="door-yellow-3"></div>
    <div class="door-red-3"></div>
    <div class="door-green-4"></div>
    <div class="door-yellow-4"></div>
    <div class="door-red-4"></div>
    <div class="door-green-5"></div>
    <div class="door-yellow-5"></div>
    <div class="door-red-5"></div>
    <img class="yello-left-1" src="/DHT/image/overview_2_1/yello-left-10.png" />
    <img class="yello-left-2" src="/DHT/image/overview_2_1/yello-left-20.png" />
    <img class="yello-left-3" src="/DHT/image/overview_2_1/yello-left-30.png" />
    <img class="yello-left-4" src="/DHT/image/overview_2_1/yello-left-40.png" />
    <img class="yello-left-5" src="/DHT/image/overview_2_1/yello-left-50.png" />
    <img class="yello-left-6" src="/DHT/image/overview_2_1/yello-left-60.png" />
    <img class="yello-left-7" src="/DHT/image/overview_2_1/yello-left-70.png" />
    <img class="yello-left-8" src="/DHT/image/overview_2_1/yello-left-80.png" />
    <img class="yello-left-9" src="/DHT/image/overview_2_1/yello-left-90.png" />
    <img class="yello-right-1" src="/DHT/image/overview_2_1/yello-right-10.png" />
    <img class="yello-left-10" src="/DHT/image/overview_2_1/yello-left-100.png" />
    <img class="yello-left-11" src="/DHT/image/overview_2_1/yello-left-110.png" />
    <img class="yello-right-2" src="/DHT/image/overview_2_1/yello-right-20.png" />
    <img class="flu-1" src="/DHT/image/overview_2_1/flu-10.png" />
    <img class="sensor-red-1" src="/DHT/image/overview_2_1/sensor-red-10.png" />
    <img class="sensor-green-1" src="/DHT/image/overview_2_1/sensor-green-10.png" />
    <img class="sensor-red-2" src="/DHT/image/overview_2_1/sensor-red-20.png" />
    <img class="sensor-green-2" src="/DHT/image/overview_2_1/sensor-green-20.png" />
    <img class="sensor-red-3" src="/DHT/image/overview_2_1/sensor-red-30.png" />
    <img class="sensor-green-3" src="/DHT/image/overview_2_1/sensor-green-30.png" />
    <img class="sensor-red-4" src="/DHT/image/overview_2_1/sensor-red-40.png" />
    <img class="sensor-green-4" src="/DHT/image/overview_2_1/sensor-green-40.png" />
    <div class="rectangle-1"></div>
    <div class="q-time-27"></div>
    <div class="q-time-26"></div>
    <div class="q-time-25"></div>
    <div class="q-time-24"></div>
    <div class="q-time-23"></div>
    <div class="q-time-22"></div>
    <div class="q-time-21"></div>
    <div class="q-time-20"></div>
    <div class="q-time-19"></div>
    <div class="q-time-18"></div>
    <div class="q-time-17"></div>
    <div class="q-time-16"></div>
    <div class="q-time-15"></div>
    <div class="q-time-14"></div>
    <div class="q-time-13"></div>
    <div class="q-time-12"></div>
    <div class="q-time-11"></div>
    <div class="q-time-10"></div>
    <div class="q-time-9"></div>
    <div class="q-time-8"></div>
    <div class="q-time-7"></div>
    <div class="q-time-6"></div>
    <div class="q-time-5"></div>
    <div class="q-time-4"></div>
    <div class="q-time-3"></div>
    <div class="q-time-2"></div>
    <div class="q-time-1"></div>
    <div class="q-time-0"></div>
    <div class="pro-data-text-0">0</div>
    <div class="pro-data-text-1">1</div>
    <div class="pro-data-text-2">2</div>
    <div class="pro-data-text-3">3</div>
    <div class="pro-data-text-4">4</div>
    <div class="pro-data-text-5">5</div>
    <div class="pro-data-text-6">6</div>
    <div class="pro-data-text-7">7</div>
    <div class="pro-data-text-8">8</div>
    <div class="pro-data-text-9">9</div>
    <div class="pro-data-text-10">10</div>
    <div class="pro-data-text-11">11</div>
    <div class="pro-data-text-12">12</div>
    <div class="pro-data-text-13">13</div>
    <div class="pro-data-text-14">14</div>
    <div class="pro-data-text-15">15</div>
    <div class="pro-data-text-16">16</div>
    <div class="pro-data-text-17">17</div>
    <div class="pro-data-text-18">18</div>
    <div class="pro-data-text-19">19</div>
    <div class="pro-data-text-20">20</div>
    <div class="pro-data-text-21">21</div>
    <div class="pro-data-text-22">22</div>
    <div class="pro-data-text-23">23</div>
    <div class="pro-data-text-24">24</div>
    <div class="pro-data-text-25">25</div>
    <div class="pro-data-text-26">26</div>
    <div class="pro-data-text-27">27</div>
    <div class="tong-0">0
<!--     	<div class="tong-text-0">0</div> -->
    </div>
    <div class="tong-1">1</div>
    <div class="tong-2">2</div>
    <div class="tong-3">3</div>
    <div class="tong-5">4</div>
    <div class="tong-6">5</div>
    <div class="tong-7">6</div>
    <!-- <div class="tong-8"></div> -->
    <div class="tong-9">7</div>
    <div class="tong-10">8</div>
    <div class="tong-11">9</div>
    <div class="tong-12">10</div>
    <div class="tong-13">11</div>
    <div class="tong-14">12</div>
    <div class="tong-15">13</div>
    <div class="tong-16">14</div>
    <div class="tong-17">15</div>
    <div class="tong-18">16</div>
<!--     
    <div class="tong-text-1">1</div>
    <div class="tong-text-2">2</div>
    <div class="tong-text-3-1">3</div>
    <div class="tong-text-5">4</div>
    <div class="tong-text-6">5</div>
    <div class="tong-text-7">6</div>
<div class="tong-text-8">7</div>
    <div class="tong-text-9">8</div>
    <div class="tong-text-10">9</div>
    <div class="tong-text-11">10</div>
    <div class="tong-text-12">11</div>
    <div class="tong-text-13">12</div>
    <div class="tong-text-14">13</div>
    <div class="tong-text-15">14</div>
    <div class="tong-text-16">15</div>
    <div class="tong-text-17">16</div>
    <div class="tong-text-18">17</div>
 -->    
  </div>

</body>

<script>

//전역변수
var overviewInterval;

//로드
$(document).ready(function() {
	overviewListView();
	overviewInterval = setInterval("overviewListView()", 2000);
});

//이벤트

//OPC값 알람 조회
function overviewListView(){
	$.ajax({
		url:"/DHT/overviewDataCm/view",
		type:"post",
		dataType:"json",
		success:function(result){				
			var data = result.multiValues;
			
          for(let key in data){
          	for(let keys in data[key]){
          		var d = data[key];

					if(d[keys].action == "v"){
						v(keys, d[keys].value);
					}else if(d[keys].action == "c"){
						c(keys, d[keys].value);
					}else if(d[keys].action == "b"){
						b(keys, d[keys].value);
					}else if(d[keys].action == "value"){
						value(keys, d[keys].value);
					}

          	}                    	
          }
		}
	});
}

function v(keys, value){
//	$("."+keys).text(value);
	
	if(value == true){
		$("."+keys).css("display","");
		$("."+keys+" div").css("display","");
	}else{
		$("."+keys).css("display","none");
		$("."+keys+" div").css("display","none");
	}
	
}


function c(keys, value){
//	$("."+keys).text(value);
	
	if(value == true){
		$("."+keys).css("background-color","red");
		$("."+keys).css("color","white");
	}else{
		$("."+keys).css("background-color","green");
		$("."+keys).css("color","black");
	}
	
}

function b(keys, value){
	if(value == true){
		$("."+keys).css("display","");
		$("."+keys).css("animation","blink-effect 1s step-end infinite");
	}else{
		$("."+keys).css("display","none");
		$("."+keys).css("animation","");
	}
	
}

function value(keys, value){
	$("."+keys).text(value);
	$("."+keys).css("display","");
	$("."+keys).css("text-align","center");
	$("."+keys).attr("onclick","popupOpen('"+keys+"')");
}

function popupOpen(keys){
	console.log(keys);
	modalOpen();
}

//모달 열림
function modalOpen(){
	$("#modal").css("display","block");
}


//모달 닫힘
function modalClose(){
	$("#modal").css("display","none");
	
	$("#inputForm")[0].reset();
}

</script>

</html>