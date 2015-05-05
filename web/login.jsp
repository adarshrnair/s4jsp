<%-- 
    Document   : reg
    Created on : 3 May, 2015, 9:09:42 PM
    Author     : bhishma
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/project", "project", "project");
        PreparedStatement ps=null;
        ResultSet rs=null;
        int p=0;
        
        String user=request.getParameter("user");
        String pass=request.getParameter("pass");
        ps=con.prepareStatement("Select username,password from users where username=?");
        
      
        ps.setString(1, user);
      
        rs=ps.executeQuery();
        while(rs.next())
        {
            String s1=rs.getString(1);
            String s2=rs.getString(2);
            if(s1.equals(user) && s2.equals(pass))
            {
                p++;
                session.setAttribute("user", user);
         //       response.sendRedirect("welcome.jsp");
                
             //   break;
            }
        }
        if(p==0)
        {
            %>
            
            
                
            
            <%
            response.sendRedirect("error.html");
        }
        else
        {
                
            response.sendRedirect("welcome.jsp");
        }
    %>
</html>
