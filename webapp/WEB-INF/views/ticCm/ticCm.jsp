<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/tic_cm/vars.css">
  <link rel="stylesheet" href="/DHT/css/tic_cm/style.css">
  
  
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
    <div class="tic-text-box"></div>
    <div class="tic-text">온도 조절계</div>
    <img class="rins" src="/DHT/image/tic_cm/rins0.png" />
    <div class="sp">설정값</div>
    <div class="pv">현재값</div>
    <div class="rins-sp"></div>
    <div class="rins-pv"></div>
    <div class="rins-text-box"></div>
    <div class="rins-text">후세정기 린스존</div>
    <img class="diffing" src="/DHT/image/tic_cm/diffing0.png" />
    <div class="sp2">설정값</div>
    <div class="pv2">현재값</div>
    <div class="diffing-sp"></div>
    <div class="diffing-pv"></div>
    <div class="diffing-text-box"></div>
    <div class="diffing-text">후세정기 디핑존</div>
    <img class="tem-1" src="/DHT/image/tic_cm/tem-10.png" />
    <div class="sp3">설정값</div>
    <div class="pv3">현재값</div>
    <div class="tem-1-sp"></div>
    <div class="tem-1-pv"></div>
    <div class="tem-1-text-box"></div>
    <div class="tem-1-text">템퍼링로 1존</div>
    <img class="tem-2" src="/DHT/image/tic_cm/tem-20.png" />
    <div class="sp4">설정값</div>
    <div class="pv4">현재값</div>
    <div class="tem-2-sp"></div>
    <div class="tem-2-pv"></div>
    <div class="tem-2-text-box"></div>
    <div class="tem-2-text">템퍼링로 2존</div>
    <img class="tem-3" src="/DHT/image/tic_cm/tem-30.png" />
    <div class="sp5">설정값</div>
    <div class="pv5">현재값</div>
    <div class="tem-3-sp"></div>
    <div class="tem-3-pv"></div>
    <div class="tem-3-text-box"></div>
    <div class="tem-3-text">템퍼링로 3존</div>
  </div>
  
</body>
</html>