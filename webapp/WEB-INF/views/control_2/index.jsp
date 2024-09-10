<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/control_2/vars.css">
  <link rel="stylesheet" href="/DHT/css/control_2/style.css">
  
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
    <div class="group-1">
      <div class="_1"></div>
      <div class="cp-text-box"></div>
      <div class="cp-text">분위기 제어</div>
      <div class="rectangle-43"></div>
      <div class="rectangle-44"></div>
      <div class="oil-agi-box"></div>
      <div class="oil-agi-text-box"></div>
      <div class="oil-agi-text">입구문 점화 파이로트</div>
      <div class="oil-cool-box"></div>
      <div class="oil-cool-text-box"></div>
      <div class="oil-cool-text">입구 배기변 파이로트</div>
      <div class="oil-water-box"></div>
      <div class="oil-water-text-box"></div>
      <div class="oil-water-text">출구 배기변 파이로트</div>
      <div class="rectangle-65"></div>
      <div class="rectangle-66"></div>
      <div class="rectangle-70"></div>
      <div class="oil-water-box2"></div>
      <div class="oil-water-text-box2"></div>
      <div class="oil-water-text2">출구문 점화 파이로트</div>
      <div class="rectangle-71"></div>
      <div class="rectangle-72"></div>
      <div class="rectangle-73"></div>
      <div class="rectangle-59"></div>
      <div class="rectangle-60"></div>
      <div class="rectangle-68"></div>
      <div class="rectangle-61"></div>
      <div class="rectangle-62"></div>
      <div class="rectangle-69"></div>
      <div class="oil-agi-box2"></div>
      <div class="oil-agi-text-box2"></div>
      <div class="oil-agi-text2">균열1존 RX 샷 퍼지</div>
      <div class="oil-cool-box2"></div>
      <div class="oil-cool-text-box2"></div>
      <div class="oil-cool-text2">유조 쿨링 펌프</div>
      <div class="oil-water-box3"></div>
      <div class="oil-water-text-box3"></div>
      <div class="oil-water-text3">유조 쿨링 워터</div>
      <div class="rectangle-74"></div>
      <div class="rectangle-75"></div>
      <div class="rectangle-76"></div>
      <div class="oil-water-box4"></div>
      <div class="oil-water-text-box4"></div>
      <div class="oil-water-text4">유조 쿨링 워터</div>
      <div class="rectangle-77"></div>
      <div class="rectangle-78"></div>
      <div class="rectangle-79"></div>
      <div class="rectangle-80"></div>
      <div class="rectangle-81"></div>
      <div class="rectangle-82"></div>
      <div class="rectangle-83"></div>
      <div class="rectangle-84"></div>
      <div class="rectangle-85"></div>
      <div class="oil-cool-box2"></div>
      <div class="oil-cool-text-box2"></div>
      <div class="oil-cool-text3">균열2존 RX 샷 퍼지</div>
      <div class="oil-water-box3"></div>
      <div class="oil-water-text-box3"></div>
      <div class="oil-water-text5">균열2존 엔리치 샷 퍼지</div>
      <div class="rectangle-86"></div>
      <div class="rectangle-87"></div>
      <div class="rectangle-88"></div>
      <div class="oil-water-box4"></div>
      <div class="oil-water-text-box4"></div>
      <div class="oil-water-text6">균열1존 엔리치 샷 퍼지</div>
      <div class="rectangle-89"></div>
      <div class="rectangle-90"></div>
      <div class="rectangle-91"></div>
      <div class="rectangle-92"></div>
      <div class="rectangle-93"></div>
      <div class="rectangle-94"></div>
      <div class="oil-cool-box3"></div>
      <div class="oil-cool-text-box3"></div>
      <div class="oil-cool-text4">유조 쿨링 펌프</div>
      <div class="oil-water-box5"></div>
      <div class="oil-water-text-box5"></div>
      <div class="oil-water-text7">유조 쿨링 워터</div>
      <div class="rectangle-95"></div>
      <div class="rectangle-96"></div>
      <div class="rectangle-97"></div>
      <div class="oil-water-box6"></div>
      <div class="oil-water-text-box6"></div>
      <div class="oil-water-text8">유조 쿨링 워터</div>
      <div class="rectangle-98"></div>
      <div class="rectangle-99"></div>
      <div class="rectangle-100"></div>
      <div class="rectangle-101"></div>
      <div class="rectangle-102"></div>
      <div class="rectangle-103"></div>
      <div class="_5"></div>
      <div class="oil-cool-text-box3"></div>
      <div class="oil-cool-text5">가열존 LNG 가스</div>
      <div class="_7"></div>
      <div class="oil-water-text-box5"></div>
      <div class="oil-water-text9">유조 질소 가스</div>
      <div class="rectangle-104"></div>
      <div class="rectangle-105"></div>
      <div class="rectangle-106"></div>
      <div class="_6"></div>
      <div class="oil-water-text-box6"></div>
      <div class="oil-water-text10">소입1존 LNG 가스</div>
      <div class="rectangle-107"></div>
      <div class="rectangle-108"></div>
      <div class="rectangle-109"></div>
      <div class="rectangle-110"></div>
      <div class="rectangle-111"></div>
      <div class="rectangle-112"></div>
      <div class="_2"></div>
      <div class="oil-cool-text-box4"></div>
      <div class="oil-cool-text6">분위기 가스 메인</div>
      <div class="rectangle-119"></div>
      <div class="rectangle-120"></div>
      <div class="rectangle-121"></div>
      <div class="oil-water-box7"></div>
      <div class="oil-water-text-box7"></div>
      <div class="oil-water-text11">유조 쿨링 워터</div>
      <div class="rectangle-113"></div>
      <div class="rectangle-114"></div>
      <div class="rectangle-115"></div>
      <div class="oil-water-box8"></div>
      <div class="oil-water-text-box8"></div>
      <div class="oil-water-text12">유조 쿨링 워터</div>
      <div class="rectangle-116"></div>
      <div class="rectangle-117"></div>
      <div class="rectangle-118"></div>
      <div class="_4"></div>
      <div class="oil-water-text-box7"></div>
      <div class="oil-water-text13">질소 가스</div>
      <div class="rectangle-122"></div>
      <div class="rectangle-123"></div>
      <div class="rectangle-124"></div>
      <div class="_3"></div>
      <div class="oil-water-text-box8"></div>
      <div class="oil-water-text14">LNG 가스 메인</div>
      <div class="rectangle-125"></div>
      <div class="rectangle-126"></div>
      <div class="rectangle-127"></div>
      <div class="rectangle-128"></div>
      <div class="rectangle-129"></div>
      <div class="rectangle-130"></div>
      <div class="rectangle-131"></div>
    </div>
  </div>
  
</body>
</html>