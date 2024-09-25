<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <style>
    @import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css");
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html, body {
      font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto,
      'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR',
      'Malgun Gothic', sans-serif;
    }

     /* main {
      width: 100vw;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      background-color: #e5e5e5;
    }  */

    .site__header {
      background: #123478;
      padding: 0 2rem;
      width: 1918px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-radius: 0.5rem;
      transition: all 0.25s cubic-bezier(0.42, 0, 0, 1);
      box-shadow: 0px 2px 4px -1px #0000000f, 0px 4px 6px -1px #0000001a;
      position: absolute;
      top: -2px;
    }

    .brand {
      text-transform: uppercase;
      font-size: 34px;
      font-weight: 900;
    }

    .brand--point {
      color: #3b82f6;
    }

    .menu {
      list-style: none;
      display: flex;
      align-items: center;
      height: 64px;
    }

    .menu.hidden {
      display: none;
    }

    .menu li {
      height: 100%;
      display: flex;
      align-items: center;
      margin: 0 0.8rem;
    }

    .menu li a {
      text-decoration: none;
      color: white;
      cursor: pointer;
      position: relative;
      height: 100%;
      display: flex;
      align-items: center;
      font-weight: 600;
      font-size: 19px;
      transition: all 0.25s cubic-bezier(0.42, 0, 0, 1);
      padding: 0 1rem;
      z-index: 1;
      user-select: none;
      border-radius: 4px; /* Added for rounded background */
    }

    .menu li a:hover {
      color: #3b82f6;
    }

    .menu li a.active {
      background-color: #3b82f6;
      color: white;
      
    }

    .menu li a::after {
      content: '';
      position: absolute;
      left: 0;
      bottom: 0;
      width: 0%;
      height: 3px;
      background-color: #3b82f6;
      transition: width 0.25s cubic-bezier(0.42, 0, 0, 1);
    }

    .menu li a:hover::after {
      width: 100%;
    }

    .toggle-group p {
      color: white;
      font-weight: bold;
      font-size: 25px;
      margin-right: 0px;
      cursor: pointer;
      transition: all 0.25s cubic-bezier(0.42, 0, 0, 1);
    }

    .toggle-group p:hover {
      color: #7ab2ff;
    }
	
	.teczen{
	height: 30px; /* 원하는 높이로 설정 */
    width: 110px;
	
	}
  </style>
</head>
<body>
  <main>
    <header class="site__header">
      <img class="teczen" src="/DHT/image/header_navigation/teczen.png" />
      <div class="toggle-group">
        <p id="toggleCommon">공통로</p>
        <p id="toggleSequential">연속로</p>
      </div>
      <nav>
        <ul class="menu menu1">
          <li><a href="/DHT/overviewCm" data-page="overviewCm">공통운용 현황</a></li>
          <li><a href="/DHT/controlCm" data-page="controlCm">제어 화면</a></li>
          <li><a href="/DHT/trendCm" data-page="trendCm">트렌드</a></li>
          <li><a href="/DHT/alarmHistoryCm" data-page="alarmHistoryCm">알람 내역</a></li>
          <li><a href="/DHT/alarmListCm1" data-page="alarmListCm1">알람</a></li>
          <li><a href="/DHT/alarmRankingCm" data-page="alarmRankingCm">알람 랭킹</a></li>
          <li><a href="/DHT/overviewDataCm" data-page="overviewDataCm">처리품 데이터</a></li>
          <li><a href="/DHT/productCycleCm" data-page="productCycleCm">처리품 싸이클</a></li>
           <li><a href="/DHT/ticCm" data-page="ticCm">온도 조절계</a></li>
          <li><a href="/DHT/autoConCm" data-page="autoConCm">자동운전 조건</a></li>
          <li><a href="/DHT/ioMonitorCm1" data-page="ioMonitorCm1">IO 모니터링</a></li>
          <li><a href="/DHT/overviewStatusAll" data-page="overviewStatusAll">전체 현황</a></li>
         
        </ul>
        <ul class="menu menu2 hidden">
          <li><a href="/DHT/overviewCcf" data-page="overviewCcf">연속운용 현황</a></li>
          <li><a href="/DHT/controlCcf1" data-page="controlCcf1">제어 화면</a></li>
          <li><a href="/DHT/trendCcf" data-page="trendCcf">트렌드</a></li>
          <li><a href="/DHT/alarmHistoryCcf" data-page="alarmHistoryCcf">알람 내역</a></li>
          <li><a href="/DHT/alarmListCcf1" data-page="alarmListCcf1">알람</a></li>
          <li><a href="/DHT/alarmRankingCcf" data-page="alarmRankingCcf">알람 랭킹</a></li>
          <li><a href="/DHT/overviewDataCcf" data-page="overviewDataCcf">처리품 데이터</a></li>
          <li><a href="/DHT/productCycleCcf" data-page="productCycleCcf">처리품 싸이클</a></li>
           <li><a href="/DHT/ticCcf" data-page="ticCcf">온도 조절계</a></li>
          <li><a href="/DHT/autoConCcf" data-page="autoConCcf">자동운전 조건</a></li>
          <li><a href="/DHT/ioMonitorCcf1" data-page="ioMonitorCcf1">IO 모니터링</a></li>
          <li><a href="/DHT/overviewStatusAll" data-page="overviewStatusAll">전체 현황</a></li>
        </ul>
      </nav>
    </header>
  </main>
  <script>
  document.addEventListener('DOMContentLoaded', function() {
	  const toggleCommon = document.getElementById('toggleCommon');
	  const toggleSequential = document.getElementById('toggleSequential');
	  const menu1 = document.querySelector('.menu1');
	  const menu2 = document.querySelector('.menu2');

	  // Load menu state from localStorage
	  const savedMenu = localStorage.getItem('menuState');
	  if (savedMenu === 'menu2') {
	    menu1.classList.add('hidden');
	    menu2.classList.remove('hidden');
	    toggleSequential.style.color = '#3b82f6'; // Set the color for Sequential on load
	  } else {
	    menu1.classList.remove('hidden');
	    menu2.classList.add('hidden');
	    toggleCommon.style.color = '#3b82f6'; // Set the color for Common on load
	  }

	  // Load active page from localStorage
	  const activePage = localStorage.getItem('activePage');
	  if (activePage) {
	    const menuItems = document.querySelectorAll('.menu a');
	    menuItems.forEach(item => {
	      if (item.getAttribute('data-page') === activePage) {
	        item.classList.add('active');
	      } else {
	        item.classList.remove('active');
	      }
	    });
	  }

	
	  toggleCommon.addEventListener('click', function() {
	    menu1.classList.remove('hidden');
	    menu2.classList.add('hidden');
	    toggleCommon.style.color = '#3b82f6';
	    toggleSequential.style.color = '';
	    localStorage.setItem('menuState', 'menu1');
	  });

	  toggleSequential.addEventListener('click', function() {
	    menu1.classList.add('hidden');
	    menu2.classList.remove('hidden');
	    toggleSequential.style.color = '#3b82f6';
	    toggleCommon.style.color = ''; 
	    localStorage.setItem('menuState', 'menu2');
	  });


	  document.querySelectorAll('.menu a').forEach(link => {
	    link.addEventListener('click', function() {
	      localStorage.setItem('activePage', this.getAttribute('data-page'));
	    });
	  });
	});

  </script>
</body>
</html>
