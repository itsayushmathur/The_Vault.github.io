
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
String id=request.getParameter("ID");
try
{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ayush","ayush");
Statement st=con.createStatement();
int i=st.executeUpdate("DELETE FROM carlist WHERE ID='"+id+"'");
if(i>0)
{
out.println("Data Deleted Successfully!");
RequestDispatcher dispatcher= request.getRequestDispatcher("/carlist.jsp");
                     dispatcher.include(request, response);
}
else
    out.print("Deletion Unsuccessfull");
}
catch(Exception e)
{

e.printStackTrace();
}
%>