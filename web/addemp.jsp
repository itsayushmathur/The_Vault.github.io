
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NEW EMPLOYEE</title>
</head>
<body style="background-image: url(mclaren_765lt_2020_5k_4-HD.jpg) "> <a href="logout.jsp">Logout</a><%
            HttpSession session1= request.getSession(false);
            if(session1.getAttribute("userid")==null)
            {
                response.sendRedirect("index.html");
            }
            
            %>
  <center>
<h1>Registration Form</h1>
<form action="addempdb.jsp" method="post">
  
			<table  align="center">
				<tr>
					<td>Full Name</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td>Email ID</td>
					<td><input type="email" name="email" /></td>
				</tr>
				<tr>
					<td>UserID</td>
					<td><input type="text" name="userid" /></td>
				</tr>
					<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<td>Contact No</td>
					<td><input type="text" name="contact" /></td>
				</tr></table>
			<input type="submit" value="ADD EMPLOYEE" /></form>
</center></body>
</html>