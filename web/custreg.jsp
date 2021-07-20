<%-- 
    Document   : custreg
    Created on : 19 Mar, 2020, 1:54:15 PM
    Author     : dolly
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Customer Registration Form</title>
</head>
<body style="background-image: url(17301712edc22ec4d85bf35a21d65bd3.jpg) ">  <a href="logout.jsp" style="color: white">Logout</a><%
            HttpSession session1= request.getSession(false);
            if(session1.getAttribute("userid")==null)
            {
                response.sendRedirect("index.html");
            }
            
            %>
            <br><a href="empportal.jsp" style="color: white">Home</a>
     <center>
<h1>New Customer Registration Form</h1>
        <form action="custregdb.jsp" method="post">
			<table  style="with: 100%">
                           
				<tr>
					<td style="color: white">First Name</td>
					<td><input type="text" name="first_name" /></td>
				</tr>
				<tr>
					<td style="color: white">Last Name</td>
					<td><input type="text" name="last_name" /></td>
				</tr>
				<tr>
					<td style="color: white">EmailID</td>
					<td><input type="emailk" name="email" /></td>
				</tr>
					
				<tr>
					<td style="color: white">Address</td>
                                        <td><textarea name="address" rows="3" cols="20">

</textarea></td>
				</tr>
				<tr>
					<td style="color: white">Contact No</td>
					<td><input type="number" name="contact" /></td>
				</tr>
                        <tr>
                            </tr>
				<tr>
					<td style="color: white">Date Of Birth</td>
					<td><input type="date" name="dob" /></td>
				</tr>
<!--                        <tr>
					<td>Car Category</td>
					<td><select name="category">
                                             <option value="Hacthback">Hatchback</option>
                                                 <option value="SUV">SUV</option>
                                                 <option value="SportS">Sports</option>
                                                  <option value="Sedan">Sedan</option>
                                            </select></td>
				</tr>-->
                        <tr>
					<td style="color: white">Car Select</td>
                                        <td><select name="car">
                                        <%
Class.forName("oracle.jdbc.OracleDriver");

 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ayush","ayush");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from carlist order by type");
while(rs.next())
{
    String C=rs.getString("company"); 
     String T=rs.getString("TYPE");
String M=rs.getString("MODEL");
              String I=rs.getString("ID");
 String P=rs.getString("PRICE");
%>
					
                                             <option value="<%out.print(I);%>"><%out.print(C+" /");%><%out.print(I+" /");%><%out.print(T+" /");%><%out.print(M+" /");%><%out.print(P+" ");%></option>
                                             
                                             <%}%>  </select></td>
				</tr></table>
			<input type="submit" value="Submit" /></form> </center>
</body>
</html>
