<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Basic Form Example</title>
</head>
<body>
    <h1>Basic Form Example</h1>

    <form action="index.jsp" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <input type="submit" value="Submit">
    </form>

    <%
        // Check if form data is present
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        if (name != null && email != null) {
            out.println("<h2>Form Data Received</h2>");
            out.println("<p>Name: " + name + "</p>");
            out.println("<p>Email: " + email + "</p>");
        }
    %>
</body>
</html>
