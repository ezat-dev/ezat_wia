<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Header - darkmode</title>
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

      main {
        width: 100vw;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #e5e5e5;
      }

      .site__header {
        background-color: white;
        padding: 0 2rem;
        width: 1918px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-radius: 0.5rem;
        transition: all 0.25s cubic-bezier(0.42, 0, 0, 1);
        box-shadow: 0px 2px 4px -1px #0000000f, 0px 4px 6px -1px #0000001a;
      }

      .site__header.darkmode {
        background-color: #123478;
        color: white;
      }

      .site__header.darkmode .menu li a {
        color: white;
      }

      .site__header.darkmode .menu li a:hover {
        color: #3b82f6;
      }

      .site__header.darkmode .menu li a.active:hover {
        color: white;
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

      .menu li {
        height: 100%;
        display: flex;
        align-items: center;
        margin: 0 0.8rem;
      }

      .menu li a {
        text-decoration: none;
        color: black;
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
      }

      .menu li a.active {
        color: white;
      }

      .menu li a.active:hover {
        color: white;
      }

      .menu li a.active:before {
        background-color: #3b82f6;
        z-index: -1;
        transform: translateY(0%);
      }

      .menu li a:before {
        position: absolute;
        top: 0;
        left: 0;
        content: '';
        width: 100%;
        height: 100%;
        background-color: transparent;
        transform: translateY(100%);
        transition: all 0.25s cubic-bezier(0.42, 0, 0, 1);
      }

      .menu li a:after {
        position: absolute;
        left: 0;
        bottom: 0;
        content: '';
        width: 100%;
        height: 0px;
        background-color: #3b82f6;
        transition: all 0.1s ease-in-out;
      }

      .menu li a:hover {
        color: #3b82f6;
      }

      .menu li a:hover:after {
        width: 100%;
        height: 4px;
      }

      .toggle {
        position: relative;
        display: flex;
        background-color: #e5e5e5;
        width: 38px;
        height: 22px;
        border-radius: 22px;
        cursor: pointer;
      }

      .toggle--switch {
        position: absolute;
        width: 18px;
        height: 18px;
        background-color: white;
        border-radius: 18px;
        top: 2px;
        left: 2px;
        transition: all 0.3s cubic-bezier(0.42, 0, 0, 1);
      }

      .toggle.active {
        background-color: #3b82f6;
      }

      .toggle.active .toggle--switch {
        left: calc(100% - 20px);
      }
    </style>
  </head>
  <body>
    <main>
      <header class="site__header">
        <h1 class="brand">lo<span class="brand--point">go</span></h1>
        <nav>
          <ul class="menu">
            <li><a href="#" class="active">운용 현황</a></li>
            <li><a href="#">제어 화면</a></li>
            <li><a href="#">트렌드</a></li>
            <li><a href="#">알람 내역</a></li>
            <li><a href="#">알람</a></li>
            <li><a href="#">알람 랭킹</a></li>
            <li><a href="#">처리품 데이터</a></li>
          </ul>
        </nav>
        <div class="toggle">
          <span class="toggle--switch"></span>
        </div>
      </header>
    </main>
    <script>
      const wrapper = document.querySelector('.site__header');
      const toggleButton = document.querySelector('.toggle');
      const menu = document.querySelector('.menu');
      const menuItem = Array.from(menu.querySelectorAll('li a'));

      toggleButton.addEventListener('click', (e) => {
        const target = e.currentTarget;
        if (!target.classList.contains('active')) {
          target.classList.add('active');
          wrapper.classList.add('darkmode');
        } else {
          target.classList.remove('active');
          wrapper.classList.remove('darkmode');
        }
      });

      menu.addEventListener('click', (e) => {
        let target = e.target;
        menuItem.forEach((item) => item.classList.remove('active'));
        target.classList.add('active');
      });
    </script>
  </body>
</html>
