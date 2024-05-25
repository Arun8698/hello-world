<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Console</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .login-container {
            width: 300px;
            margin: 0 auto;
            padding-top: 50px;
        }
        .login-container h1 {
            text-align: center;
        }
        .login-container form {
            display: flex;
            flex-direction: column;
        }
        .login-container label,
        .login-container input {
            margin-bottom: 10px;
        }
        .login-container input[type="submit"] {
            cursor: pointer;
        }
        .message {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="index.jsp" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <input type="submit" value="Login">
        </form>

        <div class="message">
            <%
                // Simulate a simple authentication check
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                if (username != null && password != null) {
                    if ("admin".equals(username) && "password".equals(password)) {
                        out.println("<p>Welcome, " + username + "!</p>");
                    } else {
                        out.println("<p>Invalid username or password</p>");
                    }
                }
            %>
        </div>
    </div>
</body>
</html>
