<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/tic/vars.css">
  <link rel="stylesheet" href="/DHT/css/tic/style.css">
<jsp:include page="../include/pluginpage.jsp"/>
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
	  background-color: #FFFFFF;
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
    .date-container {
      display: flex;
      justify-content: right;
      margin-bottom: 20px;
      margin-right: 20px;
    }
    .date-container input {
      margin: 0 10px;
      padding: 12px;
      border: 1px solid #ced4da;
      border-radius: 5px;
      font-size: 16px;
      width: 250px;
    }
    button {
      padding: 10px 20px;
      background-color: #007bff;
      color: white;
      border-radius: 5px;
      cursor: pointer;
      border: none;
      font-size: 16px;
      text-align: center;
      width: 130px;
      margin-left: 20px;
    }
    button:hover {
      background-color: #0056b3;
    }

	.row_select{
		background-color:#9ABCEA !important;
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
		      <div class="date-container">
		        <input type="date" id="startDate" placeholder="시작 날짜">
		        <input type="date" id="endDate" placeholder="종료 날짜">
		        <button onclick="alarmHistoryCm()">조회</button>
		      </div>        
			<div id="alarmHistoryList"></div>
        </div>
     </div>
    </div>
  </div>
<script>
//전역변수
var alarmHistory;

//로드
$(function(){
    var now = new Date();
	var year = now.getFullYear();
	var month = checkDate(now.getMonth()+1);
	var date = checkDate(now.getDate());

	$("#endDate").val(year+"-"+month+"-"+date);
	
	
	var before = new Date();
	before.setFullYear(before.getFullYear(), before.getMonth(), before.getDate()-1);

	var b_year = before.getFullYear();
	var b_month = checkDate(before.getMonth()+1);
	var b_date = checkDate(before.getDate());
	
	$("#startDate").val(b_year+"-"+b_month+"-"+b_date);

	alarmHistoryCm();
});
//이벤트

//함수
	function checkDate(i) {
		var result;
	 	if(i<=9){
	 		result = "0"+i;
		}else{
			result = i;
		}
	   	return result;
	}

function alarmHistoryCm(){
	
	var sdate = $("#startDate").val();
	var edate = $("#endDate").val();
	
	var sdateTime = sdate+" 00:00:00";
	var edateTime = edate+" 23:59:59";
	
	alarmHistory = new Tabulator("#alarmHistoryList", {
		    height:"550px",
		    layout:"fitColumns",
		    selectable:true,	//로우 선택설정
		    tooltips:true,
		    selectableRangeMode:"click",
		    reactiveData:true,
		    headerHozAlign:"center",
		    ajaxConfig:"POST",
		    ajaxLoader:false,
		    ajaxURL:"/DHT/alarmHistoryCm/list",
		    ajaxProgressiveLoad:"scroll",			    			    
		    ajaxParams:{
		    	"sdateTime":sdateTime,
		    	"edateTime":edateTime
		    },
		    placeholder:"조회된 데이터가 없습니다.",
		    paginationSize:20,
		    ajaxResponse:function(url, params, response){
		        //url - the URL of the request
		        //params - the parameters passed with the request
		        //response - the JSON object returned in the body of the response.
				$("#alarmHistoryList .tabulator-col.tabulator-sortable").css("height","29px");
		        return response; //return the response data to tabulator
		    },
		    columns:[
//			    {title:"고유번호", field:"idx"},
		        {title:"태그명", field:"tagname", sorter:"string", width:160,
		        	hozAlign:"center"},
		        {title:"알람명", field:"alarmdesc", sorter:"string", width:500,
		        	hozAlign:"center"},
		        {title:"발생시간", field:"time", sorter:"string", width:210,
		        	hozAlign:"center"},
		        {title:"해제시간", field:"lead_alarmtime", sorter:"string", width:200,
		        	hozAlign:"center"}
		    ],
		    rowFormatter:function(row){
			    var data = row.getData();
			    
			    row.getElement().style.fontWeight = "700";
			    if(data.success_chk == "N" || data.success_chk == "" || data.success_chk == null){
				 	row.getElement().style.backgroundColor = "#F6F6F6";
				}else{
					row.getElement().style.backgroundColor = "#E4F7BA";
				}
			},
			rowClick:function(e, row){

				$("#alarmHistoryList .tabulator-tableHolder > .tabulator-table > .tabulator-row").each(function(index, item){
					
					if($(this).hasClass("row_select")){							
						$(this).removeClass('row_select');
						row.getElement().className += " row_select";
					}else{
						$("#alarmHistoryList div.row_select").removeClass("row_select");
						row.getElement().className += " row_select";	


					}
				});
			}
		});
	}

//다이얼로그

</script>

</body>
</html>
