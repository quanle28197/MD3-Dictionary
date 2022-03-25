<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
   Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello", "Xin chao");
    dic.put("Book", "Quyen sach");
    dic.put("Cup of coffee", "Coc ca phe");
    dic.put("Beverage", "Do uong");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    } else {
        out.println("Wrong input");
    }
%>
</body>
</html>
