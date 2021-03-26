package Register;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;


public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
            res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        
        Connection c1=null;
        Statement st=null;
        ResultSet rs;
        String q="";
   
    
           try {
               String nm1=req.getParameter("nm");
        String lgnm1=req.getParameter("lgnm");
        String ps1=req.getParameter("ps");
        String mb1=req.getParameter("mb");
        String gen1=req.getParameter("gen");
        String country1=req.getParameter("country");
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/airline","root","Vtu@10447");
             out.println("Connection Succesful<br>");
             
             st=c1.createStatement();
             q="insert into user(name,lname,password,mobile,gen,country) values('"+nm1+"','"+lgnm1+"','"+ps1+"','"+mb1+"','"+gen1+"','"+country1+"')";
             st.executeUpdate(q);
            out.println("Name : "+nm1+"<br>");
            out.println("Login Name : "+lgnm1+"<br>");
            out.println("Mobile No : "+ mb1+"<br>");
            out.println("Gender : "+ gen1+"<br>");
            out.println("Country : "+ country1+"<br>");
            out.println("<a href='Home.jsp'>Click Here to Continoue..</a>");
             }
            catch(Exception e)
            {
                out.println("Connection Fail..");
            }  
     
            
         //   st.close();
         //    c1.close();
             
    }    
    }

