<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/overview_2/vars.css">
  <link rel="stylesheet" href="/DHT/css/overview_2/style.css">
  
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
  <div class="overview-2">
    <div class="group-1">
      <div class="header"><%@ include file="/WEB-INF/resources/header/index.jsp" %></div>
	  <div id="ft">  <%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
      <div class="footer"></div>
      <div class="main"></div>
       </div>
    <img class="cm-2-1-1" src="/DHT/image/overview_2/cm-2-1-10.png" />
    <img class="elevator-1" src="/DHT/image/overview_2/elevator-10.png" />
    <img class="elevator-2" src="/DHT/image/overview_2/elevator-20.png" />
    <img class="elevator-3" src="/DHT/image/overview_2/elevator-30.png" />
    <img class="tong-1" src="/DHT/image/overview_2/tong-10.png" />
    <img class="tong-2" src="/DHT/image/overview_2/tong-20.png" />
    <img class="tong-3" src="/DHT/image/overview_2/tong-30.png" />
    <img class="tong-4" src="/DHT/image/overview_2/tong-40.png" />
    <img class="tong-5" src="/DHT/image/overview_2/tong-50.png" />
    <img class="tong-6" src="/DHT/image/overview_2/tong-60.png" />
    <img class="tong-7" src="/DHT/image/overview_2/tong-70.png" />
    <img class="tong-8" src="/DHT/image/overview_2/tong-80.png" />
    <img class="tong-9" src="/DHT/image/overview_2/tong-90.png" />
    <img class="tong-10" src="/DHT/image/overview_2/tong-100.png" />
    <!-- <img class="tong-11" src="/DHT/image/overview_2/tong-110.png" /> -->
    <img class="tong-12" src="/DHT/image/overview_2/tong-120.png" />
    <img class="tong-13" src="/DHT/image/overview_2/tong-130.png" />
    <img class="tong-14" src="/DHT/image/overview_2/tong-140.png" />
    <img class="tong-15" src="/DHT/image/overview_2/tong-150.png" />
    <img class="tong-16" src="/DHT/image/overview_2/tong-160.png" />
    <img class="tong-17" src="/DHT/image/overview_2/tong-170.png" />
    <img class="tong-18" src="/DHT/image/overview_2/tong-180.png" />
    <img class="green-up-1" src="/DHT/image/overview_2/green-up-10.png" />
    <img class="green-down-1" src="/DHT/image/overview_2/green-down-10.png" />
    <img class="green-up-2" src="/DHT/image/overview_2/green-up-20.png" />
    <img class="green-down-2" src="/DHT/image/overview_2/green-down-20.png" />
    <img class="green-up-3" src="/DHT/image/overview_2/green-up-30.png" />
    <img class="green-down-3" src="/DHT/image/overview_2/green-down-30.png" />
    <img class="green-up-4" src="/DHT/image/overview_2/green-up-40.png" />
    <img class="green-down-4" src="/DHT/image/overview_2/green-down-40.png" />
    <img class="green-up-5" src="/DHT/image/overview_2/green-up-50.png" />
    <img class="green-down-5" src="/DHT/image/overview_2/green-down-50.png" />
    <img class="hose" src="/DHT/image/overview_2/hose0.png" />
    <img class="lamp-red-1" src="/DHT/image/overview_2/lamp-red-10.png" />
    <img class="lamp-green-1" src="/DHT/image/overview_2/lamp-green-10.png" />
    <img class="pen-rol-1" src="/DHT/image/overview_2/pen-rol-10.png" />
    <img class="lamp-red-2" src="/DHT/image/overview_2/lamp-red-20.png" />
    <img class="lamp-green-2" src="/DHT/image/overview_2/lamp-green-20.png" />
    <img class="pen-rol-2" src="/DHT/image/overview_2/pen-rol-20.png" />
    <img class="lamp-red-3" src="/DHT/image/overview_2/lamp-red-30.png" />
    <img class="lamp-green-3" src="/DHT/image/overview_2/lamp-green-30.png" />
    <img class="pen-rol-3" src="/DHT/image/overview_2/pen-rol-30.png" />
    <img class="lamp-red-4" src="/DHT/image/overview_2/lamp-red-40.png" />
    <img class="lamp-green-4" src="/DHT/image/overview_2/lamp-green-40.png" />
    <img class="moter-red-1" src="/DHT/image/overview_2/moter-red-10.png" />
    <img class="moter-green-1" src="/DHT/image/overview_2/moter-green-10.png" />
    <img class="moter-red-2" src="/DHT/image/overview_2/moter-red-20.png" />
    <img class="moter-green-2" src="/DHT/image/overview_2/moter-green-20.png" />
    <img class="moter-red-3" src="/DHT/image/overview_2/moter-red-30.png" />
    <img class="moter-green-3" src="/DHT/image/overview_2/moter-green-30.png" />
    <img class="moter-red-4" src="/DHT/image/overview_2/moter-red-40.png" />
    <img class="moter-green-4" src="/DHT/image/overview_2/moter-green-40.png" />
    <img class="moter-red-5" src="/DHT/image/overview_2/moter-red-50.png" />
    <img class="moter-green-5" src="/DHT/image/overview_2/moter-green-50.png" />
    <img class="moter-red-6" src="/DHT/image/overview_2/moter-red-60.png" />
    <img class="moter-green-6" src="/DHT/image/overview_2/moter-green-60.png" />
    <img class="moter-red-7" src="/DHT/image/overview_2/moter-red-70.png" />
    <img class="moter-green-7" src="/DHT/image/overview_2/moter-green-70.png" />
    <img class="moter-red-8" src="/DHT/image/overview_2/moter-red-80.png" />
    <img class="moter-green-8" src="/DHT/image/overview_2/moter-green-80.png" />
    <img class="bupum-red-3" src="/DHT/image/overview_2/bupum-red-30.png" />
    <img class="bupum-green-3" src="/DHT/image/overview_2/bupum-green-30.png" />
    <img class="bupum-yellow-3" src="/DHT/image/overview_2/bupum-yellow-30.png" />
    <img class="moter-red-9" src="/DHT/image/overview_2/moter-red-90.png" />
    <img class="moter-green-9" src="/DHT/image/overview_2/moter-green-90.png" />
    <img class="moter-red-10" src="/DHT/image/overview_2/moter-red-100.png" />
    <img class="moter-green-10" src="/DHT/image/overview_2/moter-green-100.png" />
    <div class="door-green-1"></div>
    <div class="door-yellow-1"></div>
    <div class="door-red-1"></div>
    <div class="door-green-2"></div>
    <div class="door-yellow-2"></div>
    <div class="door-red-2"></div>
    <div class="door-green-3"></div>
    <div class="door-yellow-3"></div>
    <div class="door-red-3"></div>
    <div class="door-green-4"></div>
    <div class="door-yellow-4"></div>
    <div class="door-red-4"></div>
    <div class="door-green-5"></div>
    <div class="door-yellow-5"></div>
    <div class="door-red-5"></div>
    <img class="yello-left-1" src="/DHT/image/overview_2/yello-left-10.png" />
    <img class="yello-left-2" src="/DHT/image/overview_2/yello-left-20.png" />
    <img class="yello-left-3" src="/DHT/image/overview_2/yello-left-30.png" />
    <img class="yello-left-4" src="/DHT/image/overview_2/yello-left-40.png" />
    <img class="yello-left-5" src="/DHT/image/overview_2/yello-left-50.png" />
    <img class="yello-left-6" src="/DHT/image/overview_2/yello-left-60.png" />
    <img class="yello-left-7" src="/DHT/image/overview_2/yello-left-70.png" />
    <img class="yello-left-8" src="/DHT/image/overview_2/yello-left-80.png" />
    <img class="yello-left-9" src="/DHT/image/overview_2/yello-left-90.png" />
    <img class="yello-right-1" src="/DHT/image/overview_2/yello-right-10.png" />
    <img class="yello-left-10" src="/DHT/image/overview_2/yello-left-100.png" />
    <img class="yello-left-11" src="/DHT/image/overview_2/yello-left-110.png" />
    <img class="yello-right-2" src="/DHT/image/overview_2/yello-right-20.png" />
    <img class="flu-1" src="/DHT/image/overview_2/flu-10.png" />
    <img class="sensor-red-1" src="/DHT/image/overview_2/sensor-red-10.png" />
    <img class="sensor-green-1" src="/DHT/image/overview_2/sensor-green-10.png" />
    <img class="sensor-red-2" src="/DHT/image/overview_2/sensor-red-20.png" />
    <img class="sensor-green-2" src="/DHT/image/overview_2/sensor-green-20.png" />
    <img class="sensor-red-3" src="/DHT/image/overview_2/sensor-red-30.png" />
    <img class="sensor-green-3" src="/DHT/image/overview_2/sensor-green-30.png" />
    <img class="sensor-red-4" src="/DHT/image/overview_2/sensor-red-40.png" />
    <img class="sensor-green-4" src="/DHT/image/overview_2/sensor-green-40.png" />
    <div class="process-data-box"></div>
  <div class="process-data-text">공정 데이터</div>
  <div class="process-time-box"></div>
  <div class="process-time-text">공정 시간(분)</div>
  <div class="temperature-box"></div>
  <div class="temperature-text">온도(℃)</div>
  <div class="process-time-sp-text"></div>
  <div class="process-time-pv-text"></div>
  <div class="temperature-sp-text"></div>
  <div class="temperature-pv-text"></div>
  <div class="tem-cool-sp"></div>
  <div class="tem-cool-pv"></div>
  <div class="block-1"></div>
  <div class="block-2"></div>
  <div class="block-3"></div>
  <div class="tem-sp"></div>
  <div class="tem-pv"></div>
  <div class="tem-3-sp"></div>
  <div class="tem-3-pv"></div>
  <div class="tem-2-sp"></div>
  <div class="tem-2-pv"></div>
  <div class="tem-1-sp"></div>
  <div class="tem-1-pv"></div>
  <div class="block-4"></div>
  <div class="air-sp"></div>
  <div class="air-pv"></div>
  <div class="rins-sp"></div>
  <div class="rins-pv"></div>
  <div class="rins-tem-sp"></div>
  <div class="rins-tem-pv"></div>
  <div class="spray-sp"></div>
  <div class="spray-pv"></div>
  <div class="block-5"></div>
  <div class="drain-sp"></div>
  <div class="drain-pv"></div>
  <div class="drain-diping-tem-sp"></div>
  <div class="drain-diping-tem-pv"></div>
  <div class="diping-sp"></div>
  <div class="diping-pv"></div>
  <div class="chim-box"></div>
  <div class="chim-box2"></div>
  <div class="time-sp-text">설정값</div>
  <div class="time-pv-text">현재값</div>
  <div class="tem-sp-text">설정값</div>
  <div class="tem-pv-text">현재값</div>
  <div class="hit-mini-box"></div>
  <div class="hit-mini-text">
    템퍼링로
    <br />
    냉각존
  </div>
  <div class="hit-mini-box2"></div>
  <div class="hit-mini-text2">
    템퍼링로
    <br />
    3존
  </div>
  <div class="hit-mini-box3"></div>
  <div class="hit-mini-text3">
    템퍼링로
    <br />
    2존
  </div>
  <div class="hit-mini-box4"></div>
  <div class="hit-mini-text4">
    템퍼링로
    <br />
    1존
  </div>
  <div class="hit-mini-box5"></div>
  <div class="hit-mini-text5">
    에어
    <br />
    스프레이
  </div>
  <div class="hit-mini-box6"></div>
  <div class="hit-mini-text6">린스</div>
  <div class="hit-mini-box7"></div>
  <div class="hit-mini-text7">스프레이</div>
  <div class="hit-mini-box8"></div>
  <div class="hit-mini-text8">드레인</div>
  <div class="hit-mini-box9"></div>
  <div class="hit-mini-text9">디핑</div>
  <div class="pre-text">템퍼링로</div>
  <div class="pre-text2">후세정기</div>
  <div class="frame-1"></div>
  <div class="rectangle-1"></div>
</div>

</body>
</html>
 