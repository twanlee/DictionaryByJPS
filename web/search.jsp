<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/2/2020
  Time: 10:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Find</title>
</head>
<body>
<%!
    Map<String, String> dictionary = new HashMap<>();
%>
<%
    dictionary.put("hello","Chào");
    dictionary.put("hi","Chào");
    dictionary.put("greet","Chào");
    String search = request.getParameter("inputValue");
    String result = dictionary.get(search);
    if(result!=null){
        out.println("Word " + search);
        out.println("Result " +result );
    }else
        out.print("Not Found");
%>
</body>
</html>
