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
  <link rel="stylesheet" href="/DHT/css/alarm_list/style.css">
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
    <img class="page-button-left" src="/DHT/image/alarm_list/page-button-left0.png" onclick="goToIndex2()" />
  	<img class="page-button-right" src="/DHT/image/alarm_list/page-button-right0.png" onclick="goToIndex2()" />
    <div class="alarm-big-box-1"></div>
  <div class="alarm-1">PLC 배터리 이상</div>
  <div class="alarm-2">비상정지</div>
  <div class="alarm-3">세정기 싸이클 이상</div>
  <div class="alarm-4">소려로 자동운전 이상</div>
  <div class="alarm-5">출구 스톡콘베어 자동운전 이상</div>
  <div class="alarm-6">자동대차 싸이클 자동운전 이상</div>
  <div class="alarm-7">제품 데이터 이상</div>
  <div class="alarm-8"></div>
  <div class="alarm-9"></div>
  <div class="alarm-10"></div>
  <div class="alarm-11"></div>
  <div class="alarm-12"></div>
  <div class="alarm-13">세정기 디핑존 과열 이상</div>
  <div class="alarm-14">세정기 디핑존 온도 저하 이상</div>
  <div class="alarm-15">세정기 린스존 과열 이상</div>
  <div class="alarm-16">세정기 린스존 온도 저하 이상</div>
  <div class="alarm-17">소려로 1존 과열 이상</div>
  <div class="alarm-18">소려로 1존 온도 저하 이상</div>
  <div class="alarm-19">소려로 2존 과열 이상</div>
  <div class="alarm-20">소려로 2존 온도 저하 이상</div>
  <div class="alarm-21">소려로 3존 과열 이상</div>
  <div class="alarm-big-box-2"></div>
  <div class="alarm-22">소려로 3존 온도 저하 이상</div>
  <div class="alarm-23">세정기 디핑존 액면 이상</div>
  <div class="alarm-24">세정기 린스존 액면 이상</div>
  <div class="alarm-25">세정기 입구 장입 요청 이상</div>
  <div class="alarm-26">출구 스톡콘베어 추출 요청 이상</div>
  <div class="alarm-27">세정기 스프레이 회전기 회전 감지 이상</div>
  <div class="alarm-28">소려로 1존 팬 회전 감지 이상</div>
  <div class="alarm-29">소려로 2존 팬 회전 감지 이상</div>
  <div class="alarm-30">소려로 3존 팬 회전 감지 이상</div>
  <div class="alarm-31">소려로 장입 롤러 회전 감지 이상</div>
  <div class="alarm-32">소려로 내부 롤러(1) 회전 감지 이상</div>
  <div class="alarm-33">소려로 내부 롤러(2) 회전 감지 이상</div>
  <div class="alarm-34">소려로 추출 롤러 회전 감지 이상</div>
  <div class="alarm-35">소려로 장입 롤러 광전센서 이상</div>
  <div class="alarm-36">소려로 로내 롤러(1) 광전센서 이상</div>
  <div class="alarm-37">소려로 로내 롤러(2) 광전센서 이상</div>
  <div class="alarm-38">소려로 추출 롤러 광전센서 이상</div>
  <div class="alarm-39"></div>
  <div class="alarm-40"></div>
  <div class="alarm-41">세정기 디핑존 스위핑 펌프 트립</div>
  <div class="alarm-42">세정기 디핑존 오일스키머 트립</div>
  <div class="alarm-big-box-3"></div>
  <div class="alarm-43">세정기 린스존 스프레이 펌프 트립</div>
  <div class="alarm-44">세정기 린스존 스윕핑 펌프 트립</div>
  <div class="alarm-45">세정기 린스존 오일스키머 트립</div>
  <div class="alarm-46">세정기 린스존 스프레이 노즐 트립</div>
  <div class="alarm-47">세정기 출구 블로워 트립</div>
  <div class="alarm-48">소려로 1존 팬 트립</div>
  <div class="alarm-49">소려로 2존 팬 트립</div>
  <div class="alarm-50">소려로 3존 팬 트립</div>
  <div class="alarm-51">세정기 입구 롤러(1) 트립</div>
  <div class="alarm-52">세정기 입구 롤러(2) 트립</div>
  <div class="alarm-53">세정기 장입 리트리버 트립</div>
  <div class="alarm-54">세정기 추출 리트리버 트립</div>
  <div class="alarm-55">세정기 출구 롤러(1) 트립</div>
  <div class="alarm-56">세정기 출구 롤러(2) 트립</div>
  <div class="alarm-57">소려로 입구 롤러(1) 트립</div>
  <div class="alarm-58">소려로 입구 롤러(2) 트립</div>
  <div class="alarm-59">소려로 장입 롤러 트립</div>
  <div class="alarm-60">소려로 로내 롤러(1) 트립</div>
  <div class="alarm-61">소려로 로내 롤러(2) 트립</div>
  <div class="alarm-62">소려로 추출 롤러 트립</div>
  <div class="alarm-63">소려로 출구 롤러 트립</div>
  <div class="alarm-big-box-4"></div>
  <div class="alarm-64">소려로 출구 리프터 롤러 트립</div>
  <div class="alarm-65">출구 스톡콘베어 입구 롤러 트립</div>
  <div class="alarm-66">출구 스톡콘베어 리트리버 트립</div>
  <div class="alarm-67">출구 스톡콘베어 출구 롤러 트립</div>
  <div class="alarm-68">세정기 상부후드 팬 트립</div>
  <div class="alarm-69">히터부하 MCCB 트립</div>
  <div class="alarm-70">세정기 기기 MCCB 트립</div>
  <div class="alarm-71">소려로 기기 MCCB 트립</div>
  <div class="alarm-72">출구 스톡콘베어 기기 MCCB 트립</div>
  <div class="alarm-73">자동대차 메인전원 MCCB 트립</div>
  <div class="alarm-74">회로 보호기 트립</div>
  <div class="alarm-75"></div>
  <div class="alarm-76"></div>
  <div class="alarm-77">세정기 입구문 & 중간문 동작이상</div>
  <div class="alarm-78">세정기 디핑존 엘리베이터 동작이상</div>
  <div class="alarm-79">세정기 출구문 동작이상</div>
  <div class="alarm-80">세정기 출구챔버 출구문 동작이상</div>
  <div class="alarm-81">소려로 입구문 동작이상</div>
  <div class="alarm-82">소려로 출구문 동작이상</div>
  <div class="alarm-83">세정기 출구챔버 출구문 동작이상</div>
  <div class="alarm-84">소려로 출구 리프터 동작이상</div>
  <div class="alarm-big-box-5"></div>
  <div class="alarm-85"></div>
  <div class="alarm-86"></div>
  <div class="alarm-87"></div>
  <div class="alarm-88"></div>
  <div class="alarm-89">세정기 롤러(1) 구동시간 초과 이상</div>
  <div class="alarm-90">세정기 롤러(2) 구동시간 초과 이상</div>
  <div class="alarm-91">세정기 장입 리트리버 구동시간 초과 이상</div>
  <div class="alarm-92">세정기 추출 리트리버 구동시간 초과 이상</div>
  <div class="alarm-93">세정기 출구 롤러(1) 구동시간 초과 이상</div>
  <div class="alarm-94">세정기 출구 롤러(2) 구동시간 초과 이상</div>
  <div class="alarm-95">소려로 롤러(1) 구동시간 초과 이상</div>
  <div class="alarm-96">소려로 롤러(2) 구동시간 초과 이상</div>
  <div class="alarm-97">소려로 장입 롤러 구동시간 초과 이상</div>
  <div class="alarm-98">소려로 로내 롤러(1) 구동시간 초과 이상</div>
  <div class="alarm-99">소려로 로내 롤러(2) 구동시간 초과 이상</div>
  <div class="alarm-100">소려로 추출 롤러 구동시간 초과 이상</div>
  <div class="alarm-101">소려로 출구 롤러 구동시간 초과 이상</div>
  <div class="alarm-102">소려로 출구 리프터 롤러 구동시간 초과 이상</div>
  <div class="alarm-103">출구 스톡콘베어 입구 롤러 구동시간 초과 이상</div>
  <div class="alarm-104">출구 스톡콘베어 리트리버 구동시간 초과 이상</div>
  <div class="alarm-105">출구 스톡콘베어 출구 롤러 구동시간 초과 이상</div>    

</div>
  
  
  
 
  
   <div class="alarm-modal" id="modal">
        <div class="popup-box">
            <div class="popup-beader"></div>
            <img class="close" src="/DHT/image/alarm_list/close0.png" id="closeModalBtn" />
            <button onclick="saveComment('${alarm.acRegtime}')" class="ellipse-1">저장</button>
			<button class="ellipse-2">수정</button>
			<button class="ellipse-3">닫기</button>
            <div class="line-1"></div>
            <div class="frame-1">
                <c:forEach var="alarm" items="${alarmList}">
                ${alarm.acTag}
            </c:forEach>
            </div>
            <div class="frame-2">
			    <c:forEach var="alarm" items="${alarmList}">
			        <textarea id="acComment_${alarm.acRegtime}" rows="5">${alarm.acComment}</textarea>
			        <%-- <button onclick="saveComment('${alarm.acRegtime}')">저장</button> --%>
   				 </c:forEach>
			</div>
            <div class="frame-3">
			    <form action="${pageContext.request.contextPath}/alarm_list/upload" method="post" enctype="multipart/form-data">
			        <input type="hidden" name="acRegtime" value="${alarm.acRegtime}" /> <!-- 필요한 값을 설정 -->
			        <input type="file" name="file" accept="image/*" required id="fileInput" />
			        <input type="submit" value="업로드" />
			    </form>
    				<img id="imagePreview" src="defaultImage.png" style="display:block; max-width: 100%; margin-top: 10px;" /> <!-- 기본 대체 이미지 -->
			</div>

            <div class="frame-4"></div>
        </div>
    </div>
  
  
  
  
  <script>
	//전역변수
	var acTag = $(".frame-1").val();
	var alarm1Interval;
	var className;
	
	//로드
	$(document).ready(function() {
		$('[class^="alarm-"]').css({
			'padding': '5px'
		});
		
		getAlarmText();
		ccfAlarmList1View();
		alarm1Interval = setInterval("ccfAlarmList1View()", 1000);
	});

//이벤트
	$('[class^="alarm-"]').on("click",function(ev){
		className = ev.currentTarget.className;
		
		if(className != "alarm-list"){
			ccfALarmList1Popup();			
		}
	});

//함수	

	//알람팝업 데이터 조회
	function ccfALarmList1Popup(){
		var alarmGroup = "alarm11";
		var alarmClass = className;
		
	}

    function goToIndex2() {
        window.location.href = '/DHT/alarmListCcf2'; 
    }
    
    
    //OPC값 알람 조회
    function ccfAlarmList1View(){
		$.ajax({
			url:"/DHT/alarmListCcf1/view",
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
//		$("."+keys).text(value);
		
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
			url:"/DHT/alarmListCcf1/alarmData",
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