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
  
  
   <script>
    $(document).ready(function() {
        $('[class^="alarm-"]').css({
        	'padding': '5px'
        });
    });
</script>

<script>
        function goToIndex2() {
            window.location.href = '/DHT/alarm_list/index2.jsp'; 
        }
    </script>
  
  
  
  
</body>
</html>