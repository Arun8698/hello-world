<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>College Admission Form</title>
<!-- Include CSS file for styling if needed -->
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h2>College Admission Application</h2>
<form action="submitAdmissionForm" method="post">
    <fieldset>
        <legend>Personal Information:</legend>
        First Name: <input type="text" name="firstName" required><br>
        Last Name: <input type="text" name="lastName" required><br>
        Email: <input type="email" name="email" required><br>
        Date of Birth: <input type="date" name="dob" required><br>
    </fieldset>
    <fieldset>
        <legend>Educational Background:</legend>
        High School Name: <input type="text" name="highSchoolName" required><br>
        High School GPA: <input type="number" step="0.01" name="highSchoolGPA" required><br>
        SAT Score: <input type="number" name="satScore"><br>
        ACT Score: <input type="number" name="actScore"><br>
    </fieldset>
    <input type="submit" value="Submit Application">
</form>
</body>
</html>
