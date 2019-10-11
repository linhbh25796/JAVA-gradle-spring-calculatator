<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/11/2019
  Time: 9:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<div id="output"></div>
<form id="myForm" method="get" action="calculators">
    <div>
        <input type="text" name="first" placeholder="Input number">
        <input type="text" name="second" placeholder="Input number">
        <input type="hidden" id="operator" name="operator" value="">
    </div>
    <br>
    <div>

        <input type="button" onclick="_submit('+')" value="Addition">
        <input type="button" onclick="_submit('-')" value="Subtraction">
    <input type="button" onclick="_submit('*')" value="Multiplication">
    <input type="button" onclick="_submit('/')" value="Division">
    </div>
    <div>
        <h2>Result : ${result}
        </h2>
    </div>

    <script>
        function print(x) {
            document.getElementById("output").innerHTML += x;
        }
        function _submit(operator) {
           var x= document.getElementById("operator");
           x.value = operator;
            document.getElementById("myForm").submit();
        }
    </script>
</form>
</body>
</html>
