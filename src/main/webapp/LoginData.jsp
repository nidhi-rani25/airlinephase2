<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table width="100%">
            <tr height="100px">
                <td colspan="3" align="center"><h1>Airline Reservation</h1></td>
            <td align="right" style="vertical-align: top;"><h3><jsp:include page="header.jsp"></jsp:include></h3></td></tr>
            <tr height="50px" align="center"><td><h3><a href="">Home</a></h3></td>
                <td><h3><a href="">Ticket Reservation</a></h3></td>
                <td><h3><a href="">Payment</a></h3></td>
                <td><h3><a href="">Book Ticket Report</a></h3></td></tr>
            <tr height="500px" align="center"><td colspan="4">
                    
                    <%
                     Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
        try {
         String lgnm=request.getParameter("lgnm");
        String ps1=request.getParameter("pwd");
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/airline","root","");
             
             
             st=c1.createStatement();
             q="select * from user where lname='"+lgnm+"' and password='"+ps1+"'";
            rs1=st.executeQuery(q);
           if(rs1.next())
          {
              out.println("<html>");
                    out.println("<head>");
                    out.println("<link rel='stylesheet' href='style1.css'>");
              session.setAttribute("username",lgnm);
                out.print("<h3>Welcome " + lgnm+"</h3>");
            out.println("<br><a href='Home.jsp'>Click Here to Continoue..</a>");
            out.println("</head>");
            out.println("</body>");
          }
           else
          {
              out.println("Invalid Login<br>");
              out.println("<a href='Login.jsp'>Try Again</a>");
             }
            
             }
    catch(Exception e)
    {
                    out.println("Invalid Insertion<br>");
                     out.println("<a href='Login.jsp'>Try Again</a>");
    }        
                    %>
               </td>
               </tr>
              
        </table>

    </body>
</html>
