<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/alarm_list/vars.css">
  <link rel="stylesheet" href="/DHT/css/alarm_list/style2.css">
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
    <img class="page-button-left" src="/DHT/image/alarm_list/page-button-left0.png"  onclick="goToIndex1()"/>
  	<img class="page-button-right" src="/DHT/image/alarm_list/page-button-right0.png"  onclick="goToIndex1()"/>
    <div class="alarm-big-box-1"></div>
  <div class="alarm-1"></div>
  <div class="alarm-2"></div>
  <div class="alarm-3"></div>
  <div class="alarm-4">세정기 기기 마그네틱 스위치 동작이상</div>
  <div class="alarm-5">소려로 기기 마그네틱 스위치 동작이상</div>
  <div class="alarm-6">출구 스톡콘베어 기기 마그네틱 스위치 동작이상</div>
  <div class="alarm-7"></div>
  <div class="alarm-8">자동대차 비상정지</div>
  <div class="alarm-9">자동대차 주행터 인버터 이상</div>
  <div class="alarm-10">자동대차 롤러 이상</div>
  <div class="alarm-11">자동대차 주행위치 오버런 (전진)</div>
  <div class="alarm-12">자동대차 주행위치 오버런 (후진)</div>
  <div class="alarm-13">자동대차 안전 범퍼센서 이상 (전진)</div>
  <div class="alarm-14">자동대차 안전 범퍼센서 이상 (후진)</div>
  <div class="alarm-15"></div>
  <div class="alarm-16"></div>
  <div class="alarm-17"></div>
  <div class="alarm-18"></div>
  <div class="alarm-19"></div>
  <div class="alarm-20"></div>
  <div class="alarm-21"></div>
  <div class="alarm-big-box-2"></div>
  <div class="alarm-22"></div>
  <div class="alarm-23"></div>
  <div class="alarm-24"></div>
  <div class="alarm-25"></div>
  <div class="alarm-26"></div>
  <div class="alarm-27"></div>
  <div class="alarm-28"></div>
  <div class="alarm-29"></div>
  <div class="alarm-30"></div>
  <div class="alarm-31"></div>
  <div class="alarm-32"></div>
  <div class="alarm-33"></div>
  <div class="alarm-34"></div>
  <div class="alarm-35"></div>
  <div class="alarm-36"></div>
  <div class="alarm-37"></div>
  <div class="alarm-38"></div>
  <div class="alarm-39"></div>
  <div class="alarm-40"></div>
  <div class="alarm-41"></div>
  <div class="alarm-42"></div>
  <div class="alarm-big-box-3"></div>
  <div class="alarm-43"></div>
  <div class="alarm-44"></div>
  <div class="alarm-45"></div>
  <div class="alarm-46"></div>
  <div class="alarm-47"></div>
  <div class="alarm-48"></div>
  <div class="alarm-49"></div>
  <div class="alarm-50"></div>
  <div class="alarm-51"></div>
  <div class="alarm-52"></div>
  <div class="alarm-53"></div>
  <div class="alarm-54"></div>
  <div class="alarm-55"></div>
  <div class="alarm-56"></div>
  <div class="alarm-57"></div>
  <div class="alarm-58"></div>
  <div class="alarm-59"></div>
  <div class="alarm-60"></div>
  <div class="alarm-61"></div>
  <div class="alarm-62"></div>
  <div class="alarm-63"></div>
  <div class="alarm-big-box-4"></div>
  <div class="alarm-64"></div>
  <div class="alarm-65"></div>
  <div class="alarm-66"></div>
  <div class="alarm-67"></div>
  <div class="alarm-68"></div>
  <div class="alarm-69"></div>
  <div class="alarm-70"></div>
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
		ccfAlarmListView();
		alarmInterval = setInterval("ccfAlarmListView()", 1000);
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
			ccfALarmListPopup();			
		}
		
	});
	
  
    function goToIndex1() {
        window.location.href = '/DHT/alarmListCcf1'; 
    }
    
    
    //OPC값 알람 조회
    function ccfAlarmListView(){
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
			url:"/DHT/alarmListCcf2/alarmData",
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
	function ccfALarmListPopup(){
		var alarmGroup = "alarm12";
		var alarmClass = className;
		
		$.ajax({
			url:"/DHT/alarmListCcf2/alarmPopup",
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
			url:"/DHT/alarmListCcf2/saveComment",
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
			url:"/DHT/alarmListCcf2/updateComment",
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