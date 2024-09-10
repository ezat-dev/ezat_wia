<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/inv/vars.css">
  <link rel="stylesheet" href="/DHT/css/inv/style.css">
  
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
   #ft {
  background-color: #123478;
  height: 72.43px;
  width: 100%;
  position: fixed;
  bottom: 0;
  left: 0;
  z-index: 10; /* 필요시 조정, 다른 요소들보다 위에 표시되도록 */
}
   
   </style>
  <title>Document</title>
</head>
<body>
      <div class="header">

      </div>
  <div class="group-2">
    <div class="wrapper">
      <%@ include file="/WEB-INF/resources/header/index.jsp" %>
       <div id="ft">  <%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
      <div class="main"></div>
          </div>
   
      <div class="pen-inv-box"></div>
      <div class="pen-inv-text-box"></div>
      <div class="pen-inv-text">펜 인버터 설정</div>
      <div class="pre-pen">
        <img class="pre-pen-inv" src="/DHT/image/inv/pre-pen-inv0.png" />
        <div class="pre-pen-sp-text">설정값 :</div>
        <div class="pre-pen-sp"></div>
        <div class="hz">Hz</div>
        <div class="pre-pen-pv-text">현재값 :</div>
        <div class="pre-pen-pv"></div>
        <div class="hz2">Hz</div>
        <div class="pre-pen-out-a-text">출력값 :</div>
        <div class="pre-pen-out-a"></div>
        <div class="a">A</div>
        <div class="pre-pen-out-v-text">출력값 :</div>
        <div class="pre-pen-out-v"></div>
        <div class="v">V</div>
        <div class="pre-pen-inv-text-box"></div>
        <div class="pre-pen-text">예열로 펜</div>
      </div>
      <div class="hit-pen">
        <img class="hit-pen-inv" src="/DHT/image/inv/hit-pen-inv0.png" />
        <div class="hit-pen-sp-text">설정값 :</div>
        <div class="hit-pen-sp"></div>
        <div class="hz3">Hz</div>
        <div class="hit-pen-pv-text">현재값 :</div>
        <div class="hit-pen-pv"></div>
        <div class="hz4">Hz</div>
        <div class="hit-pen-out-a-text">출력값 :</div>
        <div class="hit-pen-out-a"></div>
        <div class="a2">A</div>
        <div class="hit-pen-out-v-text">출력값 :</div>
        <div class="hit-pen-out-v"></div>
        <div class="v2">V</div>
        <div class="hit-pen-inv-text-box"></div>
        <div class="hit-pen-text">가열존 펜</div>
      </div>
      <div class="chim-pen-1">
        <img class="chim-pen-inv-1" src="/DHT/image/inv/chim-pen-inv-10.png" />
        <div class="chim-pen-sp-text-1">설정값 :</div>
        <div class="chim-pen-sp-1"></div>
        <div class="hz5">Hz</div>
        <div class="chim-pen-pv-text-1">현재값 :</div>
        <div class="chim-pen-pv-1"></div>
        <div class="hz6">Hz</div>
        <div class="chim-pen-out-a-text-1">출력값 :</div>
        <div class="chim-pen-out-a-1"></div>
        <div class="a3">A</div>
        <div class="chim-pen-out-v-text-1">출력값 :</div>
        <div class="chim-pen-out-v-1"></div>
        <div class="v3">V</div>
        <div class="chim-pen-inv-text-box-1"></div>
        <div class="chim-pen-inv-text-1">침탄 1존 펜</div>
      </div>
      <div class="chim-pen-2">
        <img class="chim-pen-inv-2" src="/DHT/image/inv/chim-pen-inv-20.png" />
        <div class="chim-pen-sp-text-2">설정값 :</div>
        <div class="chim-pen-sp-2"></div>
        <div class="hz7">Hz</div>
        <div class="chim-pen-pv-text-2">현재값 :</div>
        <div class="chim-pen-pv-2"></div>
        <div class="hz8">Hz</div>
        <div class="chim-pen-out-a-text-2">출력값 :</div>
        <div class="chim-pen-out-a-2"></div>
        <div class="a4">A</div>
        <div class="chim-pen-out-v-text-2">출력값 :</div>
        <div class="chim-pen-out-v-2"></div>
        <div class="v4">V</div>
        <div class="chim-pen-inv-text-box-2"></div>
        <div class="chim-pen-inv-text-2">침탄 2존 펜</div>
      </div>
      <div class="diff-pen">
        <img class="diff-pen-inv" src="/DHT/image/inv/diff-pen-inv0.png" />
        <div class="diff-pen-sp-text">설정값 :</div>
        <div class="diff-pen-sp"></div>
        <div class="hz9">Hz</div>
        <div class="diff-pen-pv-text">현재값 :</div>
        <div class="diff-pen-pv"></div>
        <div class="hz10">Hz</div>
        <div class="diff-pen-out-a-text">출력값 :</div>
        <div class="diff-pen-out-a"></div>
        <div class="a5">A</div>
        <div class="diff-pen-out-v-text">출력값 :</div>
        <div class="diff-pen-out-v"></div>
        <div class="v5">V</div>
        <div class="diff-pen-inv-text-box"></div>
        <div class="diff-pen-inv-text">확산존 펜</div>
      </div>
      <div class="crack-pen-1">
        <img class="crack-pen-inv-1" src="/DHT/image/inv/crack-pen-inv-10.png" />
        <div class="crack-pen-sp-text-1">설정값 :</div>
        <div class="crack-pen-sp-1"></div>
        <div class="hz11">Hz</div>
        <div class="crack-pen-pv-text-1">현재값 :</div>
        <div class="crack-pen-pv-1"></div>
        <div class="hz12">Hz</div>
        <div class="crack-pen-out-a-text-1">출력값 :</div>
        <div class="crack-pen-out-a-1"></div>
        <div class="a6">A</div>
        <div class="crack-pen-out-v-text-1">출력값 :</div>
        <div class="crack-pen-out-v-1"></div>
        <div class="v6">V</div>
        <div class="crack-pen-inv-text-box-1"></div>
        <div class="crack-pen-inv-text-1">균열 1존 펜</div>
      </div>
      <div class="crack-pen-2">
        <img class="crack-pen-inv-2" src="/DHT/image/inv/crack-pen-inv-20.png" />
        <div class="crack-pen-sp-text-2">설정값 :</div>
        <div class="crack-pen-sp-2"></div>
        <div class="hz13">Hz</div>
        <div class="crack-pen-pv-text-2">현재값 :</div>
        <div class="crack-pen-pv-2"></div>
        <div class="hz14">Hz</div>
        <div class="crack-pen-out-a-text-2">출력값 :</div>
        <div class="crack-pen-out-a-2"></div>
        <div class="a7">A</div>
        <div class="crack-pen-out-v-text-2">출력값 :</div>
        <div class="crack-pen-out-v-2"></div>
        <div class="v7">V</div>
        <div class="crack-pen-inv-text-box-2"></div>
        <div class="crack-pen-inv-text-2">균열 2존 펜</div>
      </div>
      <div class="oil-agi-pen">
        <img class="oil-agi-inv" src="/DHT/image/inv/oil-agi-inv0.png" />
        <div class="oil-agi-pen-sp-text">설정값 :</div>
        <div class="oil-agi-pen-sp"></div>
        <div class="hz15">Hz</div>
        <div class="oil-agi-pen-pv-text">현재값 :</div>
        <div class="oil-agi-pen-pv"></div>
        <div class="hz16">Hz</div>
        <div class="oil-agi-pen-out-a-text">출력값 :</div>
        <div class="oil-agi-pen-out-a"></div>
        <div class="a8">A</div>
        <div class="oil-agi-pen-out-v-text">출력값 :</div>
        <div class="oil-agi-pen-out-v"></div>
        <div class="v8">V</div>
        <div class="oil-agi-inv-text-box"></div>
        <div class="oil-agi-inv-text">유조 아지테이터</div>
      </div>
      <div class="roll-inv-box"></div>
      <div class="roll-inv-text-box"></div>
      <div class="roll-inv-text">롤러 인버터 설정</div>
      <div class="pre-roll">
        <img class="pre-roll-inv" src="/DHT/image/inv/pre-roll-inv0.png" />
        <div class="pre-roll-inv-sp-text">설정값 :</div>
        <div class="pre-roll-inv-sp"></div>
        <div class="hz17">Hz</div>
        <div class="pre-roll-inv-pv-text">현재값 :</div>
        <div class="pre-roll-inv-pv"></div>
        <div class="hz18">Hz</div>
        <div class="pre-roll-inv-out-a-text">출력값 :</div>
        <div class="pre-roll-inv-out-a"></div>
        <div class="a9">A</div>
        <div class="pre-roll-inv-out-v-text">출력값 :</div>
        <div class="pre-roll-inv-out-v"></div>
        <div class="v9">V</div>
        <div class="pre-roll-inv-text-box"></div>
        <div class="pre-roll-inv-text">예열로 롤러</div>
      </div>
      <div class="hit-roll">
        <img class="hit-roll-inv" src="/DHT/image/inv/hit-roll-inv0.png" />
        <div class="hit-roll-inv-sp-text">설정값 :</div>
        <div class="hit-roll-inv-sp"></div>
        <div class="hz19">Hz</div>
        <div class="hit-roll-inv-pv-text">현재값 :</div>
        <div class="hit-roll-inv-pv"></div>
        <div class="hz20">Hz</div>
        <div class="hit-roll-inv-out-a-text">출력값 :</div>
        <div class="hit-roll-inv-out-a"></div>
        <div class="a10">A</div>
        <div class="hit-roll-inv-out-v-text">출력값 :</div>
        <div class="hit-roll-inv-out-v"></div>
        <div class="v10">V</div>
        <div class="hit-roll-inv-text-box"></div>
        <div class="hit-roll-inv-text">가열존 롤러</div>
      </div>
      <div class="chim-roll">
        <img class="chim-roll-inv" src="/DHT/image/inv/chim-roll-inv0.png" />
        <div class="chim-roll-inv-sp-text">설정값 :</div>
        <div class="chim-roll-inv-sp"></div>
        <div class="hz21">Hz</div>
        <div class="chim-roll-inv-pv-text">현재값 :</div>
        <div class="chim-roll-inv-pv"></div>
        <div class="hz22">Hz</div>
        <div class="chim-roll-inv-out-a-text">출력값 :</div>
        <div class="chim-roll-inv-out-a"></div>
        <div class="a11">A</div>
        <div class="chim-roll-inv-out-v-text">출력값 :</div>
        <div class="chim-roll-inv-out-v"></div>
        <div class="v11">V</div>
        <div class="chin-roll-inv-text-box"></div>
        <div class="chin-roll-inv-text">침탄존 롤러</div>
      </div>
      <div class="diff-roll">
        <img class="diff-roll-inv" src="/DHT/image/inv/diff-roll-inv0.png" />
        <div class="diff-roll-inv-sp-text">설정값 :</div>
        <div class="diff-roll-inv-sp"></div>
        <div class="hz23">Hz</div>
        <div class="diff-roll-inv-pv-text">현재값 :</div>
        <div class="diff-roll-inv-pv"></div>
        <div class="hz24">Hz</div>
        <div class="diff-roll-inv-out-a-text">출력값 :</div>
        <div class="diff-roll-inv-out-a"></div>
        <div class="a12">A</div>
        <div class="diff-roll-inv-out-v-text">출력값 :</div>
        <div class="diff-roll-inv-out-v"></div>
        <div class="v12">V</div>
        <div class="diff-roll-inv-text-box"></div>
        <div class="diff-roll-inv-text">확산존 롤러</div>
      </div>
      <div class="crack-roll-1">
        <img class="crack-roll-inv-1" src="/DHT/image/inv/crack-roll-inv-10.png" />
        <div class="crack-roll-inv-sp-text-1">설정값 :</div>
        <div class="crack-roll-inv-sp-1"></div>
        <div class="hz25">Hz</div>
        <div class="crack-roll-inv-pv-text-1">현재값 :</div>
        <div class="crack-roll-inv-pv-1"></div>
        <div class="hz26">Hz</div>
        <div class="crack-roll-inv-out-a-text-1">출력값 :</div>
        <div class="crack-roll-inv-out-a-1"></div>
        <div class="a13">A</div>
        <div class="crack-roll-inv-out-v-text-1">출력값 :</div>
        <div class="crack-roll-inv-out-v-1"></div>
        <div class="v13">V</div>
        <div class="crack-roll-inv-text-box-1"></div>
        <div class="crack-roll-inv-text-1">균열 1존 롤러</div>
      </div>
      <div class="crack-roll-2">
        <img class="crack-roll-inv-2" src="/DHT/image/inv/crack-roll-inv-20.png" />
        <div class="crack-roll-inv-sp-text-2">설정값 :</div>
        <div class="crack-roll-inv-sp-2"></div>
        <div class="hz27">Hz</div>
        <div class="crack-roll-inv-pv-text-2">현재값 :</div>
        <div class="crack-roll-inv-pv-2"></div>
        <div class="hz28">Hz</div>
        <div class="crack-roll-inv-out-a-text-2">출력값 :</div>
        <div class="crack-roll-inv-out-a-2"></div>
        <div class="a14">A</div>
        <div class="crack-roll-inv-out-v-text-2">출력값 :</div>
        <div class="crack-roll-inv-out-v-2"></div>
        <div class="v14">V</div>
        <div class="crack-roll-inv-text-box-2"></div>
        <div class="crack-roll-inv-text-2">균열 2존 롤러</div>
      </div>
    </div>
	
</body>
</html>