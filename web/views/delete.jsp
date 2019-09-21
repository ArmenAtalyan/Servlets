<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new user</title>
</head>
<body>
<h1>Super app!</h1>
<h2>Delete users</h2>

<%
    if (request.getAttribute("userName") != null) {
        out.println("<p>User '" + request.getAttribute("userName") + "' deleted!</p>");
    }
%>
<form method="post">
    <%
        List<String> names = (List<String>) request.getAttribute("userNames");
        if (names != null && !names.isEmpty()) {
            for (String s : names) {
                out.println("<p>" + s + "</p>"); %>
    <button type="submit">delete</button>
    <%
            }
        }
    %>
</form>

<button onclick="location.href='/delete'">delete</button>
<button onclick="location.href='/'">Back to main</button>
</body>
</html>
