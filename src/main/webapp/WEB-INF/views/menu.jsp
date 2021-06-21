<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
 <body>
 	<span id="time" style="float: right; font-size: 20px; font-weight: bold;"></span>
 </body>
<div style="padding: 5px;">
 
   <a href="${pageContext.request.contextPath}/">Home</a>
   |
   <a href="${pageContext.request.contextPath}/userList.do">User List</a>
   |
   <script type="text/javascript">
  function getCurrentTime() {
  	var date = new Date();
  	var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
  	var dayName = days[date.getDay()];
  	var hour = date.getHours()<10?"0"+date.getHours().toString():date.getHours();
  	var minu = date.getMinutes()<10?"0"+date.getMinutes().toString():date.getMinutes();
  	var seco=date.getSeconds()<10?"0"+date.getSeconds().toString():date.getSeconds();
  	var timeInfo = dayName + " | " + date.getDate() + "-" + (date.getMonth()+1) + "-" + date.getFullYear() + " | " + hour + ":" + minu + ":" + seco;
  	var spanObj = document.getElementById("time");
  	spanObj.innerHTML = timeInfo.fontcolor("black");
  }
  getCurrentTime();
  window.setInterval("getCurrentTime()", 1000); 
  </script>  
  
</div>


</head>
</html>