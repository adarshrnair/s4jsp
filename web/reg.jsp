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
        String name=request.getParameter("name");
        String phone=request.getParameter("phone");
        String user=request.getParameter("user");
        String pass=request.getParameter("pass");
        ps=con.prepareStatement("Insert into users values(?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, phone);
        ps.setString(3, user);
        ps.setString(4, pass);
        p=ps.executeUpdate();
        if(p>0)
        {
            %>
            <script>
                alert("Successfully Registered, You can now log in");
                
            </script>
            <%
            response.sendRedirect("error.html");
        }
        else
        {
            %>
            <script>
                alert("Something went Wrong. Try Again");
                
                </script>
            <%
            response.sendRedirect("register.jsp");
        }
    %>
</html>
