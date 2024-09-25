<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/DHT/css/io_monitor/vars.css">
  <link rel="stylesheet" href="/DHT/css/io_monitor/style.css">
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
  <div class="auto-con">
    <div class="group-3">
      <div class="header"><%@ include file="/WEB-INF/resources/header/index.jsp" %></div>
       <div id="ft">  <%@ include file="/WEB-INF/resources/footer/index.jsp" %></div>
      
      <div class="main"></div>
      
    </div>

   <div class="io-box-1"></div>
  <div class="io-data-0"></div>
  <div class="io-0"></div>
  <div class="io-data-1"></div>
  <div class="io-1"></div>
  <div class="io-data-2"></div>
  <div class="io-2"></div>
  <div class="io-data-3"></div>
  <div class="io-3"></div>
  <div class="io-data-4"></div>
  <div class="io-4"></div>
  <div class="io-data-5"></div>
  <div class="io-5"></div>
  <div class="io-data-6"></div>
  <div class="io-6"></div>
  <div class="io-data-7"></div>
  <div class="io-7"></div>
  <div class="io-data-8"></div>
  <div class="io-8"></div>
  <div class="io-data-9"></div>
  <div class="io-9"></div>
  <div class="io-data-10"></div>
  <div class="io-10"></div>
  <div class="io-data-11"></div>
  <div class="io-11"></div>
  <div class="io-data-12"></div>
  <div class="io-12"></div>
  <div class="io-data-13"></div>
  <div class="io-13"></div>
  <div class="io-data-14"></div>
  <div class="io-14"></div>
  <div class="io-data-15"></div>
  <div class="io-15"></div>
<!--   
  <div class="io-data-16"></div>
  <div class="io-16"></div>
 -->  
  <div class="io-data-16"></div>
  <div class="io-16"></div>
  
  <div class="io-box-2"></div>
  <div class="io-data-17"></div>
  <div class="io-17"></div>
  <div class="io-data-18"></div>
  <div class="io-18"></div>
  <div class="io-data-19"></div>
  <div class="io-19"></div>
  <div class="io-data-20"></div>
  <div class="io-20"></div>
  <div class="io-data-21"></div>
  <div class="io-21"></div>
  <div class="io-data-22"></div>
  <div class="io-22"></div>
  <div class="io-data-23"></div>
  <div class="io-23"></div>
  <div class="io-data-24"></div>
  <div class="io-24"></div>
  <div class="io-data-25"></div>
  <div class="io-25"></div>
  <div class="io-data-26"></div>
  <div class="io-26"></div>
  <div class="io-data-27"></div>
  <div class="io-27"></div>
  <div class="io-data-28"></div>
  <div class="io-28"></div>
  <div class="io-data-29"></div>
  <div class="io-29"></div>
  <div class="io-data-30"></div>
  <div class="io-30"></div>
  <div class="io-data-31"></div>
  <div class="io-31"></div>
  <div class="io-box-3"></div>
<!--   
  <div class="io-data-33"></div>
  <div class="io-33"></div>
 -->  
  <div class="io-data-32"></div>
  <div class="io-32"></div>
  <div class="io-data-33"></div>
  <div class="io-33"></div>
  <div class="io-data-34"></div>
  <div class="io-34"></div>
  <div class="io-data-35"></div>
  <div class="io-35"></div>
  <div class="io-data-36"></div>
  <div class="io-36"></div>
  <div class="io-data-37"></div>
  <div class="io-37"></div>
  <div class="io-data-38"></div>
  <div class="io-38"></div>
  <div class="io-data-39"></div>
  <div class="io-39"></div>
  <div class="io-data-40"></div>
  <div class="io-40"></div>
  <div class="io-data-41"></div>
  <div class="io-41"></div>
  <div class="io-data-42"></div>
  <div class="io-42"></div>
  <div class="io-data-43"></div>
  <div class="io-43"></div>
  <div class="io-data-44"></div>
  <div class="io-44"></div>
  <div class="io-data-45"></div>
  <div class="io-45"></div>
  <div class="io-data-46"></div>
  <div class="io-46"></div>
  <div class="io-data-47"></div>
  <div class="io-47"></div>
<!--   
  <div class="io-data-50"></div>
  <div class="io-50"></div>
 -->  
  <div class="io-box-4"></div>
  <div class="io-data-48"></div>
  <div class="io-48"></div>
  <div class="io-data-49"></div>
  <div class="io-49"></div>
  <div class="io-data-50"></div>
  <div class="io-50"></div>
  <div class="io-data-51"></div>
  <div class="io-51"></div>
  <div class="io-data-52"></div>
  <div class="io-52"></div>
  <div class="io-data-53"></div>
  <div class="io-53"></div>
  <div class="io-data-54"></div>
  <div class="io-54"></div>
  <div class="io-data-55"></div>
  <div class="io-55"></div>
  <div class="io-data-56"></div>
  <div class="io-56"></div>
  <div class="io-data-57"></div>
  <div class="io-57"></div>
  <div class="io-data-58"></div>
  <div class="io-58"></div>
  <div class="io-data-59"></div>
  <div class="io-59"></div>
  <div class="io-data-60"></div>
  <div class="io-60"></div>
  
  <div class="io-data-61"></div>
  <div class="io-61"></div>
  <div class="io-data-62"></div>
  <div class="io-62"></div>
  <div class="io-data-63"></div>
  <div class="io-63"></div>
<!--   
  <div class="io-data-67"></div>
  <div class="io-67"></div>
 -->  
  <div class="rectangle-5"></div>
  <div class="plc-input" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCINPUT01','cm_in_1');">PLC I/O <br />입력 모니터링</div>
  <div class="plc-input-1" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCINPUT01','cm_in_1');">X080 ~ X0BF</div>
  <div class="plc-input-2" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCINPUT02','cm_in_2');">X0C0 ~ X0FF</div>
  <div class="plc-input-3" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCINPUT03','cm_in_3');">X100 ~ X13F</div>
  <div class="plc-input-4" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCINPUT04','cm_in_4');">X140 ~ X17F</div>
  <div class="plc-input-5" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCINPUT05','cm_in_5');">X180 ~ X1BF</div>
  <div class="plc-input-6" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCINPUT06','cm_in_6');">X1C0 ~ X1FF</div>
  <div class="plc-output" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCOUTPUT01','cm_out_1');">PLC I/O <br />출력 모니터링</div>
  <div class="plc-output-1" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCOUTPUT01','cm_out_1');">Y200 ~ Y23F</div>
  <div class="plc-output-2" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCOUTPUT02','cm_out_2');">Y240 ~ Y27F</div>
  <div class="plc-output-3" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCOUTPUT03','cm_out_3');">Y280 ~ Y2BF</div>
  <div class="plc-output-4" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCOUTPUT04','cm_out_4');">Y2C0 ~ Y2FF</div>
  <div class="plc-output-5" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCOUTPUT05','cm_out_5');">Y300 ~ Y3FF</div>
  <div class="plc-output-6" onclick="getDataSearch('WIA.CM.IOMONITOR.PLCOUTPUT06','cm_out_6');"></div>
</div>

<script>
//"ccf_in_1"
//"WIA.CCF.PLCINPUT01"

    $(document).ready(function() {
	//1번 파라미터 : opcGroup, 2번 파라미터 : dbGroup
    	getDataSearch("WIA.CM.IOMONITOR.PLCINPUT01", "cm_in_1");
    });

	function getDataSearch(opcGroup, dbGroup){
	      getAlarmText(dbGroup);
	      cmAlarmListView(opcGroup);
	}

    function cmAlarmListView(opcGroup) {
    	  $.ajax({
    	    url: "/DHT/ioMonitorCm1/view",
    	    type: "post",
    	    dataType: "json",
    	    data:{"opcGroup":opcGroup},
    	    success: function(result) {

    	      var data = result.multiValues;
    	      let colorMap = {};

    	      for (let key in data) {
    	        for (let keys in data[key]) {
    	          var d = data[key];
    	          
    	          if(d[keys].action == "red"){
    	        	  red(keys, d[keys].value);
    	          }
    	          
/*
    	          if (d[keys].action === 'red' && d[keys].value === true) {
    	            c(keys, true); 
    	          } else {
    	            c(keys, false); 
    	          }

    	          colorMap[keys] = d[keys].action === 'red' ? 'red' : 'defaultColor';
*/
    	        }
    	      }
    	    }
    	  });
    	}


    function red(keys, value){
      if (value == true) {
        $("." + keys).css("background-color", "red");
        $("." + keys).css("color", "white");
      } else {
        $("." + keys).css("background-color", "#f1f1f1");
        $("." + keys).css("color", "black");
      }
    }

    function c(keys, value){
      if (value == true) {
        $("." + keys).css("background-color", "red");
        $("." + keys).css("color", "white");
      } else {
        $("." + keys).css("background-color", "#f1f1f1");
        $("." + keys).css("color", "black");
      }
    }

    function getAlarmText(dbGroup){
      $.ajax({
        url: "/DHT/ioMonitorCm1/data",
        type: "post",
        dataType: "json",
        data: {"dbGroup":dbGroup},
        success: function(result){
          console.log("getAlarmText:", result); 
          var data = result.data;
          
          for (let key in data) {
            $("." + data[key].mi_webclass).text(data[key].mi_plcname);
          }
        }
      });
    }
  </script>
  
</body>
</html>