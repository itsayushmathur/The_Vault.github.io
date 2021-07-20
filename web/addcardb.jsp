<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    String a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
    a=request.getParameter("company");
    b=request.getParameter("category");
    c=request.getParameter("model");
    d=request.getParameter("ID");
    e=request.getParameter("PRICE");
    f=request.getParameter("FT");
    g=request.getParameter("AM");
    h=request.getParameter("ED");
    i=request.getParameter("SC");
    j=request.getParameter("TT");
    k=request.getParameter("FTC");
    l=request.getParameter("A");
    m=request.getParameter("ENC");
   
    
    
   
    
    try
    {
        Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ayush","ayush");
        Statement stm=con.createStatement();
        String s1="insert into carlist(company,type,model,id,price,FT,AM,ED,SC,TT,FTC,A,ENC) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"')";
        stm.executeQuery(s1);
        out.println("Car Added Successfully!");
        RequestDispatcher dispatcher= request.getRequestDispatcher("/carlist.jsp");
                     dispatcher.include(request, response);
        
    }
    catch(Exception k)
    {
        
    }
    
    
    %>