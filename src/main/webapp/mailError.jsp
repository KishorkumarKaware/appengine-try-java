<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
     span { color:red;} 
  </style>
  <script>
     var count = 3;//global variable
     function schedule() {
       var id = setInterval(function(){
         var sTag = document.getElementById("time");
         sTag.innerHTML = count;
         count--;
         if(count==-1) {
            clearInterval(id);//stop timer
            window.location="contact.jsp";
         }
       },1000);
     }
  </script>   
 </head>
 <body onload="schedule()">
  <h1>Sorry!!! Mail sending failed...Please try again in..<span id='time'></span> seconds</h1>   
 </body>