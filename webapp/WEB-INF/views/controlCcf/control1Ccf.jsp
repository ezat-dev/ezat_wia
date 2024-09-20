<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/control_1/vars.css">
  <link rel="stylesheet" href="/DHT/css/control_1/style.css">

      
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
      <div class="hit-box"></div>
      <div class="hit-text-box"></div>
      <div class="hit-text">가열존 히터</div>
      <div class="chim-box-1"></div>
      <div class="chim-text-box-1"></div>
      <div class="chim-text-1">침탄 1존 히터</div>
      <div class="chim-box-2"></div>
      <div class="chim-text-box-2"></div>
      <div class="chim-text-2">침탄 2존 히터</div>
      <div class="diff-box"></div>
      <div class="diff-text-box"></div>
      <div class="diff-text">확산존 히터</div>
      <div class="crack-box-1"></div>
      <div class="crack-text-box-1"></div>
      <div class="crack-text-1">균열 1존 히터</div>
      <div class="crack-box-2"></div>
      <div class="crack-text-box-2"></div>
      <div class="crack-text-2">균열 2존 히터</div>
      <div class="oil-box"></div>
      <div class="oil-text-box"></div>
      <div class="oil-text">유조 히터</div>
      <div class="pre-re-box"></div>
      <div class="pre-re-text-box"></div>
      <div class="pre-re-text">예열로 재가열 버너</div>
      <div class="pq-box"></div>
      <div class="pq-text-box"></div>
      <div class="pq-text">PQ문 제어</div>
      <div class="cp-box"></div>
      <div class="cp-text-box"></div>
      <div class="cp-text">CP 컨트롤러 연결</div>
      <div class="pen-inv-button"></div>
      <div class="pre-pen-box"></div>
      <div class="pre-pen-text-box"></div>
      <div class="pre-pen-text">예열로 펜</div>
      <div class="hit-pen-box"></div>
      <div class="hit-pen-text-box"></div>
      <div class="hit-pen-text">가열존 펜</div>
      <div class="chim-pen-box-1"></div>
      <div class="chim-pen-text-box-1"></div>
      <div class="chim-pen-text-1">침탄 1존 펜</div>
      <div class="chim-pen-box-12"></div>
      <div class="chim-pen-text-box-2"></div>
      <div class="chim-pen-text-2">침탄 2존 펜</div>
      <div class="diff-pen-box"></div>
      <div class="diff-pen-text-box"></div>
      <div class="diff-pen-text">확산존 펜</div>
      <div class="crack-pen-box-1"></div>
      <div class="crack-pen-text-box-1"></div>
      <div class="crack-pen-text-1">균열 1존 펜</div>
      <div class="crack-pen-box-2"></div>
      <div class="crack-pen-text-box-2"></div>
      <div class="crack-pen-text-2">균열 2존 펜</div>
      <div class="oil-agi-box"></div>
      <div class="oil-agi-text-box"></div>
      <div class="oil-agi-text">유조 아지테이터</div>
      <div class="oil-cool-box"></div>
      <div class="oil-cool-text-box"></div>
      <div class="oil-cool-text">유조 쿨링 펌프</div>
      <div class="oil-pump-box"></div>
      <div class="oil-pump-text-box"></div>
      <div class="oil-pump-text">유조 펌프 선택</div>
      <div class="oil-water-box"></div>
      <div class="oil-water-text-box"></div>
      <div class="oil-water-text">유조 쿨링 워터</div>
      <div class="rectangle-70"></div>
      <div class="_1"></div>
      <div class="_2"></div>
      <div class="_3"></div>
      <div class="_4"></div>
      <div class="_5"></div>
      <div class="_6"></div>
      <div class="_7"></div>
      <div class="_8"></div>
      <div class="_9"></div>
      <div class="_10"></div>
      <div class="_11"></div>
      <div class="_12"></div>
      <div class="_13"></div>
      <div class="_14"></div>
      <div class="_15"></div>
      <div class="_16"></div>
      <div class="_17"></div>
      <div class="_18"></div>
      <div class="_19"></div>
      <div class="_20"></div>
      <div class="_21"></div>
      <div class="_22"></div>
      <div class="_23"></div>
      <div class="_24"></div>
      <div class="_25"></div>
      <div class="_26"></div>
      <div class="_27"></div>
      <div class="_28"></div>
      <div class="_29"></div>
      <div class="_30"></div>
      <div class="_31"></div>
      <div class="_32"></div>
      <div class="_33"></div>
      <div class="_34"></div>
      <div class="_35"></div>
      <div class="_36"></div>
      <div class="_37"></div>
      <div class="_38"></div>
      <div class="_39"></div>
      <div class="_40"></div>
      <div class="_41"></div>
      <div class="_42"></div>
      <div class="_43"></div>
      <div class="_44"></div>
      <div class="_45"></div>
      <div class="_46"></div>
      <div class="_47"></div>
    </div>

</body>
</html>