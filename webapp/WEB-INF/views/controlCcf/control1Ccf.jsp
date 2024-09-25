<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/control_1/vars.css">
  <link rel="stylesheet" href="/DHT/css/control_1/style.css">
<jsp:include page="../include/pluginpage.jsp"/>
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
       <div class="header">
       <%@ include file="/WEB-INF/resources/header/index.jsp" %>
      </div>

  
  <div class="group-4">
    <div class="group-3">

       <div id="ft">  <%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
      <div class="main"></div>
   
    </div>
    <div class="pre-box"></div>
    <div class="pre-text-box"></div>
    <div class="pre-text">예열로 버너</div>
    <div class="pre-off"></div>
    <div class="pre-off-text">꺼짐</div>
    <div class="pre-on"></div>
    <div class="pre-on-text">켜짐</div>
    <div class="hit-box"></div>
    <div class="hit-text-box"></div>
    <div class="hit-text">가열존 히터</div>
    <div class="hit-off"></div>
    <div class="hit-off-text">꺼짐</div>
    <div class="hit-on"></div>
    <div class="hit-on-text">켜짐</div>
    <div class="chim-box-1"></div>
    <div class="chim-text-box-1"></div>
    <div class="chim-text-1">침탄 1존 히터</div>
    <div class="chim-1-off"></div>
    <div class="chim-1-off-text">꺼짐</div>
    <div class="chim-1-on"></div>
    <div class="chim-1-on-text">켜짐</div>
    <div class="chim-box-2"></div>
    <div class="chim-text-box-2"></div>
    <div class="chim-text-2">침탄 2존 히터</div>
    <div class="chim-2-off"></div>
    <div class="chim-2-off-text">꺼짐</div>
    <div class="chim-2-on"></div>
    <div class="chim-2-on-text">켜짐</div>
    <div class="diff-box"></div>
    <div class="diff-text-box"></div>
    <div class="diff-text">확산존 히터</div>
    <div class="diff-off"></div>
    <div class="diff-off-text">꺼짐</div>
    <div class="diff-on"></div>
    <div class="diff-on-text">켜짐</div>
    <div class="crack-box-1"></div>
    <div class="crack-text-box-1"></div>
    <div class="crack-text-1">균열 1존 히터</div>
    <div class="crack-1-off"></div>
    <div class="crack-1-off-text">꺼짐</div>
    <div class="crack-1-on"></div>
    <div class="crack-1-on-text">켜짐</div>
    <div class="crack-box-2"></div>
    <div class="crack-text-box-2"></div>
    <div class="crack-text-2">균열 2존 히터</div>
    <div class="crack-2-off"></div>
    <div class="crack-2-off-text">꺼짐</div>
    <div class="crack-2-on"></div>
    <div class="crack-2-on-text">켜짐</div>
    <div class="oil-box"></div>
    <div class="oil-text-box"></div>
    <div class="oil-text">유조 히터</div>
    <div class="oil-off"></div>
    <div class="oil-off-text">꺼짐</div>
    <div class="oil-on"></div>
    <div class="oil-on-text">켜짐</div>
    <div class="pre-re-box"></div>
    <div class="pre-re-text-box"></div>
    <div class="pre-re-text">예열로 재가열 버너</div>
    <div class="pre-re-manual"></div>
    <div class="pre-re-manual-text">수동</div>
    <div class="pre-re-auto"></div>
    <div class="pre-re-auto-text">자동</div>
    <div class="pre-re-off"></div>
    <div class="pre-re-off-text">꺼짐</div>
    <div class="pen-inv-button"></div>
    <div class="pen-inv-button-text">팬 인버터 설정</div>
    <div class="pre-pen-box"></div>
    <div class="pre-pen-text-box"></div>
    <div class="pre-pen-text">예열로 펜</div>
    <div class="pre-pen-off"></div>
    <div class="pre-pen-off-text">꺼짐</div>
    <div class="pre-pen-on"></div>
    <div class="pre-pen-on-text">켜짐</div>
    <div class="hit-pen-box"></div>
    <div class="hit-pen-text-box"></div>
    <div class="hit-pen-text">가열존 펜</div>
    <div class="hit-pen-off"></div>
    <div class="hit-pen-on"></div>
    <div class="hit-pen-off-text">꺼짐</div>
    <div class="hit-pen-on-text">켜짐</div>
    <div class="chim-pen-box-1"></div>
    <div class="chim-pen-text-box-1"></div>
    <div class="chim-pen-text-1">침탄 1존 펜</div>
    <div class="chim-pen-box-12"></div>
    <div class="chim-1-pen-off"></div>
    <div class="chim-1-pen-off-text">꺼짐</div>
    <div class="chim-1-pen-on"></div>
    <div class="chim-1-pen-on-text">켜짐</div>
    <div class="chim-pen-text-box-2"></div>
    <div class="chim-pen-text-2">침탄 2존 펜</div>
    <div class="chim-2-pen-off"></div>
    <div class="chim-2-pen-off-text">꺼짐</div>
    <div class="chim-2-pen-on"></div>
    <div class="chim-2-pen-on-text">켜짐</div>
    <div class="diff-pen-box"></div>
    <div class="diff-pen-text-box"></div>
    <div class="diff-pen-text">확산존 펜</div>
    <div class="diff-pen-off"></div>
    <div class="diff-pen-off-text">꺼짐</div>
    <div class="diff-pen-on"></div>
    <div class="diff-pen-on-text">켜짐</div>
    <div class="crack-pen-box-1"></div>
    <div class="crack-pen-text-box-1"></div>
    <div class="crack-pen-text-1">균열 1존 펜</div>
    <div class="crack-1-pen-off"></div>
    <div class="crack-1-pen-off-text">꺼짐</div>
    <div class="crack-1-pen-on"></div>
    <div class="crack-1-pen-on-text">켜짐</div>
    <div class="crack-pen-box-2"></div>
    <div class="crack-pen-text-box-2"></div>
    <div class="crack-pen-text-2">균열 2존 펜</div>
    <div class="crack-2-pen-off"></div>
    <div class="crack-2-pen-off-text">꺼짐</div>
    <div class="crack-2-pen-on"></div>
    <div class="crack-2-pen-on-text">켜짐</div>
    <div class="oil-agi-box"></div>
    <div class="oil-agi-text-box"></div>
    <div class="oil-agi-text">유조 아지테이터</div>
    <div class="agi-manual"></div>
    <div class="agi-manual-text">수동</div>
    <div class="agi-auto"></div>
    <div class="agi-auto-text">자동</div>
    <div class="agi-off"></div>
    <div class="agi-off-text">꺼짐</div>
    <div class="oil-cool-box"></div>
    <div class="oil-cool-text-box"></div>
    <div class="oil-cool-text">유조 냉각 펌프</div>
    <div class="cool-pump-manual"></div>
    <div class="cool-pump-manual-text">수동</div>
    <div class="cool-pump-auto"></div>
    <div class="cool-pump-auto-text">자동</div>
    <div class="cool-pump-off"></div>
    <div class="cool-pump-off-text">꺼짐</div>
    <div class="oil-pump-box"></div>
    <div class="oil-pump-text-box"></div>
    <div class="oil-pump-text">유조 펌프 선택</div>
    <div class="oil-pump-1"></div>
    <div class="oil-pump-2"></div>
    <div class="oil-pump-1-text">1번</div>
    <div class="oil-pump-2-text">2번</div>
    <div class="cool-water-box"></div>
    <div class="cool-water-text-box"></div>
    <div class="cool-water-text">유조 냉각수</div>
    <div class="cool-water-manual"></div>
    <div class="cool-water-manual-text">수동</div>
    <div class="cool-water-auto"></div>
    <div class="cool-water-auto-text">자동</div>
    <div class="cool-water-off"></div>
    <div class="cool-water-off-text">꺼짐</div>
    <img class="page-button-left" src="/DHT/image/control_1/page-button-left0.png" onclick="ButtonIndex2()"/>
  	<img class="page-button-right" src="/DHT/image/control_1/page-button-left0.png" onclick="ButtonIndex2()"/>
  </div>
  
  
<script>

 //전역변수
var controlCcfInterval;
 

//로드
$(document).ready(function() {
	controlCcfView();
	controlCcfInterval = setInterval("controlCcfView()", 1000);
});

	function ButtonIndex2() {
		window.location.href = '/DHT/controlCcf2'; 
	}
	
 //OPC값 알람 조회
 function controlCcfView(){
 	$.ajax({
 		url:"/DHT/controlCcf1/view",
 		type:"post",
 		dataType:"json",
 		success:function(result){				
 			var data = result.multiValues;
 			
             for(let key in data){
             	for(let keys in data[key]){
             		var d = data[key];

 					if(d[keys].action == "v"){
 						v(keys, d[keys].value);
 					}
             	}
             }
 		}
 	});
 }

function v(keys, value){
	
	if(keys.indexOf("off") != -1 || keys.indexOf("oil-pump-1") != -1){
		//꺼짐일때, 유조펌프 1번일때
		if(value == true){
			$("."+keys).css("background-color","#FF0000");
			$("."+keys+"-text").css("color","#FFFFFF");
		}else{
			$("."+keys).css("background-color","#f9f4f4");		
			$("."+keys+"-text").css("color","#000000");
		}		
	}else if(keys.indexOf("on") != -1 ||keys.indexOf("auto") != -1 || keys.indexOf("oil-pump-2") != -1){
		//켜짐일때, 자동일때, 유조펌프 2번일때
		if(value == true){			
			$("."+keys).css("background-color","#00FF00");
			$("."+keys+"-text").css("color","#FF0000");
		}else{
			$("."+keys).css("background-color","#f9f4f4");		
			$("."+keys+"-text").css("color","#000000");
		}
	}else if(keys.indexOf("manual") != -1){
		//수동일때
		if(value == true){			
			$("."+keys).css("background-color","#FFFF24");
			$("."+keys+"-text").css("color","#FF0000");
		}else{
			$("."+keys).css("background-color","#f9f4f4");		
			$("."+keys+"-text").css("color","#000000");
		}		
	}

}

</script>

</body>
</html>