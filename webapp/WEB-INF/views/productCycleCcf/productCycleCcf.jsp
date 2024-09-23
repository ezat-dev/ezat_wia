<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/product_cycle/vars.css">
  <link rel="stylesheet" href="/DHT/css/product_cycle/style.css">
  
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
    <div class="group-1">
      <div class="big-box"></div>
    <div class="process-data-text">시간제어 싸이클 데이터</div>
    <div class="data-text-box-1"></div>
    <div class="pre-box"></div>
    <div class="hit-box"></div>
    <div class="crack-box-1"></div>
    <div class="crack-box-2"></div>
    <div class="oil-q-box"></div>
    <div class="oil-drain-box"></div>
    <div class="data-text-1">
      시간제어
      <br />
      싸이클 데이터
    </div>
    <div class="pre-text">예열로</div>
    <div class="hit-text">가열존</div>
    <div class="crack-1-text">균열1존</div>
    <div class="crack-2-text">균열2존</div>
    <div class="oil-q-text">유조 퀜칭</div>
    <div class="oil-drain-text">유조 드레인</div>
    <div class="no-1-cycle"></div>
    <div class="no-1">NO.1 싸이클</div>
    <div class="pre-1"></div>
    <div class="hit-1"></div>
    <div class="crack-1-1"></div>
    <div class="crack-2-1"></div>
    <div class="oil-q-1"></div>
    <div class="oil-drain-1"></div>
    <div class="no-2-cycle"></div>
    <div class="no-2">NO.2 싸이클</div>
    <div class="pre-2"></div>
    <div class="hit-2"></div>
    <div class="crack-1-2"></div>
    <div class="crack-2-2"></div>
    <div class="oil-q-2"></div>
    <div class="oil-drain-2"></div>
    <div class="no-3-cycle"></div>
    <div class="no-3">NO.3 싸이클</div>
    <div class="pre-3"></div>
    <div class="hit-3"></div>
    <div class="crack-1-3"></div>
    <div class="crack-2-3"></div>
    <div class="oil-q-3"></div>
    <div class="oil-drain-3"></div>
    <div class="no-4-cycle"></div>
    <div class="no-4">NO.4 싸이클</div>
    <div class="pre-4"></div>
    <div class="hit-4"></div>
    <div class="crack-1-4"></div>
    <div class="crack-2-4"></div>
    <div class="oil-q-4"></div>
    <div class="oil-drain-4"></div>
    <div class="no-5-cycle"></div>
    <div class="no-5">NO.5 싸이클</div>
    <div class="pre-5"></div>
    <div class="hit-5"></div>
    <div class="crack-1-5"></div>
    <div class="crack-2-5"></div>
    <div class="oil-q-5"></div>
    <div class="oil-drain-5"></div>
    <div class="no-6-cycle"></div>
    <div class="no-6">NO.6 싸이클</div>
    <div class="pre-6"></div>
    <div class="hit-6"></div>
    <div class="crack-1-6"></div>
    <div class="crack-2-6"></div>
    <div class="oil-q-6"></div>
    <div class="oil-drain-6"></div>
    <div class="no-7-cycle"></div>
    <div class="no-7">NO.7 싸이클</div>
    <div class="pre-7"></div>
    <div class="hit-7"></div>
    <div class="crack-1-7"></div>
    <div class="crack-2-7"></div>
    <div class="oil-q-7"></div>
    <div class="oil-drain-7"></div>
    <div class="speed-cycle-data-text">속도제어 싸이클 데이터</div>
    <div class="data-text-box-12"></div>
    <div class="chim-box"></div>
    <div class="diff-box"></div>
    <div class="agi-box"></div>
    <div class="data-text-2">
      속도제어
      <br />
      싸이클 데이터
    </div>
    <div class="chim-text">침탄존</div>
    <div class="diff-text">확산존</div>
    <div class="agi-text">
      아지테이터
      <br />
      (퀜칭)
    </div>
    <div class="no-1-cycle-2"></div>
    <div class="no-12">NO.1 싸이클</div>
    <div class="chim-1"></div>
    <div class="diff-1"></div>
    <div class="agi-1"></div>
    <div class="no-2-cycle-2"></div>
    <div class="no-22">NO.2 싸이클</div>
    <div class="chim-2"></div>
    <div class="diff-2"></div>
    <div class="agi-2"></div>
    <div class="no-3-cycle-2"></div>
    <div class="no-32">NO.3 싸이클</div>
    <div class="chim-3"></div>
    <div class="diff-3"></div>
    <div class="agi-3"></div>
    <div class="no-4-cycle-2"></div>
    <div class="no-42">NO.4 싸이클</div>
    <div class="chim-4"></div>
    <div class="diff-4"></div>
    <div class="agi-4"></div>
    <div class="no-5-cycle-2"></div>
    <div class="no-52">NO.5 싸이클</div>
    <div class="chim-5"></div>
    <div class="diff-5"></div>
    <div class="agi-5"></div>
    <div class="no-6-cycle-2"></div>
    <div class="no-62">NO.6 싸이클</div>
    <div class="chim-6"></div>
    <div class="diff-6"></div>
    <div class="agi-6"></div>
    <div class="no-7-cycle-2"></div>
    <div class="no-72">NO.7 싸이클</div>
    <div class="chim-7"></div>
    <div class="diff-7"></div>
    <div class="agi-7"></div>
  </div>
</div>

  
</body>
</html>