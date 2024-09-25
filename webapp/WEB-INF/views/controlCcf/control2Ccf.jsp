<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/control_2/vars.css">
  <link rel="stylesheet" href="/DHT/css/control_2/style.css">
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
  <div class="group-2">
    <div class="wrapper">
	<div class="header">
      <%@ include file="/WEB-INF/resources/header/index.jsp" %>
 		<div id="ft">  <%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
      </div>

  

      <div class="main"></div>
     
    </div>
    <div class="main-con-box"></div>
    <div class="main-con-text-box"></div>
    <div class="main-con-text">분위기 제어</div>
    <div class="main-con-off"></div>
    <div class="main-con-off-text">꺼짐</div>
    <div class="main-con-on"></div>
    <div class="main-con-on-text">켜짐</div>
    <div class="rx-gas-box"></div>
    <div class="rx-gas-text-box"></div>
    <div class="rx-gas-text">RX 가스 메인밸브</div>
    <div class="rx-gas-manual"></div>
    <div class="rx-gas-manual-text">수동</div>
    <div class="rx-gas-auto"></div>
    <div class="rx-gas-auto-text">자동</div>
    <div class="rx-gas-off"></div>
    <div class="rx-gas-off-text">꺼짐</div>
    <div class="n-gas-main-box"></div>
    <div class="n-gas-main-text-box"></div>
    <div class="n-gas-main-text">엔리치 가스 메인밸브</div>
    <div class="n-gas-main-manual"></div>
    <div class="n-gas-main-manual-text">수동</div>
    <div class="n-gas-main-auto"></div>
    <div class="n-gas-main-auto-text">자동</div>
    <div class="n-gas-main-off"></div>
    <div class="n-gas-main-off-text">꺼짐</div>
    <div class="n-main-box"></div>
    <div class="n-main-text-box"></div>
    <div class="n-main-text">질소 가스 메인밸브</div>
    <div class="n-main-manual"></div>
    <div class="n-main-manual-text">수동</div>
    <div class="n-main-auto"></div>
    <div class="n-main-auto-text">자동</div>
    <div class="n-main-off"></div>
    <div class="n-main-off-text">꺼짐</div>
    <div class="hit-n-gas-box"></div>
    <div class="hit-n-gas-text-box"></div>
    <div class="hit-n-gas-text">가열존 엔리치 가스</div>
    <div class="hit-n-gas-manual"></div>
    <div class="hit-n-gas-manual-text">수동</div>
    <div class="hit-n-gas-auto"></div>
    <div class="hit-n-gas-auto-text">자동</div>
    <div class="hit-n-gas-off"></div>
    <div class="hit-n-gas-off-text">꺼짐</div>
    <div class="crack-1-n-gas-box"></div>
    <div class="crack-1-n-gas-text-box"></div>
    <div class="crack-1-n-gas-text">균열 1존 엔리치 가스</div>
    <div class="crack-1-n-gas-manual"></div>
    <div class="crack-1-n-gas-manual-text">수동</div>
    <div class="crack-1-n-gas-auto"></div>
    <div class="crack-1-n-gas-auto-text">자동</div>
    <div class="crack-1-n-gas-off"></div>
    <div class="crack-1-n-gas-off-text">꺼짐</div>
    <div class="oil-n-gas-box"></div>
    <div class="oil-n-gas-text-box"></div>
    <div class="oil-n-gas-text">유조 질소 가스</div>
    <div class="oil-n-gas-manual"></div>
    <div class="oil-n-gas-manual-text">수동</div>
    <div class="oil-n-gas-auto"></div>
    <div class="oil-n-gas-auto-text">자동</div>
    <div class="oil-n-gas-off"></div>
    <div class="oil-n-gas-off-text">꺼짐</div>
    <div class="chim-burn-box-1"></div>
    <div class="chim-burn-text-box-1"></div>
    <div class="chim-burn-text-1">침탄로 입구문 파이로트 버너</div>
    <div class="chim-burn-manual-1"></div>
    <div class="chim-burn-manual-1-text">수동</div>
    <div class="chim-burn-auto-1"></div>
    <div class="chim-burn-auto-1-text">자동</div>
    <div class="chim-burn-off-1"></div>
    <div class="chim-burn-off-1-text">꺼짐</div>
    <div class="chim-burn-box-2"></div>
    <div class="chim-burn-text-box-2"></div>
    <div class="chim-burn-text-2">침탄로 배기변 파이로트 버너</div>
    <div class="chim-burn-manual-2"></div>
    <div class="chim-burn-auto-2"></div>
    <div class="chim-burn-off-2"></div>
    <div class="chim-burn-manual-1-text2">수동</div>
    <div class="chim-burn-auto-1-text2">자동</div>
    <div class="chim-burn-off-1-text2">꺼짐</div>
    <div class="oil-burn-box-1"></div>
    <div class="oil-burn-text-box-1"></div>
    <div class="oil-burn-text-1">유조 출구문 파이로트 버너</div>
    <div class="oil-burn-manual-1"></div>
    <div class="oil-burn-manual-1-text">수동</div>
    <div class="oil-burn-auto-1"></div>
    <div class="oil-burn-auto-1-text">자동</div>
    <div class="oil-burn-off-1"></div>
    <div class="oil-burn-off-1-text">꺼짐</div>
    <div class="oil-burn-box-2"></div>
    <div class="oil-burn-text-box-2"></div>
    <div class="oil-burn-text-2">유조 배기변 파이로트 버너</div>
    <div class="oil-burn-manual-2"></div>
    <div class="oil-burn-manual-2-text">수동</div>
    <div class="oil-burn-auto-2"></div>
    <div class="oil-burn-auto-2-text">자동</div>
    <div class="oil-burn-off-2"></div>
    <div class="oil-burn-off-2-text">꺼짐</div>
    <img class="page-button-left" src="/DHT/image/control_1/page-button-left0.png" onclick="ButtonIndex()"/>
  	<img class="page-button-right" src="/DHT/image/control_1/page-button-left0.png" onclick="ButtonIndex()"/>
  </div>
  
  
<script>

  //전역변수
 var controlCcfInterval;
  

 //로드
 $(document).ready(function() {
 	controlCcfView();
 	controlCcfInterval = setInterval("controlCcfView()", 1000);
 });

 	function ButtonIndex() {
 		window.location.href = '/DHT/controlCcf1'; 
 	}
 	
  //OPC값 알람 조회
  function controlCcfView(){
  	$.ajax({
  		url:"/DHT/controlCcf2/view",
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