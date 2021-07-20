<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    String a,b,c,d,e,f;
    a=request.getParameter("name");
    b=request.getParameter("email");
    c=request.getParameter("userid");
    d=request.getParameter("password");
    e=request.getParameter("address");
    f=request.getParameter("contact");
  
   
    
    try
    {
        Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ayush","ayush");
        Statement stm=con.createStatement();
        String s1="insert into employee1(USERID1,PASSWORD1,EMAIL,PHONE,ADDRESS,EMP_NAME) values('"+c+"','"+d+"','"+b+"','"+f+"','"+e+"','"+a+"')";
        stm.executeQuery(s1);
        out.println("Employee Added Successfully!");
        RequestDispatcher dispatcher= request.getRequestDispatcher("/emplist.jsp");
                     dispatcher.include(request, response);
        
    }
    catch(Exception k)
    {
        
    }
    
    
    %>