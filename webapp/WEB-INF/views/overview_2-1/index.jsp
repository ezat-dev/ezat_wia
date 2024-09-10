<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/overview_2_1/vars.css">
  <link rel="stylesheet" href="/DHT/css/overview_2_1/style.css">
  
  
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
  <div class="overview-2-1">
    <div class="group-3">
     <div class="header"><%@ include file="/WEB-INF/resources/header/index.jsp" %></div>

      <div id="ft">  <%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
      <div class="main"></div>
       </div>
    <div class="product-data"></div>
    <div class="pro-data-text-box"></div>
    <div class="cycle-text-box"></div>
    <div class="pro-onoff-text-box"></div>
    <div class="cool-text-box"></div>
    <div class="pq-text-box"></div>
    <div class="pro-number-text-box"></div>
    <div class="q-time-text-box"></div>
    <div class="pro-data-text">처리품 데이터</div>
    <div class="cycle-text">사이클 번호</div>
    <div class="pro-onoff-text">제품 유/무</div>
    <div class="cool-text">냉각방식 선택</div>
    <div class="pq-text">PQ제품 개수</div>
    <div class="pro-number-text">제품 번호</div>
    <div class="q-time-text">소입 시간</div>
    <div class="pro-data-27"></div>
    <div class="pro-data-26"></div>
    <div class="pro-data-25"></div>
    <div class="pro-data-24"></div>
    <div class="pro-data-23"></div>
    <div class="pro-data-22"></div>
    <div class="pro-data-21"></div>
    <div class="pro-data-20"></div>
    <div class="pro-data-19"></div>
    <div class="pro-data-18"></div>
    <div class="pro-data-17"></div>
    <div class="pro-data-16"></div>
    <div class="pro-data-15"></div>
    <div class="pro-data-14"></div>
    <div class="pro-data-13"></div>
    <div class="pro-data-12"></div>
    <div class="pro-data-11"></div>
    <div class="pro-data-10"></div>
    <div class="pro-data-9"></div>
    <div class="pro-data-8"></div>
    <div class="pro-data-7"></div>
    <div class="pro-data-6"></div>
    <div class="pro-data-5"></div>
    <div class="pro-data-4"></div>
    <div class="pro-data-3"></div>
    <div class="pro-data-2"></div>
    <div class="pro-data-1"></div>
    <div class="pro-data-0"></div>
    <div class="cycle-27"></div>
    <div class="cycle-26"></div>
    <div class="cycle-25"></div>
    <div class="cycle-24"></div>
    <div class="cycle-23"></div>
    <div class="cycle-22"></div>
    <div class="cycle-21"></div>
    <div class="cycle-20"></div>
    <div class="cycle-19"></div>
    <div class="cycle-18"></div>
    <div class="cycle-17"></div>
    <div class="cycle-16"></div>
    <div class="cycle-15"></div>
    <div class="cycle-14"></div>
    <div class="cycle-13"></div>
    <div class="cycle-12"></div>
    <div class="cycle-11"></div>
    <div class="cycle-10"></div>
    <div class="cycle-9"></div>
    <div class="cycle-8"></div>
    <div class="cycle-7"></div>
    <div class="cycle-6"></div>
    <div class="cycle-5"></div>
    <div class="cycle-4"></div>
    <div class="cycle-3"></div>
    <div class="cycle-2"></div>
    <div class="cycle-1"></div>
    <div class="cycle-0"></div>
    <div class="pro-onoff-27"></div>
    <div class="pro-onoff-26"></div>
    <div class="pro-onoff-25"></div>
    <div class="pro-onoff-24"></div>
    <div class="pro-onoff-23"></div>
    <div class="pro-onoff-22"></div>
    <div class="pro-onoff-21"></div>
    <div class="pro-onoff-20"></div>
    <div class="pro-onoff-19"></div>
    <div class="pro-onoff-18"></div>
    <div class="pro-onoff-17"></div>
    <div class="pro-onoff-16"></div>
    <div class="pro-onoff-15"></div>
    <div class="pro-onoff-14"></div>
    <div class="pro-onoff-13"></div>
    <div class="pro-onoff-12"></div>
    <div class="pro-onoff-11"></div>
    <div class="pro-onoff-10"></div>
    <div class="pro-onoff-9"></div>
    <div class="pro-onoff-8"></div>
    <div class="pro-onoff-7"></div>
    <div class="pro-onoff-6"></div>
    <div class="pro-onoff-5"></div>
    <div class="pro-onoff-4"></div>
    <div class="pro-onoff-3"></div>
    <div class="pro-onoff-2"></div>
    <div class="pro-onoff-1"></div>
    <div class="pro-onoff-0"></div>
    <div class="cool-27"></div>
    <div class="cool-26"></div>
    <div class="cool-25"></div>
    <div class="cool-24"></div>
    <div class="cool-23"></div>
    <div class="cool-22"></div>
    <div class="cool-21"></div>
    <div class="cool-20"></div>
    <div class="cool-19"></div>
    <div class="cool-18"></div>
    <div class="cool-17"></div>
    <div class="cool-16"></div>
    <div class="cool-15"></div>
    <div class="cool-14"></div>
    <div class="cool-13"></div>
    <div class="cool-12"></div>
    <div class="cool-11"></div>
    <div class="cool-10"></div>
    <div class="cool-9"></div>
    <div class="cool-8"></div>
    <div class="cool-7"></div>
    <div class="cool-6"></div>
    <div class="cool-5"></div>
    <div class="cool-4"></div>
    <div class="cool-3"></div>
    <div class="cool-2"></div>
    <div class="cool-1"></div>
    <div class="cool-0"></div>
    <div class="pq-27"></div>
    <div class="pq-26"></div>
    <div class="pq-25"></div>
    <div class="pq-24"></div>
    <div class="pq-23"></div>
    <div class="pq-22"></div>
    <div class="pq-21"></div>
    <div class="pq-20"></div>
    <div class="pq-19"></div>
    <div class="pq-18"></div>
    <div class="pq-17"></div>
    <div class="pq-16"></div>
    <div class="pq-15"></div>
    <div class="pq-14"></div>
    <div class="pq-13"></div>
    <div class="pq-12"></div>
    <div class="pq-11"></div>
    <div class="pq-10"></div>
    <div class="pq-9"></div>
    <div class="pq-8"></div>
    <div class="pq-7"></div>
    <div class="pq-6"></div>
    <div class="pq-5"></div>
    <div class="pq-4"></div>
    <div class="pq-3"></div>
    <div class="pq-2"></div>
    <div class="pq-1"></div>
    <div class="pq-0"></div>
    <div class="pro-number-27"></div>
    <div class="pro-number-26"></div>
    <div class="pro-number-25"></div>
    <div class="pro-number-24"></div>
    <div class="pro-number-23"></div>
    <div class="pro-number-22"></div>
    <div class="pro-number-21"></div>
    <div class="pro-number-20"></div>
    <div class="pro-number-19"></div>
    <div class="pro-number-18"></div>
    <div class="pro-number-17"></div>
    <div class="pro-number-16"></div>
    <div class="pro-number-15"></div>
    <div class="pro-number-14"></div>
    <div class="pro-number-13"></div>
    <div class="pro-number-12"></div>
    <div class="pro-number-11"></div>
    <div class="pro-number-10"></div>
    <div class="pro-number-9"></div>
    <div class="pro-number-8"></div>
    <div class="pro-number-7"></div>
    <div class="pro-number-6"></div>
    <div class="pro-number-5"></div>
    <div class="pro-number-4"></div>
    <div class="pro-number-3"></div>
    <div class="pro-number-2"></div>
    <div class="pro-number-1"></div>
    <div class="pro-number-0"></div>
    <div class="q-time-27"></div>
    <div class="q-time-26"></div>
    <div class="q-time-25"></div>
    <div class="q-time-24"></div>
    <div class="q-time-23"></div>
    <div class="q-time-22"></div>
    <div class="q-time-21"></div>
    <div class="q-time-20"></div>
    <div class="q-time-19"></div>
    <div class="q-time-18"></div>
    <div class="q-time-17"></div>
    <div class="q-time-16"></div>
    <div class="q-time-15"></div>
    <div class="q-time-14"></div>
    <div class="q-time-13"></div>
    <div class="q-time-12"></div>
    <div class="q-time-11"></div>
    <div class="q-time-10"></div>
    <div class="q-time-9"></div>
    <div class="q-time-8"></div>
    <div class="q-time-7"></div>
    <div class="q-time-6"></div>
    <div class="q-time-5"></div>
    <div class="q-time-4"></div>
    <div class="q-time-3"></div>
    <div class="q-time-2"></div>
    <div class="q-time-1"></div>
    <div class="q-time-0"></div>
    <div class="pro-data-text-0">0</div>
    <div class="pro-data-text-1">1</div>
    <div class="pro-data-text-2">2</div>
    <div class="pro-data-text-3">3</div>
    <div class="pro-data-text-4">4</div>
    <div class="pro-data-text-5">5</div>
    <div class="pro-data-text-6">6</div>
    <div class="pro-data-text-7">7</div>
    <div class="pro-data-text-8">8</div>
    <div class="pro-data-text-9">9</div>
    <div class="pro-data-text-10">10</div>
    <div class="pro-data-text-11">11</div>
    <div class="pro-data-text-12">12</div>
    <div class="pro-data-text-13">13</div>
    <div class="pro-data-text-14">14</div>
    <div class="pro-data-text-15">15</div>
    <div class="pro-data-text-16">16</div>
    <div class="pro-data-text-17">17</div>
    <div class="pro-data-text-18">18</div>
    <div class="pro-data-text-19">19</div>
    <div class="pro-data-text-20">20</div>
    <div class="pro-data-text-21">21</div>
    <div class="pro-data-text-22">22</div>
    <div class="pro-data-text-23">23</div>
    <div class="pro-data-text-24">24</div>
    <div class="pro-data-text-25">25</div>
    <div class="pro-data-text-26">26</div>
    <div class="pro-data-text-27">27</div>
    <img class="background-1" src="/DHT/image/overview_2_1/background-10.png" />
    <img class="cm" src="/DHT/image/overview_2_1/cm0.png" />
    <img class="short-1" src="/DHT/image/overview_2_1/short-10.png" />
    <img class="x-box-1" src="/DHT/image/overview_2_1/x-box-10.png" />
    <img class="x-box-2" src="/DHT/image/overview_2_1/x-box-20.png" />
    <img class="elevator-1" src="/DHT/image/overview_2_1/elevator-10.png" />
    <img class="elevator-2" src="/DHT/image/overview_2_1/elevator-20.png" />
    <img class="elevator-3" src="/DHT/image/overview_2_1/elevator-30.png" />
    <img class="green-up-1" src="/DHT/image/overview_2_1/green-up-10.png" />
    <img class="green-down-1" src="/DHT/image/overview_2_1/green-down-10.png" />
    <img class="green-up-2" src="/DHT/image/overview_2_1/green-up-20.png" />
    <img class="green-down-2" src="/DHT/image/overview_2_1/green-down-20.png" />
    <img class="green-up-3" src="/DHT/image/overview_2_1/green-up-30.png" />
    <img class="green-down-3" src="/DHT/image/overview_2_1/green-down-30.png" />
    <img class="green-up-4" src="/DHT/image/overview_2_1/green-up-40.png" />
    <img class="green-down-4" src="/DHT/image/overview_2_1/green-down-40.png" />
    <img class="green-up-5" src="/DHT/image/overview_2_1/green-up-50.png" />
    <img class="green-down-5" src="/DHT/image/overview_2_1/green-down-50.png" />
    <img class="green-up-6" src="/DHT/image/overview_2_1/green-up-60.png" />
    <img class="green-down-6" src="/DHT/image/overview_2_1/green-down-60.png" />
    <img class="green-up-7" src="/DHT/image/overview_2_1/green-up-70.png" />
    <img class="green-down-7" src="/DHT/image/overview_2_1/green-down-70.png" />
    <img class="green-up-8" src="/DHT/image/overview_2_1/green-up-80.png" />
    <img class="green-down-8" src="/DHT/image/overview_2_1/green-down-80.png" />
    <img class="bupum-red-1" src="/DHT/image/overview_2_1/bupum-red-10.png" />
    <img class="bupum-green-1" src="/DHT/image/overview_2_1/bupum-green-10.png" />
    <img class="bupum-yellow-1" src="/DHT/image/overview_2_1/bupum-yellow-10.png" />
    <img class="cap-1" src="/DHT/image/overview_2_1/cap-10.png" />
    <img class="big-red-pen" src="/DHT/image/overview_2_1/big-red-pen0.png" />
    <img class="flu-1" src="/DHT/image/overview_2_1/flu-10.png" />
    <img class="hose" src="/DHT/image/overview_2_1/hose0.png" />
    <img class="lamp-red-1" src="/DHT/image/overview_2_1/lamp-red-10.png" />
    <img class="lamp-green-1" src="/DHT/image/overview_2_1/lamp-green-10.png" />
    <img class="pen-rol-1" src="/DHT/image/overview_2_1/pen-rol-10.png" />
    <img class="lamp-red-2" src="/DHT/image/overview_2_1/lamp-red-20.png" />
    <img class="lamp-green-2" src="/DHT/image/overview_2_1/lamp-green-20.png" />
    <img class="pen-rol-2" src="/DHT/image/overview_2_1/pen-rol-20.png" />
    <img class="lamp-red-3" src="/DHT/image/overview_2_1/lamp-red-30.png" />
    <img class="lamp-green-3" src="/DHT/image/overview_2_1/lamp-green-30.png" />
    <img class="pen-rol-3" src="/DHT/image/overview_2_1/pen-rol-30.png" />
    <img class="cut-lamp-red" src="/DHT/image/overview_2_1/cut-lamp-red0.png" />
    <img class="cut-lamp-green" src="/DHT/image/overview_2_1/cut-lamp-green0.png" />
    <img class="moter-red-1" src="/DHT/image/overview_2_1/moter-red-10.png" />
    <img class="moter-green-1" src="/DHT/image/overview_2_1/moter-green-10.png" />
    <img class="moter-red-12" src="/DHT/image/overview_2_1/moter-red-11.png" />
    <img class="moter-green-12" src="/DHT/image/overview_2_1/moter-green-11.png" />
    <img class="moter-red-13" src="/DHT/image/overview_2_1/moter-red-12.png" />
    <img class="moter-green-13" src="/DHT/image/overview_2_1/moter-green-12.png" />
    <img class="moter-red-14" src="/DHT/image/overview_2_1/moter-red-13.png" />
    <img class="moter-green-14" src="/DHT/image/overview_2_1/moter-green-13.png" />
    <img class="moter-red-15" src="/DHT/image/overview_2_1/moter-red-14.png" />
    <img class="moter-green-15" src="/DHT/image/overview_2_1/moter-green-14.png" />
    <img class="moter-red-16" src="/DHT/image/overview_2_1/moter-red-15.png" />
    <img class="moter-green-16" src="/DHT/image/overview_2_1/moter-green-15.png" />
    <img class="moter-red-17" src="/DHT/image/overview_2_1/moter-red-16.png" />
    <img class="moter-green-17" src="/DHT/image/overview_2_1/moter-green-16.png" />
    <img class="moter-red-18" src="/DHT/image/overview_2_1/moter-red-17.png" />
    <img class="moter-green-18" src="/DHT/image/overview_2_1/moter-green-17.png" />
    <img class="moter-red-19" src="/DHT/image/overview_2_1/moter-red-18.png" />
    <img class="moter-green-19" src="/DHT/image/overview_2_1/moter-green-18.png" />
    <img class="bupum-red-2" src="/DHT/image/overview_2_1/bupum-red-20.png" />
    <img class="bupum-green-2" src="/DHT/image/overview_2_1/bupum-green-20.png" />
    <img class="bupum-yellow-2" src="/DHT/image/overview_2_1/bupum-yellow-20.png" />
    <img class="bupum-red-3" src="/DHT/image/overview_2_1/bupum-red-30.png" />
    <img class="bupum-green-3" src="/DHT/image/overview_2_1/bupum-green-30.png" />
    <img class="bupum-yellow-3" src="/DHT/image/overview_2_1/bupum-yellow-30.png" />
    <img class="moter-red-110" src="/DHT/image/overview_2_1/moter-red-19.png" />
    <img class="moter-green-110" src="/DHT/image/overview_2_1/moter-green-19.png" />
    <img class="moter-red-111" src="/DHT/image/overview_2_1/moter-red-110.png" />
    <img class="moter-green-111" src="/DHT/image/overview_2_1/moter-green-110.png" />
    <img class="moter-red-112" src="/DHT/image/overview_2_1/moter-red-111.png" />
    <img class="moter-green-112" src="/DHT/image/overview_2_1/moter-green-111.png" />
    <img class="moter-red-113" src="/DHT/image/overview_2_1/moter-red-112.png" />
    <img class="moter-green-113" src="/DHT/image/overview_2_1/moter-green-112.png" />
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
    <div class="door-green-6"></div>
    <div class="door-yellow-6"></div>
    <div class="door-red-6"></div>
    <div class="door-green-7"></div>
    <div class="door-yellow-7"></div>
    <div class="door-red-7"></div>
    <img class="yello-left-1" src="/DHT/image/overview_2_1/yello-left-10.png" />
    <img class="yello-right-1" src="/DHT/image/overview_2_1/yello-right-10.png" />
    <img class="yello-left-2" src="/DHT/image/overview_2_1/yello-left-20.png" />
    <img class="yello-left-3" src="/DHT/image/overview_2_1/yello-left-30.png" />
    <img class="yello-left-4" src="/DHT/image/overview_2_1/yello-left-40.png" />
    <img class="yello-left-5" src="/DHT/image/overview_2_1/yello-left-50.png" />
    <img class="yello-left-6" src="/DHT/image/overview_2_1/yello-left-60.png" />
    <img class="yello-left-7" src="/DHT/image/overview_2_1/yello-left-70.png" />
    <img class="yello-left-8" src="/DHT/image/overview_2_1/yello-left-80.png" />
    <img class="yello-left-9" src="/DHT/image/overview_2_1/yello-left-90.png" />
    <img class="yello-left-10" src="/DHT/image/overview_2_1/yello-left-100.png" />
    <img class="yello-left-11" src="/DHT/image/overview_2_1/yello-left-110.png" />
    <img class="yello-left-12" src="/DHT/image/overview_2_1/yello-left-120.png" />
    <img class="yello-left-13" src="/DHT/image/overview_2_1/yello-left-130.png" />
    <img class="yello-right-2" src="/DHT/image/overview_2_1/yello-right-20.png" />
    <img class="yello-left-14" src="/DHT/image/overview_2_1/yello-left-140.png" />
    <img class="yello-right-3" src="/DHT/image/overview_2_1/yello-right-30.png" />
    <img class="yello-left-15" src="/DHT/image/overview_2_1/yello-left-150.png" />
    <img class="yello-left-16" src="/DHT/image/overview_2_1/yello-left-160.png" />
    <img class="yello-right-4" src="/DHT/image/overview_2_1/yello-right-40.png" />
    <img class="flu-2" src="/DHT/image/overview_2_1/flu-20.png" />
    <img class="_3" src="/DHT/image/overview_2_1/_30.png" />
    <img class="sensor-red-1" src="/DHT/image/overview_2_1/sensor-red-10.png" />
    <img class="sensor-green-1" src="/DHT/image/overview_2_1/sensor-green-10.png" />
    <img class="sensor-red-2" src="/DHT/image/overview_2_1/sensor-red-20.png" />
    <img class="sensor-green-2" src="/DHT/image/overview_2_1/sensor-green-20.png" />
    <img class="sensor-red-3" src="/DHT/image/overview_2_1/sensor-red-30.png" />
    <img class="sensor-green-3" src="/DHT/image/overview_2_1/sensor-green-30.png" />
    <img class="sensor-red-4" src="/DHT/image/overview_2_1/sensor-red-40.png" />
    <img class="sensor-green-4" src="/DHT/image/overview_2_1/sensor-green-40.png" />
    <div class="tong-0"></div>
    <div class="tong-1"></div>
    <div class="tong-2"></div>
    <div class="tong-3-1"></div>
    <div class="tong-3-2"></div>
    <div class="tong-3-3"></div>
    <div class="tong-4"></div>
    <div class="tong-5"></div>
    <div class="tong-6"></div>
    <div class="tong-7"></div>
    <div class="tong-8"></div>
    <div class="tong-9"></div>
    <div class="tong-10"></div>
    <div class="tong-11"></div>
    <div class="tong-12"></div>
    <div class="tong-13"></div>
    <div class="tong-14"></div>
    <div class="tong-15"></div>
    <div class="tong-116"></div>
    <div class="tong-17"></div>
    <div class="tong-18"></div>
    <div class="tong-19"></div>
    <div class="tong-20"></div>
    <div class="tong-21"></div>
    <div class="tong-22"></div>
    <div class="tong-23"></div>
    <div class="tong-24"></div>
    <div class="tong-25"></div>
    <div class="tong-26"></div>
    <div class="tong-27"></div>
    <div class="tong-text-0">0</div>
    <div class="tong-text-1">1</div>
    <div class="tong-text-2">2</div>
    <div class="tong-text-3-1">3</div>
    <div class="tong-text-3-2">3</div>
    <div class="tong-text-3-3">3</div>
    <div class="tong-text-4">4</div>
    <div class="tong-text-5">5</div>
    <div class="tong-text-6">6</div>
    <div class="tong-text-7">7</div>
    <div class="tong-text-8">8</div>
    <div class="tong-text-9">9</div>
    <div class="tong-text-10">10</div>
    <div class="tong-text-11">11</div>
    <div class="tong-text-12">12</div>
    <div class="tong-text-13">13</div>
    <div class="tong-text-14">14</div>
    <div class="tong-text-15">15</div>
    <div class="tong-text-16">16</div>
    <div class="tong-text-17">17</div>
    <div class="tong-text-18">18</div>
    <div class="tong-text-19">19</div>
    <div class="tong-text-20">20</div>
    <div class="tong-text-21">21</div>
    <div class="tong-text-22">22</div>
    <div class="tong-text-23">23</div>
    <div class="tong-text-24">24</div>
    <div class="tong-text-25">25</div>
    <div class="tong-text-26">26</div>
    <div class="tong-text-27">27</div>
  </div>

</body>
</html>