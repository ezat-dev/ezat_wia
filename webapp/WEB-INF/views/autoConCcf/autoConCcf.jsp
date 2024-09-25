<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/auto_con/vars.css">
  <link rel="stylesheet" href="/DHT/css/auto_con/style.css">
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
        .footer{
  	 margin-top:85px;
   }
   menu, ol, ul {
       list-style-type: none;
       margin: 0;
       padding: 0;
   }
   </style>
  <title>Document</title>
</head>
<body>
  <div class="auto-con">
    <div class="group-3">
      <div class="header"><%@ include file="/WEB-INF/resources/header/index.jsp" %></div>
         <%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
      <div class="main"></div>
      
    </div>

    <div class="auto-big-box-1"></div>
  <div class="sag-0"></div>
  <div class="auto-0"></div>
  <div class="data-0"></div>
  <div class="auto-1"></div>
  <div class="data-1"></div>
  <div class="auto-2"></div>
  <div class="data-2"></div>
  <div class="auto-3"></div>
  <div class="data-3"></div>
  <div class="auto-4"></div>
  <div class="data-4"></div>
  <div class="auto-5"></div>
  <div class="data-5"></div>
  <div class="auto-6"></div>
  <div class="data-6"></div>
  <div class="auto-7"></div>
  <div class="data-7"></div>
  <div class="auto-8"></div>
  <div class="data-8"></div>
  <div class="auto-9"></div>
  <div class="data-9"></div>
  <div class="auto-big-box-2"></div>
  <div class="sag-1"></div>
  <div class="auto-10"></div>
  <div class="data-10"></div>
  <div class="auto-11"></div>
  <div class="data-11"></div>
  <div class="auto-12"></div>
  <div class="data-12"></div>
  <div class="auto-13"></div>
  <div class="data-13"></div>
  <div class="auto-14"></div>
  <div class="data-14"></div>
  <div class="auto-15"></div>
  <div class="data-15"></div>
  <div class="auto-16"></div>
  <div class="data-16"></div>
  <div class="auto-17"></div>
  <div class="data-17"></div>
  <div class="auto-18"></div>
  <div class="data-18"></div>
  <div class="auto-19"></div>
  <div class="data-19"></div>
  <div class="auto-big-box-3"></div>
  <div class="sag-2"></div>
  <div class="auto-20"></div>
  <div class="data-20"></div>
  <div class="auto-21"></div>
  <div class="data-21"></div>
  <div class="auto-22"></div>
  <div class="data-22"></div>
  <div class="auto-23"></div>
  <div class="data-23"></div>
  <div class="auto-big-box-4"></div>
  <div class="sag-3"></div>
  <div class="auto-24"></div>
  <div class="data-24"></div>
  <div class="auto-25"></div>
  <div class="data-25"></div>
  <div class="auto-26"></div>
  <div class="data-26"></div>
  <div class="auto-27"></div>
  <div class="data-27"></div>
  <div class="auto-28"></div>
  <div class="data-28"></div>
  <div class="auto-29"></div>
  <div class="data-29"></div>




<script>

//로드
$(document).ready(function() {
	$('[class^="auto-"]').css({
		'padding': '5px'
	});

	$('[class^="data-"]').css({
		'padding': '5px'
	});
	
	getCcfAutoConText();
	ccfAutoConListView();
	autoConCcfInterval = setInterval("ccfAutoConListView()", 1000);
});

function ccfAutoConListView(){
	$.ajax({
		url:"/DHT/autoConCcf/view",
		type:"post",
		dataType:"json",
		success:function(result){				
			var data = result.multiValues;
			
            for(let key in data){
            	for(let keys in data[key]){
            		var d = data[key];
					
					if(d[keys].action == "c"){
						c(keys, d[keys].value)	
					}else if(d[keys].action == "cv"){
						cv(keys, d[keys].value)
						}
            	}                    	
            }
		}
	});
}

function c(keys, value){
	
	if(value == true){
		$("."+keys).css("background-color","red");
		$("."+keys).css("color","white");
	}else{
		$("."+keys).css("background-color","#f1f1f1");
		$("."+keys).css("color","black");
	}
	
}


function cv(keys, value) {
    if (keys == "sag-0") {
        if (value == true) {
            $("." + keys).text("예열로 자동조건 만족");
            $("." + keys).css({
                "color": "white",
                "background-color": "green",
                "font-size": "20px",
                "text-align": "center",
                "padding" : "10px"
            });
        } else {
            $("." + keys).text("예열로 자동조건 불만족");
            $("." + keys).css({
                "color": "white",
                "background-color": "red",
                "font-size": "20px", 
                "text-align": "center",
                	"padding" : "10px"
            });
        }
    } else if (keys == "sag-1") {
        if (value == true) {
            $("." + keys).text("연속로입구 자동운전 만족");
            $("." + keys).css({
                "color": "white",
                "background-color": "green",
                "font-size": "20px",
                "text-align": "center",
                "padding" : "10px"
            });
        } else {
            $("." + keys).text("연속로입구 자동운전 불만족");
            $("." + keys).css({
                "color": "white",
                "background-color": "red",
                "font-size": "20px", 
                "text-align": "center",
                "padding" : "10px"
            });
        }
    } else if (keys == "sag-2") {
        if (value == true) {
            $("." + keys).text("연속로출구 자동운전 만족");
            $("." + keys).css({
                "color": "white",
                "background-color": "green",
                "font-size": "20px",
                "text-align": "center",
                "padding" : "10px"
            });
        } else {
            $("." + keys).text("연속로출구 자동운전 불만족");
            $("." + keys).css({
                "color": "white",
                "background-color": "red",
                "font-size": "20px",
                "text-align": "center",
                "padding" : "10px"
            });
        }
    } else if (keys == "sag-3") {
        if (value == true) {
            $("." + keys).text("유조 자동운전 만족");
            $("." + keys).css({
                "color": "white",
                "background-color": "green",
                "font-size": "20px",
                "text-align": "center",
                "padding" : "10px"
            });
        } else {
            $("." + keys).text("유조 자동운전 불만족");
            $("." + keys).css({
                "color": "white",
                "background-color": "red",
                "font-size": "20px",
                "text-align": "center",
                "padding" : "10px"
            });
        }
    }
}




function getCcfAutoConText(){
	$.ajax({
		url:"/DHT/autoConCcf/autoConCcfData",
		type:"post",
		dataType:"json",
		data:{},
		success:function(result){
			var data = result.data;
			
            for(let key in data){

            	var n_data = (data[key].ai_webclass).replace("auto","data");
                
            	$("."+data[key].ai_webclass).text(data[key].ai_plcaddr)
            	$("."+n_data).text(data[key].ai_plcname)
            }
		}
	});
}












</script>










</body>
</html>