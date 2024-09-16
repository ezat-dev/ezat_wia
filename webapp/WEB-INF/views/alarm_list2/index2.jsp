<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ace.domain.AlarmList" %>
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
    <img class="page-button-left" src="/DHT/image/alarm_list/page-button-left0.png" />
  	<img class="page-button-right" src="/DHT/image/alarm_list/page-button-right0.png" />
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
  
  
  
  <script>
    $(document).ready(function() {
        $('[class^="alarm-"]').css({
        	'padding': '5px'
        });
    });
</script>
  
  <%-- <div class="alarm-modal" id="modal">
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
			        <button onclick="saveComment('${alarm.acRegtime}')">저장</button>
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
  document.addEventListener('DOMContentLoaded', function() {
	    const modal = document.getElementById('modal');
	    const openModalBtn = document.getElementById('openModalBtn');
	    const closeModalBtn = document.getElementById('closeModalBtn');
	    const fileInput = document.getElementById('fileInput'); // 파일 입력 요소
	    const imagePreview = document.getElementById('imagePreview'); // 미리보기 이미지 요소

	    // 모달 열기
	    openModalBtn.addEventListener('click', function() {
	        modal.style.display = 'block'; // 모달을 보이게
	    });

	    // 모달 닫기
	    closeModalBtn.addEventListener('click', function() {
	        modal.style.display = 'none'; // 모달을 숨기기
	        imagePreview.style.display = 'none'; // 미리보기 숨기기
	        imagePreview.src = 'defaultImage.png'; // 대체 이미지로 초기화
	    });

	    // 모달 외부 클릭 시 닫기 (선택 사항)
	    window.addEventListener('click', function(event) {
	        if (event.target === modal) {
	            modal.style.display = 'none'; // 모달을 숨기기
	            imagePreview.style.display = 'none'; // 미리보기 숨기기
	            imagePreview.src = 'defaultImage.png'; // 대체 이미지로 초기화
	        }
	    });

	    // 페이지 로드 시 세션 스토리지에서 파일 정보 가져오기
	    const savedFileName = sessionStorage.getItem('savedFileName');
	    if (savedFileName) {
	        imagePreview.src = savedFileName; // 이전에 선택한 파일을 미리보기로 설정
	        imagePreview.style.display = 'block'; // 미리보기 보이게
	    }

	    // 파일 선택 시 미리보기 업데이트 및 세션 스토리지에 파일 이름 저장
	    fileInput.addEventListener('change', function(event) {
	        const file = event.target.files[0]; // 선택된 파일 가져오기
	        if (file) {
	            const reader = new FileReader(); // FileReader 객체 생성
	            reader.onload = function(e) {
	                imagePreview.src = e.target.result; // 미리보기 이미지 소스 업데이트
	                imagePreview.style.display = 'block'; // 미리보기 보이게
	                sessionStorage.setItem('savedFileName', e.target.result); // 파일 데이터 URL을 세션 스토리지에 저장
	            };
	            reader.readAsDataURL(file); // 파일을 데이터 URL로 읽기
	        } else {
	            imagePreview.src = 'defaultImage.png'; // 대체 이미지로 설정
	            imagePreview.style.display = 'block'; // 대체 이미지 보이게
	            sessionStorage.removeItem('savedFileName'); // 세션 스토리지에서 파일 이름 삭제
	        }
	    });
	});


var acTag = $(".frame-1").val();

//acComment 저장 함수
  function saveComment(acRegtime) {
    const commentInput = $('#acComment_' + acRegtime);
    const newComment = commentInput.val();
    var acTag = $(".frame-1").text().trim();

    $.ajax({
        url: '${pageContext.request.contextPath}/alarm_list/updateComment',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({
        	acTag: acTag,
            acComment: newComment
        }),
        success: function() {
            alert("저장 성공");
        },
        error: function() {
            alert("저장 실패.");
        }
    });

    console.log("acTag:", acTag);
    console.log("acComment:", newComment); 
}



  </script>
   --%>
  
  
  
</body>
</html>