<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
	        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	
	        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
	
	        <link href="css/bootstrap.min.css" rel="stylesheet">
	        <link href="js/bootstrap.min.js" rel="stylesheet">
    </head>

    <body>
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="_menu.jsp"></jsp:include>

        <h3>Login Page</h3>
        <p style="color: red;">${errorString}</p>

        <form method="POST" action="${pageContext.request.contextPath}/login">
            <table border="0">
                <tr>
                    <td>User Name</td>
                    <td>
                        <input type="text" name="userName" value="${user.userName}" />
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="text" name="password" value="${user.password}" />
                    </td>
                </tr>
                <tr>
                    <td>Remember me</td>
                    <td>
                        <input type="checkbox" name="rememberMe" value="Y" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Submit" /> <a href="${pageContext.request.contextPath}/">Cancel</a></td>
                </tr>
            </table>
        </form>

        <p style="color: blue;">User Name: tom, password: tom001 or jerry/jerry001
        </p>

        <jsp:include page="_footer.jsp"></jsp:include>
    </body>

    </html>