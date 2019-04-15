<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
    <h1>Super app!</h1>
            <h2>Users</h2>
        <%
            List<String> names = (List<String>) request.getAttribute("userNames");
            if (names != null && !names.isEmpty()) {
                for (String s : names) {
                    out.println("<p>" + s + "</p>");
                }
            } else out.println("<p>There are no users yet!</p>");
        %>
    <button onclick="location.href='/'">Delete</button>
    <button onclick="location.href='/'">Update</button>
    <button onclick="location.href='/'">Back to main</button>
</body>
</html>