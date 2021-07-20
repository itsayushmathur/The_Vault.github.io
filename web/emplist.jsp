<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car List</title>
</head>
<body style="background-image: url(mclaren_p1_gtr_4k-HD.jpg) " >
    <a href="adminportal.jsp" >Home</a>
</body> <a href="logout.jsp">Logout</a><%
            HttpSession session1= request.getSession(false);
            if(session1.getAttribute("userid")==null)
            {
                response.sendRedirect("index.html");
            }
            
            %>
<center>
    <h1>Employee List</h1>

<table border="5" align="center">
<tr>
    <td>Employee ID</td>
<td>Employee Name</td>
<td>Phn. No.</td>
<td>Email</td>
<td>Address</td>
<td>ACTION</td>
</tr>
<%
try
{
Class.forName("oracle.jdbc.OracleDriver");

 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ayush","ayush");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from employee1 order by EMP_NAME");
while(rs.next())
{
    String I=rs.getString("USERID1"); 
String N=rs.getString("EMP_NAME"); 
String P=rs.getString("PHONE");
String E=rs.getString("EMAIL");
String A=rs.getString("ADDRESS");
%>
<form name="EMPLOYEE LIST" method="post" action="rememp.jsp">

<tr>
    <td><input type="text" name="ID" value="<%out.println(I);%>"></td>
    <td><%out.println(N); %></td>
<td><%out.println(P); %></td>
<td ><%out.println(E); %></td>
<td ><%out.println(A); %></td>
<td><input type="submit" value="Remove Entry"></td>
</tr>
 
</form>
        <%
}
%>
    </table>
    <a href="addemp.jsp" >Add New Employee</a>
    <%
    rs.close();
    stmt.close();
    con.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }
%>
</center>

</html> 

