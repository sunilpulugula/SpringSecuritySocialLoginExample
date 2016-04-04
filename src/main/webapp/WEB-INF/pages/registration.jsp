<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>${title}</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js">
    </script>
</head>
<body>
<h2>${title}</h2>
<br/>

        <form id="registrationForm" name='userRegistration'
            		  action="<c:url value='../services/user/register' />" method='POST'>
       <TABLE border="0" cellspacing="5" cellpadding="3">
       <TR>
                   <th> UserId </th>
                   <td><input type="text" id="userId" name="userId" placeholder="UserId"  /></td>
              </TR>
       <TR>
            <th> EmailId </th>
            <td><input type="text" id="email" name="email" placeholder="EmailId"  /></td>
       </TR>
       <TR>
            <th> FirstName </th>
            <td><input type="text" id="firstName" name="firstName" placeholder="FirstName"  /></td>
       </TR>
       <TR>
            <th> LastName   </th>
            <td><input type="text" id="lastName" name="lastName" placeholder="LastName"  /></td>
       </TR>
       <!--TR>
            <th> Phone Number </th>
            <td><input type="text" id="phoneno" name="phoneno" placeholder="Phone Number"  /></td>
       </TR-->
       <TR>
            <th> Password  </th>
            <td><input type="password" id="password" name="password" placeholder="Password" /></td>
       </TR>
       <!--TR>
            <th> Confirm Password </th>
            <td><input type="password" id="confirmpassword" name="confirmpassword" placeholder="Confirm Password" /></td>
       </TR-->
       <TR>
            <th>
                <input type="hidden" id="socialProvider" name="socialProvider" value="NONE" />
                <button id="doRegister">Submit</button>
            </th>
       </TR>
       </TABLE>
        </form>


<script>

    $(document).ready(function () {

        $('#doRegister').click(function () {

            var obj = {};

            $('#registrationForm').serialize().split('&').forEach(function (a) {
                var s = a.split('=');
                obj[s[0]] = s[1];
            });

            obj = $('#registrationForm').serialize();

            $.ajax({
              type: "POST",
              url: '../services/user/register',
              data: obj,
              dataType: 'json',
              success: function () {
                alert('success');
              }
            });

            return false;
        });

    });

</script>

</body>
</html>