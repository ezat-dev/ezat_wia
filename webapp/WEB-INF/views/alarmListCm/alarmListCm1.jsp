<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

	#ac_comment{
		background-color:white;
		margin-left: 10px;
		padding: 10px;
		border-radius: 10px;
		box-shadow: inset 3px 3px 10px #e6e6e6;
		min-width: 97%;
		max-width: 97%;
		min-height: 95%;
		max-height: 95%;
		vertical-align: top;
		resize:none;
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
  

	<div class="alarm-modal" id="modal" style="display: none;">
        <div class="popup-box">
			<form action="/DHT/alarmListCcf1/upload" method="post" 
					enctype="multipart/form-data" id="alarmForm" class="upload-form">        
	            <div class="popup-beader"></div>
	            <img class="close" src="/DHT/image/alarm_list/close0.png" onclick="modalClose();" style="cursor:pointer;"/>
	            <button onclick="saveComment()" class="ellipse-1" type="button" style="cursor:pointer;">저장</button>
				<button onclick="updateComment()" class="ellipse-2" type="button" style="cursor:pointer;">수정</button>
				<button class="ellipse-3" type="button" onclick="modalClose();" style="cursor:pointer;">닫기</button>
	            <div class="line-1"></div>
	            <div class="frame-1">
	            </div>
	            <div class="frame-2">
	            	<textarea name="ac_comment" id="ac_comment" cols="30" rows="10"></textarea>
				</div>
	            <div class="frame-3">
				    <div class="button-container">
				        <button id="photoButton" class="toggle-button" type="button">이미지</button>
				        <button id="pdfButton" class="toggle-button" type="button">PDF</button>
				    </div>
				    
				    <div id="photoContent" class="content-section">
				        
						    <label for="fileInput" class="file-label">사진파일</label>
						    <input type="file" name="fileInput" accept="image/*" required id="fileInput" class="file-input" />
				        	<img id="imagePreview" style="display:block; max-width: 100%; margin-top: 10px;" /> <!-- 기본 대체 이미지 -->
				    </div>
				    
				    <div id="pdfContent" class="content-section" style="display: none;">
				            <label for="pdfInput" class="file-label">PDF 파일 선택</label>
				            <input type="file" name="pdfInput" accept="application/pdf" required id="pdfInput" class="file-input" />
							<iframe id="pdfPreview" src="" style="display:block; margin-top:10px;" width = "780px" height = "380px"></iframe>
				    </div>
				</div>
			    <input type="text" name="ai_webdir" class="ai_webdir" style="display:none;"/>
			    <input type="text" name="ai_webclass" class="ai_webclass" style="display:none;" />		            
			    <input type="text" name="ai_plcaddr" class="ai_plcaddr" style="display:none;" />
			</form>
            <div class="frame-4"></div>
        </div>
    </div>  
  
  
<script>
//전역변수
var acTag = $(".frame-1").val();
var alarmInterval;
var className;
var uploadImgFileName;
var uploadPdfFileName;	

//로드
$(document).ready(function() {
	$('[class^="alarm-"]').css({
		'padding': '5px'
	});
	
	$("#photoContent").css("display","block");
	$("#photoButton").addClass("active");		
	
	getAlarmText();
	cmAlarmListView();
	alarmInterval = setInterval("cmAlarmListView()", 1000);
});


//이벤트

$("#fileInput").change(function(event){
    const file = event.target.files[0]; // 선택된 파일 가져오기
    if(file){
        const reader = new FileReader(); // FileReader 객체 생성
        reader.onload = function(e) {
        	
        	$("#imagePreview").attr("src",e.target.result); // 미리보기 이미지 소스 업데이트
        	$("#imagePreview").css("display","block");// 미리보기 보이게
        	uploadImgFileName = e.target.result;
        };
        reader.readAsDataURL(file); // 파일을 데이터 URL로 읽기
    }
});

$("#pdfInput").change(function(event){
    const file = event.target.files[0]; // 선택된 파일 가져오기
    if(file){
        const reader = new FileReader(); // FileReader 객체 생성
        reader.onload = function(e) {
        	
        	$("#pdfPreview").attr("src",e.target.result); // 미리보기 이미지 소스 업데이트
        	$("#pdfPreview").css("display","block");// 미리보기 보이게
        	uploadImgFileName = e.target.result;
        };
        reader.readAsDataURL(file); // 파일을 데이터 URL로 읽기
    }		
});

$("#photoButton").on("click",function(){
	$("#photoContent").css("display","block");
	$("#pdfContent").css("display","none");
	$("#photoButton").addClass("active");
	$("#pdfButton").removeClass("active");
});

$("#pdfButton").on("click",function(){
	$("#photoContent").css("display","none");
	$("#pdfContent").css("display","block");
	$("#photoButton").removeClass("active");
	$("#pdfButton").addClass("active");
});

$('[class^="alarm-"]').on("click",function(ev){
	className = ev.currentTarget.className;
	var v_index = className.indexOf("-")+1;
	var v_length = className.length;
	
	var v_value = className.substring(v_index,v_length);
	
	if(v_value <= 105){
		modalOpen();
		cmALarmListPopup();			
	}
	
});


function goToIndex2() {
    window.location.href = '/DHT/alarmListCm2'; 
}


//OPC값 알람 조회
function cmAlarmListView(){
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



//알람팝업 데이터 조회
function cmALarmListPopup(){
	var alarmGroup = "alarm21";
	var alarmClass = className;
	
	$.ajax({
		url:"/DHT/alarmListCm1/alarmPopup",
		type:"post",
		dataType:"json",
		data:{
			"alarmGroup":alarmGroup,
			"alarmClass":alarmClass
		},
		success:function(result){

			var data = result.data;
			
			$(".popup-beader").text("PLC ADDRESS : "+data.ai_plcaddr);
			$(".ai_webdir").val(data.ai_webdir);
			$(".ai_webclass").val(data.ai_webclass);
			$(".ai_plcaddr").val(data.ai_plcaddr);
			$(".frame-1").text(data.ai_plcname);
			$("#ac_comment").text(data.ac_comment);
			
			if(data.ac_filename != null && data.ac_filename != ''){
				$("#imagePreview").attr("src","/fileUploads/img/"+data.ac_filename);
			}
			if(data.ac_pdf_filename != null && data.ac_pdf_filename != ''){
				$("#pdfPreview").attr("src","/fileUploads/pdf/"+data.ac_pdf_filename);
			}
		}
	});
}


//코멘트 저장
function saveComment(){
	var alarmData = new FormData($("#alarmForm")[0]);
	$.ajax({
		url:"/DHT/alarmListCm1/saveComment",
		enctype:"multipart/form-data",
		type:"post",
		contentType: false,
		processData: false,
		dataType: "json",
		data:alarmData,
		success:function(result){
			$("#alarmForm")[0].reset();
			
			alert("등록되었습니다.");
			modalClose();
			
		}
	});
}

//코멘트 수정
function updateComment(){
	var alarmData = new FormData($("#alarmForm")[0]);
	$.ajax({
		url:"/DHT/alarmListCm1/updateComment",
		enctype:"multipart/form-data",
		type:"post",
		contentType: false,
		processData: false,
		dataType: "json",
		data:alarmData,
		success:function(result){
			var data = result.data;
			
			if(data == "updateComment"){
				$("#alarmForm")[0].reset();				
				
				alert("수정되었습니다.");
				modalClose();
			}else if(data == "noSaveComment"){
				alert("코멘트 등록 후 수정바랍니다.");
				
				return;
			}
		}
	});
}	
//모달 열림
function modalOpen(){
	$("#modal").css("display","block");
}


//모달 닫힘
function modalClose(){
	$("#modal").css("display","none");
	$("#imagePrivew").css("display","none");
	$("#imagePrivew").attr("arc","defaultImage.png");
	
	$("#alarmForm")[0].reset();
}


</script>
</body>
</html>