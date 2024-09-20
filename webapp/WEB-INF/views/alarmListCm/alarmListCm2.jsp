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
    <img class="page-button-left" src="/DHT/image/alarm_list/page-button-left0.png" onclick="goToIndex1();"/>
  	<img class="page-button-right" src="/DHT/image/alarm_list/page-button-right0.png" onclick="goToIndex1();"/>
    <div class="alarm-big-box-1"></div>
  <div class="alarm-1">프레스 퀜칭 푸셔 트립</div>
  <div class="alarm-2">프레스 퀜칭 리프터 트립</div>
  <div class="alarm-3">예열로 버너 에어 블러워 트립</div>
  <div class="alarm-4">예열로 입구롤러(1) 트립</div>
  <div class="alarm-5">예열로 입구롤러(2) 트립</div>
  <div class="alarm-6">예열로 입구롤러(3) 트립</div>
  <div class="alarm-7">예열로 입구 리프터 롤러 트립</div>
  <div class="alarm-8">예열로 장입 롤러 트립</div>
  <div class="alarm-9">연속로 입구 리르터 롤러 트립</div>
  <div class="alarm-10">침탄존 장입 롤러 트립</div>
  <div class="alarm-11">확산존 추출 롤러 트립</div>
  <div class="alarm-12">유조 엘리베이터 체인 트립</div>
  <div class="alarm-13">유조 출구문 트립</div>
  <div class="alarm-14">유조 출구 롤러(1) 트립</div>
  <div class="alarm-15">유조 출구 롤러(2) 트립</div>
  <div class="alarm-16"></div>
  <div class="alarm-17"></div>
  <div class="alarm-18"></div>
  <div class="alarm-19"></div>
  <div class="alarm-20">예열로 디바이스 MCCB 트립</div>
  <div class="alarm-21">연속로 디바이스 MCCB 트립</div>
  <div class="alarm-big-box-2"></div>
  <div class="alarm-22">유조 디바이스 MCCB 트립</div>
  <div class="alarm-23">회로 보호기 트립</div>
  <div class="alarm-24">연속로 입구 프레임 커튼 점화 이상</div>
  <div class="alarm-25">연속로 출구 프레임 커튼 점화 이상</div>
  <div class="alarm-26">PQ 출구 프레임 커튼 점화 이상</div>
  <div class="alarm-27"></div>
  <div class="alarm-28">예열로 입구 리프터 이상</div>
  <div class="alarm-29">예열로 입구문 이상</div>
  <div class="alarm-30">예열로 입구문 이동 리프터 이상</div>
  <div class="alarm-31">에열로 출구문 이상</div>
  <div class="alarm-32">예열로 출구문 이동 리프터 이상</div>
  <div class="alarm-33">연속로 입구 리프터 이상</div>
  <div class="alarm-34">연속로 입구문 이상</div>
  <div class="alarm-35">침탄1존 입구문 이상</div>
  <div class="alarm-36">균열1존 입구문 이상</div>
  <div class="alarm-37">균열2존 입구문 이상</div>
  <div class="alarm-38">유조 입구문 이상</div>
  <div class="alarm-39">유조 엘리베이터 이상</div>
  <div class="alarm-40">유조 출구문 이상</div>
  <div class="alarm-41">프레스 퀜칭 출구문 이상</div>
  <div class="alarm-42"></div>
  <div class="alarm-big-box-3"></div>
  <div class="alarm-43"></div>
  <div class="alarm-44">예열로 입구 롤러(1) 오버런</div>
  <div class="alarm-45">예열로 입구 롤러(2) 오버런</div>
  <div class="alarm-46">예열로 입구 롤러(3) 오버런</div>
  <div class="alarm-47">예열로 입구 리프터 롤러 오버런</div>
  <div class="alarm-48">예열로 투입 롤러 오버런</div>
  <div class="alarm-49">예열로 로내 롤러 오버런</div>
  <div class="alarm-50">연속로 입구 리프터 롤러 오버런</div>
  <div class="alarm-51">가열존 로내 롤러 오버런</div>
  <div class="alarm-52">침탄존 투입 롤러 오버런</div>
  <div class="alarm-53">침탄존 클러치 오버런</div>
  <div class="alarm-54">침탄존 로내 롤러 오버런</div>
  <div class="alarm-55">확산존 로내 롤러 오버런</div>
  <div class="alarm-56">확산존 추출 롤러 오버런</div>
  <div class="alarm-57">확산존 클러치 오버런</div>
  <div class="alarm-58">균열1존 로내 롤러 오버런</div>
  <div class="alarm-59">균열2존 로내 롤러 오버런</div>
  <div class="alarm-60">유조 엘리베이터 체인 오버런</div>
  <div class="alarm-61">유조 출구 롤러(1) 오버런</div>
  <div class="alarm-62">유조 출구 롤러(2) 오버런</div>
  <div class="alarm-63">프레스 퀜칭 푸셔 이상</div>
  <div class="alarm-big-box-4"></div>
  <div class="alarm-64">프레스 퀜칭 리프터 이상</div>
  <div class="alarm-65"></div>
  <div class="alarm-66"></div>
  <div class="alarm-67"></div>
  <div class="alarm-68">예열로 마그네틱 접촉기 이상</div>
  <div class="alarm-69">연속로 마그네틱 접촉기 이상</div>
  <div class="alarm-70">유조 마그네틱 접초기 이상</div>
  <div class="alarm-71"></div>
  <div class="alarm-72"></div>
  <div class="alarm-73"></div>
  <div class="alarm-74"></div>
  <div class="alarm-75"></div>
  <div class="alarm-76"></div>
  <div class="alarm-77"></div>
  <div class="alarm-78"></div>
  <div class="alarm-79"></div>
  <div class="alarm-80"></div>
  <div class="alarm-81"></div>
  <div class="alarm-82"></div>
  <div class="alarm-83"></div>
  <div class="alarm-84"></div>
  <div class="alarm-big-box-5"></div>
  <div class="alarm-85"></div>
  <div class="alarm-86"></div>
  <div class="alarm-87"></div>
  <div class="alarm-88"></div>
  <div class="alarm-89"></div>
  <div class="alarm-90"></div>
  <div class="alarm-91"></div>
  <div class="alarm-92"></div>
  <div class="alarm-93"></div>
  <div class="alarm-94"></div>
  <div class="alarm-95"></div>
  <div class="alarm-96"></div>
  <div class="alarm-97"></div>
  <div class="alarm-98"></div>
  <div class="alarm-99"></div>
  <div class="alarm-100"></div>
  <div class="alarm-101"></div>
  <div class="alarm-102"></div>
  <div class="alarm-103"></div>
  <div class="alarm-104"></div>
  <div class="alarm-105"></div>
</div>
  
  
  
<script>
//전역변수
var acTag = $(".frame-1").val();
var alarm2Interval;

//로드
$(document).ready(function() {
	$('[class^="alarm-"]').css({
		'padding': '5px'
	});
	
	getAlarmText();
	cmAlarmList2View();
	alarm2Interval = setInterval("cmAlarmList2View()", 1000);
});


function goToIndex1() {
    window.location.href = '/DHT/alarmListCm1'; 
}


//OPC값 알람 조회
function cmAlarmList2View(){
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
		url:"/DHT/alarmListCm2/alarmData",
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