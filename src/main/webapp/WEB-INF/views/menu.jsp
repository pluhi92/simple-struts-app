<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
 <body>
    current time:<span id="time"></span>
  </body>
<div style="padding: 5px;">
 
   <a href="${pageContext.request.contextPath}/">Home</a>
   |
   <a href="${pageContext.request.contextPath}/userList.do">User List</a>
   |
   <span style="float: right;"> <%= (new java.util.Date()).toLocaleString()%> </span> 
</div>

<script type="text/javascript">
  function getCurrentTime() {
  	var date = new Date();
  	var hour = date.getHours()<10?"0"+date.getHours().toString():date.getHours();
  	var minu = date.getMinutes()<10?"0"+date.getMinutes().toString():date.getMinutes();
  	var seco=date.getSeconds()<10?"0"+date.getSeconds().toString():date.getSeconds();
  	var timeInfo = date.getFullYear()+""+(date.getMonth()+1)+"month"+date.getDate()+"day"+hour+":"+minu+":"+seco;
  	var spanObj = document.getElementById("time");
  	spanObj.innerHTML = timeInfo.fontcolor("red");
  }
  getCurrentTime();
  window.setInterval("getCurrentTime()", 1000); 
  </script>  
</head>
</html>