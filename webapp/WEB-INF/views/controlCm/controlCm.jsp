<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/control_3/vars.css">
  <link rel="stylesheet" href="/DHT/css/control_3/style.css">
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
  <div class="group-1">
    <div class="wrapper">
      	<div class="header">
      <%@ include file="/WEB-INF/resources/header/index.jsp" %>
       <div id="ft">  <%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
      </div>


      <div class="main"></div>
     
    </div>
    <div class="diffing-hit-box"></div>
  <div class="diffing-hit-text-box"></div>
  <div class="diffing-hit-text">후세정기 디핑존 히터</div>
  <div class="diffing-hit-off"></div>
  <div class="diffing-hit-off-text">꺼짐</div>
  <div class="diffing-hit-on"></div>
  <div class="diffing-hit-on-text">켜짐</div>
  <div class="rins-hit-box"></div>
  <div class="rins-hit-text-box"></div>
  <div class="rins-hit-text">후세정기 린스존 히터</div>
  <div class="rins-hit-off"></div>
  <div class="rins-hit-off-text">꺼짐</div>
  <div class="rins-hit-on"></div>
  <div class="rins-hit-on-text">켜짐</div>
  <div class="tem-1-hit-box"></div>
  <div class="tem-1-hit-text-box"></div>
  <div class="tem-1-hit-text">소려로 1존 히터</div>
  <div class="tem-1-off"></div>
  <div class="tem-1-off-text">꺼짐</div>
  <div class="tem-1-on"></div>
  <div class="tem-1-on-text">켜짐</div>
  <div class="tem-2-box"></div>
  <div class="tem-2-text-box"></div>
  <div class="tem-2-text">소려로 2존 히터</div>
  <div class="tem-2-off"></div>
  <div class="tem-2-off-text">꺼짐</div>
  <div class="tem-2-on"></div>
  <div class="tem-2-on-text">켜짐</div>
  <div class="tem-3-box"></div>
  <div class="tem-3-text-box"></div>
  <div class="tem-3-text">소려로 3존 히터</div>
  <div class="tem-3-off"></div>
  <div class="tem-3-off-text">꺼짐</div>
  <div class="tem-3-on"></div>
  <div class="tem-3-on-text">켜짐</div>
  <div class="tem-1-pen-box"></div>
  <div class="tem-1-pen-text-box"></div>
  <div class="tem-1-pen-text">소려로 1존 팬</div>
  <div class="tem-1-pen-off"></div>
  <div class="tem-1-pen-off-text">꺼짐</div>
  <div class="tem-1-pen-on"></div>
  <div class="tem-1-pen-on-text">켜짐</div>
  <div class="tem-2-pen-box"></div>
  <div class="tem-2-pen-text-box"></div>
  <div class="tem-2-pen-text">소려로 2존 팬</div>
  <div class="tem-2-pen-off"></div>
  <div class="tem-2-pen-off-text">꺼짐</div>
  <div class="tem-2-pen-on"></div>
  <div class="tem-2-pen-on-text">켜짐</div>
  <div class="tem-3-pen-box"></div>
  <div class="tem-3-pen-text-box"></div>
  <div class="tem-3-pen-text">소려로 3존 팬</div>
  <div class="tem-3-pen-off"></div>
  <div class="tem-3-pen-off-text">꺼짐</div>
  <div class="tem-3-pen-on"></div>
  <div class="tem-3-pen-on-text">켜짐</div>
  <div class="diffing-oil-box"></div>
  <div class="diffing-oil-text-box"></div>
  <div class="diffing-oil-text">후세정기 디핑존 오일스키머</div>
  <div class="diffing-oil-manual"></div>
  <div class="diffing-oil-manual-text">수동</div>
  <div class="diffing-oil-auto"></div>
  <div class="diffing-oil-auto-text">자동</div>
  <div class="diffing-oil-off"></div>
  <div class="diffing-oil-off-text">꺼짐</div>
  <div class="rins-oil-box"></div>
  <div class="rins-oil-text-box"></div>
  <div class="rins-oil-text">후세정기 린스존 오일스키머</div>
  <div class="rins-oil-manual"></div>
  <div class="rins-oil-manual-text">수동</div>
  <div class="rins-oil-auto"></div>
  <div class="rins-oil-auto-text">자동</div>
  <div class="rins-oil-off"></div>
  <div class="rins-oil-off-text">꺼짐</div>
</div>
<script>

//전역변수
var controlCmInterval;


//로드
$(document).ready(function() {
	controlCmView();
	controlCmInterval = setInterval("controlCmView()", 1000);
});
	
//OPC값 알람 조회
function controlCmView(){
	$.ajax({
		url:"/DHT/controlCm1/view",
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