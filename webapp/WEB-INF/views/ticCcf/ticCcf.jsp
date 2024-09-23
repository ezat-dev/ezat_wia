<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/tic/vars.css">
  <link rel="stylesheet" href="/DHT/css/tic/style.css">
  
  
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
  <div class="group-2">
    <div class="wrapper">
    <div class="header"><%@ include file="/WEB-INF/resources/header/index.jsp" %></div>
       <div id="ft">  <%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
      <div class="main"></div>
     
    </div>
   <div class="tic-line"></div>
    <div class="cp-line"></div>
    <div class="tic-text-box"></div>
    <div class="tic-text">온도 조절계</div>
    <div class="cp-text-box"></div>
    <div class="cp-text">CP 조절계</div>
    <div class="pre-text-box"></div>
    <div class="pre-text">예열로</div>
    <img class="pre" src="/DHT/image/tic/pre0.png" />
    <div class="div">설정값</div>
    <div class="div2">현재값</div>
    <div class="pre-sp"></div>
    <div class="pre-pv"></div>
    <div class="hit-text-box"></div>
    <div class="hit-text">가열존</div>
    <img class="hit" src="/DHT/image/tic/hit0.png" />
    <div class="div3">설정값</div>
    <div class="div4">현재값</div>
    <div class="hit-sp"></div>
    <div class="hit-pv"></div>
    <div class="chim-1-text-box"></div>
    <div class="chim-1-text">침탄 1존</div>
    <img class="chim-1" src="/DHT/image/tic/chim-10.png" />
    <div class="div5">설정값</div>
    <div class="div6">현재값</div>
    <div class="chim-1-sp"></div>
    <div class="chim-1-pv"></div>
    <div class="chim-2-text-box"></div>
    <div class="chim-2-text">침탄 2존</div>
    <img class="chim-2" src="/DHT/image/tic/chim-20.png" />
    <div class="div7">설정값</div>
    <div class="div8">현재값</div>
    <div class="chim-2-sp"></div>
    <div class="chim-2-pv"></div>
    <div class="diff-text-box"></div>
    <div class="diff-text">확산존</div>
    <img class="diff" src="/DHT/image/tic/diff0.png" />
    <div class="div9">설정값</div>
    <div class="div10">현재값</div>
    <div class="diff-sp"></div>
    <div class="diff-pv"></div>
    <div class="crack-1-text-box"></div>
    <div class="crack-1-text">균열 1존</div>
    <img class="crack-1" src="/DHT/image/tic/crack-10.png" />
    <div class="div11">설정값</div>
    <div class="div12">현재값</div>
    <div class="crack-1-sp"></div>
    <div class="crack-1-pv"></div>
    <div class="crack-2-text-box"></div>
    <div class="crack-2-text">균열 2존</div>
    <img class="crack-2" src="/DHT/image/tic/crack-20.png" />
    <div class="div13">설정값</div>
    <div class="div14">현재값</div>
    <div class="crack-2-sp"></div>
    <div class="crack-2-pv"></div>
    <div class="oil-text-box"></div>
    <div class="oil-text">유조</div>
    <img class="oil" src="/DHT/image/tic/oil0.png" />
    <div class="div15">설정값</div>
    <div class="div16">현재값</div>
    <div class="oil-sp"></div>
    <div class="oil-pv"></div>
    <div class="alarm-line"></div>
    <div class="alarm-text-box"></div>
    <div class="alarm-text">온도 경보계</div>
    <div class="pre-text-box-a"></div>
    <div class="pre-text-a">예열로 재가열버너</div>
    <img class="pre-a" src="/DHT/image/tic/pre-a0.png" />
    <div class="div17">설정값</div>
    <div class="div18">현재값</div>
    <div class="pre-sp-a"></div>
    <div class="pre-pv-a"></div>
    <div class="hit-text-box-a"></div>
    <div class="hit-text-a">가열존</div>
    <img class="hit-a" src="/DHT/image/tic/hit-a0.png" />
    <div class="div19">설정값</div>
    <div class="div20">현재값</div>
    <div class="hit-sp-a"></div>
    <div class="hit-pv-a"></div>
    <div class="chim-1-text-box-a"></div>
    <div class="chim-1-text-a">침탄 1존</div>
    <img class="chim-1-a" src="/DHT/image/tic/chim-1-a0.png" />
    <div class="div21">설정값</div>
    <div class="div22">현재값</div>
    <div class="chim-1-sp-a"></div>
    <div class="chim-1-pv-a"></div>
    <div class="chim-2-text-box-a"></div>
    <div class="chim-2-text-a">침탄 2존</div>
    <img class="chim-2-a" src="/DHT/image/tic/chim-2-a0.png" />
    <div class="div23">설정값</div>
    <div class="div24">현재값</div>
    <div class="chim-2-sp-a"></div>
    <div class="chim-2-pv-a"></div>
    <div class="diff-text-box-a"></div>
    <div class="diff-text-a">확산존</div>
    <img class="diff-a" src="/DHT/image/tic/diff-a0.png" />
    <div class="div25">설정값</div>
    <div class="div26">현재값</div>
    <div class="diff-sp-a"></div>
    <div class="diff-pv-a"></div>
    <div class="crack-1-text-box-a"></div>
    <div class="crack-1-text-a">균열 1존</div>
    <img class="crack-1-a" src="/DHT/image/tic/crack-1-a0.png" />
    <div class="div27">설정값</div>
    <div class="div28">현재값</div>
    <div class="crack-1-sp-a"></div>
    <div class="crack-1-pv-a"></div>
    <div class="crack-2-text-box-a"></div>
    <div class="crack-2-text-a">균열 2존</div>
    <img class="crack-2-a" src="/DHT/image/tic/crack-2-a0.png" />
    <div class="div29">설정값</div>
    <div class="div30">현재값</div>
    <div class="crack-2-sp-a"></div>
    <div class="crack-2-pv-a"></div>
    <img class="cp-chim-1" src="/DHT/image/tic/cp-chim-10.png" />
    <div class="cp-chim-1-text-box"></div>
    <div class="cp-chim-1-text">침탄 1존 CP</div>
    <div class="div31">설정값</div>
    <div class="div32">현재값</div>
    <div class="cp-chim-sp"></div>
    <div class="cp-chim-pv"></div>
    <img class="cp-diff" src="/DHT/image/tic/cp-diff0.png" />
    <div class="cp-diff-text-box"></div>
    <div class="cp-diff-text">확산존 CP</div>
    <div class="div33">설정값</div>
    <div class="div34">현재값</div>
    <div class="cp-diff-sp"></div>
    <div class="cp-diff-pv"></div>
    <img class="cp-crack-2" src="/DHT/image/tic/cp-crack-20.png" />
    <div class="cp-crack-2-text-box"></div>
    <div class="cp-crack-2-text">균열 2존 CP</div>
    <div class="div35">설정값</div>
    <div class="div36">현재값</div>
    <div class="cp-crack-2-sp"></div>
    <div class="cp-crack-2-pv"></div>
  </div>
  
</body>
</html>