<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.wia.domain.AlarmList" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/alarm_list/vars.css">
  <link rel="stylesheet" href="/DHT/css/alarm_list/style3.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  
  <style>
 
	

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


  <div class="alarm-list">
    <div class="header"><%@ include file="/WEB-INF/resources/header/index.jsp" %></div>
    <div id="ft"><%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
    <img class="page-button-left" src="/DHT/image/alarm_list/page-button-left0.png" onclick="goToIndex2();"/>
  	<img class="page-button-right" src="/DHT/image/alarm_list/page-button-right0.png" onclick="goToIndex2();"/>
    <div class="alarm-big-box-1"></div>
  <div class="alarm-1">PLC 배터리 이상</div>
  <div class="alarm-2">비상정지</div>
  <div class="alarm-3">예열로 싸이클 이상</div>
  <div class="alarm-4">연속로 싸이클 이상</div>
  <div class="alarm-5">유조 싸이클 이상</div>
  <div class="alarm-6">제품 데이터 이상</div>
  <div class="alarm-7">RX 가스 공급 이상</div>
  <div class="alarm-8">LNG 가스 공급 이상</div>
  <div class="alarm-9">N2 가스 공급 이상</div>
  <div class="alarm-10">본체 냉각수 공급 이상</div>
  <div class="alarm-11">열교환기 냉각수 공급 이상</div>
  <div class="alarm-12"></div>
  <div class="alarm-13">예열로 과열 이상</div>
  <div class="alarm-14">예열로 온도 저하 이상</div>
  <div class="alarm-15">가열존 과열 이상</div>
  <div class="alarm-16">가열존 온도 저하 이상</div>
  <div class="alarm-17">침탄1존 과열 이상</div>
  <div class="alarm-18">침탄1존 온도 저하 이상</div>
  <div class="alarm-19">침탄2존 과열 이상</div>
  <div class="alarm-20">침탄2존 온도 저하 이상</div>
  <div class="alarm-21">확산존 과열 이상</div>
  <div class="alarm-big-box-2"></div>
  <div class="alarm-22" id="openModalBtn" >확산존 온도 저하 이상</div>
  <div class="alarm-23">균열1존 과열 이상</div>
  <div class="alarm-24">균열1존 온도 저하 이상</div>
  <div class="alarm-25">균열2존 과열 이상</div>
  <div class="alarm-26">균열2존 온도 저하 이상</div>
  <div class="alarm-27">연속로 온도 저하 이상 (가스 차단)</div>
  <div class="alarm-28">유조 과열 이상</div>
  <div class="alarm-29">유조 온도 저하 이상</div>
  <div class="alarm-30">예열로 배기 온도 과열 이상</div>
  <div class="alarm-31">예열로 배기 온도 저하 이상</div>
  <div class="alarm-32">침탄2존 CP값 이상 (상한)</div>
  <div class="alarm-33">침탄2존 CP값 이상 (하한)</div>
  <div class="alarm-34">확산존 CP값 이상 (상한)</div>
  <div class="alarm-35">확산존 CP값 이상 (하한)</div>
  <div class="alarm-36">균열2존 CP값 이상 (상한)</div>
  <div class="alarm-37">균열2존 CP값 이상 (하한)</div>
  <div class="alarm-38">가열존 SCR 이상</div>
  <div class="alarm-39">침탄1존 SCR 이상</div>
  <div class="alarm-40">침탄2존 SCR 이상</div>
  <div class="alarm-41">확산존 SCR 이상</div>
  <div class="alarm-42">균열1존 SCR 이상</div>
  <div class="alarm-big-box-3"></div>
  <div class="alarm-43">균열 2존 SCR 이상</div>
  <div class="alarm-44"></div>
  <div class="alarm-45">예열로 팬 인버터 이상</div>
  <div class="alarm-46">가열존 팬 인버터 이상</div>
  <div class="alarm-47">침탄1존 팬 인버터 이상</div>
  <div class="alarm-48">침탄2존 팬 인버터 이상</div>
  <div class="alarm-49">확산존 팬 인버터 이상</div>
  <div class="alarm-50">균열1존 팬 인버터 이상</div>
  <div class="alarm-51">균열2존 팬 인버터 이상</div>
  <div class="alarm-52">유조 교반기 인버터 이상</div>
  <div class="alarm-53">예열로 롤러 인버터 이상</div>
  <div class="alarm-54">가열존 롤러 인버터 이상</div>
  <div class="alarm-55">침탄존 롤러 인버터 이상</div>
  <div class="alarm-56">확산존 롤러 인버터 이상</div>
  <div class="alarm-57">균열1존 롤러 인버터 이상</div>
  <div class="alarm-58">균열2존 롤러 인버터 이상</div>
  <div class="alarm-59">연속로 입구 프레임 커튼 스위치 꺼짐</div>
  <div class="alarm-60">연속로 출구 프레임 커튼 스위치 꺼짐</div>
  <div class="alarm-61">PQ 출구 불꽃 커튼 스위치 꺼짐</div>
  <div class="alarm-62">연속로 입구문 파이로트 이상</div>
  <div class="alarm-63">연속로 입구 배기관 이상</div>
  <div class="alarm-big-box-4"></div>
  <div class="alarm-64">연속로 출구문 파이로트 이상</div>
  <div class="alarm-65">연속로 출구 배기관 이상</div>
  <div class="alarm-66">PQ 출구문 파이로트 이상</div>
  <div class="alarm-67">예열로 버너 메인 가스 공급 이상</div>
  <div class="alarm-68">예열로 버너 메인 에어 공급 이상</div>
  <div class="alarm-69">예열로 파이로트 버너 에어 공급 이상</div>
  <div class="alarm-70">예열로 버너 이상</div>
  <div class="alarm-71"></div>
  <div class="alarm-72">유조 수위 레벨 이상</div>
  <div class="alarm-73">입구 장입 요청 이상</div>
  <div class="alarm-74">유조 출구 추출 요청 이상</div>
  <div class="alarm-75">유조 퀜칭 시간 종료 이상</div>
  <div class="alarm-76"></div>
  <div class="alarm-77">예열로 팬 회전 감지 이상</div>
  <div class="alarm-78">가열존 팬 회전 감지 이상</div>
  <div class="alarm-79">침탄1존 팬 회전 감지 이상</div>
  <div class="alarm-80">침탄2존 팬 회전 감지 이상</div>
  <div class="alarm-81">확산존 팬 회전 감지 이상</div>
  <div class="alarm-82">균열1존 팬 회전 감지 이상</div>
  <div class="alarm-83">균열2존 팬 회전 감지 이상</div>
  <div class="alarm-84">유조 교반기 회전 감지 이상</div>
  <div class="alarm-big-box-5"></div>
  <div class="alarm-85">예열로 롤러 회전 감지 이상</div>
  <div class="alarm-86">가열존 롤러 회전 감지 이상</div>
  <div class="alarm-87">침탄존 롤러 회전 감지 이상</div>
  <div class="alarm-88">확산존 롤러 회전 감지 이상</div>
  <div class="alarm-89">균열1존 롤러 회전 감지 이상</div>
  <div class="alarm-90">균열2존 롤러 회전 감지 이상</div>
  <div class="alarm-91">예열로 롤러 구동 이상</div>
  <div class="alarm-92">가열존 롤러 구동 이상</div>
  <div class="alarm-93">침탄존 롤러 구동 이상</div>
  <div class="alarm-94">확산존 롤러 구동 이상</div>
  <div class="alarm-95">균열1존 롤러 구동 이상</div>
  <div class="alarm-96">균열2존 롤러 구동 이상</div>
  <div class="alarm-97">예열로 처리품감지 이상</div>
  <div class="alarm-98">가열존 처리품감지 이상</div>
  <div class="alarm-99">침탄존 처리품감지 이상</div>
  <div class="alarm-100">확산존 처리품감지 이상</div>
  <div class="alarm-101">균열1존 처리품감지 이상</div>
  <div class="alarm-102">균열2존 처리품감지 이상</div>
  <div class="alarm-103">유조 냉각펌프(1) 트립</div>
  <div class="alarm-104">유조 냉각펌프(2) 트립</div>
  <div class="alarm-105">에열로 후 버너 트립</div>
</div>
  
<script>
//전역변수
var acTag = $(".frame-1").val();
var alarm1Interval;

//로드
$(document).ready(function() {
	$('[class^="alarm-"]').css({
		'padding': '5px'
	});
	
	getAlarmText();
	cmAlarmList1View();
	alarm1Interval = setInterval("cmAlarmList1View()", 1000);
});

function goToIndex2() {
    window.location.href = '/DHT/alarmListCm2'; 
}


//OPC값 알람 조회
function cmAlarmList1View(){
	$.ajax({
		url:"/DHT/alarmListCm1/view",
		type:"post",
		dataType:"json",
		success:function(result){				
			var data = result.multiValues;
			
            for(let key in data){
            	for(let keys in data[key]){
            		var d = data[key];
					
					if(d[keys].action == "c"){
						c(keys, d[keys].value)	
					}
            	}                    	
            }
		}
	});
}

function c(keys, value){
//	$("."+keys).text(value);
	
	if(value == true){
		$("."+keys).css("background-color","red");
		$("."+keys).css("color","white");
	}else{
		$("."+keys).css("background-color","#f1f1f1");
		$("."+keys).css("color","black");
	}
	
}

function getAlarmText(){
	$.ajax({
		url:"/DHT/alarmListCm1/alarmData",
		type:"post",
		dataType:"json",
		data:{},
		success:function(result){
			var data = result.data;
			
            for(let key in data){
            	$("."+data[key].ai_webclass).text(data[key].ai_plcname)
            }
		}
	});
}
</script>
</body>
</html>