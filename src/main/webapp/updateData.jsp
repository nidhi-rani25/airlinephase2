<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Airline Reservation</title>
    </head>
    <body>
        <table width="100%">
            <tr height="100px">
                <td colspan="3" align="center"><h1>Airline Reservation</h1></td>
            <td align="right" style="vertical-align: top;"><h3><jsp:include page="header.jsp"></jsp:include></h3></td></tr>
            <tr height="50px" align="center"><td><h3><a href="Home.jsp">Home</a></h3></td>
                <td><h3><a href="ticketreservation.jsp">Ticket Reservation</a></h3></td>
                <td><h3><a href="Payment.jsp">Payment</a></h3></td>
                <td><h3><a href="Book Ticket Report.jsp">Book Ticket Report</a></h3></td></tr>
            <tr height="500px" align="center"><td colspan="4">
                    
                     <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try
    {
          
               String lgnm=request.getParameter("lgnm");
        String source=request.getParameter("source");
        String dest=request.getParameter("dest");
        String date=request.getParameter("date");
        String time=request.getParameter("time");
        
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/airline","root","Vtu@10447");
           
             st = c1.createStatement();
             q="update pass set source='"+source+"',dest='"+dest+"',date='"+date+"',time='"+time+"' where lname='"+lgnm+"'";
             st.executeUpdate(q);
                     out.println("<html>");
                    out.println("<head>");
                    out.println("<link rel='stylesheet' href='style1.css'>");
                    out.println("<h3>Data Updated Successfully.</h3>");
                    out.print("<h3>Name : "+lgnm+"</h3>");
                    out.println("<h3>Source : "+source+"</h3>");
                    out.println("<h3>Destination : "+dest+"</h3>");
                    out.println("<h3>Date : "+date+"</h3>");
                    out.println("<h3>Time : "+time+"</h3>");
                    out.println("<a href='Home.jsp'>Click Here to Continoue..</a>");
                    out.println("</body>");
                    out.println("</html>");
              }
             catch(Exception e)
             {
                    out.println("Invalid Updation<br>");
                     out.println("<a href='Update.jsp'>Try Again</a>");
             }
            
   %>
               </td>
               </tr>
              
        </table>
    </body>
</html>
