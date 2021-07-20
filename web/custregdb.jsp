
<%@page import="javax.swing.text.DateFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    
    String a,b,c,d,e,f,g,h,i,j;
    a=request.getParameter("first_name");
    b=request.getParameter("last_name");
    c=request.getParameter("email");
   
    e=request.getParameter("address");
    f=request.getParameter("contact");
    g=request.getParameter("car");
    h=request.getParameter("dob");
 
    
    try
    {
         Class.forName("oracle.jdbc.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ayush", "ayush");
        Statement stm=con.createStatement();
        
        String date= LocalDate.now().toString();
        String s1="insert into customer(fname,lname,email,address,contact,car,dob,rdate) values('"+a+"','"+b+"','"+c+"','"+e+"','"+f+"','"+g+"','"+h+"','"+date+"')";
       int res= stm.executeUpdate(s1);
        out.println("Customer details Added Successfully!");
            RequestDispatcher dispatcher= request.getRequestDispatcher("/custlist.jsp");
                     dispatcher.include(request, response);
            
        
        
    }
    catch(Exception k)
    {
        
    }
    
    
    %>
