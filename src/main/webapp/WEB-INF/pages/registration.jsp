<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>${title}</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js">

    function post(path, parameters) {
        var form = $('<form></form>');

        form.attr("method", "post");
        form.attr("action", path);

        $.each(parameters, function(key, value) {
            var field = $('<input></input>');

            field.attr("type", "hidden");
            field.attr("name", key);
            field.attr("value", value);

            form.append(field);
        });

        // The form needs to be a part of the document in
        // order for us to be able to submit it.
        $(document.body).append(form);
        form.submit();
    }


    </script>
</head>
<body>
<h2>${title}</h2>
<br/>

        <form name='User Registration'
            		  action="<c:url value='../user/register' />" method='POST'>
        EmailId        <input type="text" id="emailid" name="emailid" placeholder="EmailId"  /><br/>
        FirstName      <input type="text" id="firstName" name="firstName" placeholder="FirstName"  /><br/>
        LastName       <input type="text" id="lastName" name="lastName" placeholder="LastName"  /><br/>
        Phone Number   <input type="text" id="phoneno" name="phoneno" placeholder="Phone Number"  /><br/>
        Password       <input type="password" id="password" name="password" placeholder="Password" /><br/>
        Confirm Password<input type="password" id="confirmpassword" name="confirmpassword" placeholder="Confirm Password" /><br/>
        <button>Submit</button></br>

        </form>


</body>
</html>