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
    
    menu, ol, ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
    }
    
    .footer {
      margin-top: 85px;
    }

	.main {
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  height: 885px; 
	  background-color: #f0f0f0;
	  padding: 32px; 
	}
	
	.content {
	  background-color: #d3d3d3;
	  padding: 20px;
	  border-radius: 8px;
	  text-align: left;
	  width: 1580px; 
	  height: 700px;
	  margin-bottom: 55px;
	  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
	  overflow-y: hidden;
	  overflow-x: hidden;
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
  <div class="group-2">
    <div class="wrapper">
      <div class="header">
        <%@ include file="/WEB-INF/resources/header/index.jsp" %>
         <div id="ft">  <%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
      </div>
      <div class="main">    
        <div class="content">
          연속로 알람 랭킹
        </div>
      </div>
  
    </div>
  </div>
</body>
</html>
