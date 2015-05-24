<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head >
	
	<script>



</script>
<style>
body {
    background-color: #000033;
}
div {
    background-color: lightgrey;
   width:1150px;
	height:1500px;
    padding: 25px;
    border: 25px solid navy;
    margin: 25px;
}

h1 {
    color: white;
    text-align: center;
 	border: 2px solid #a1a1a1;
    padding: 10px 40px; 
    background: #003399;
    width: 800px;
    border-radius: 2px;
}
p.ex {
    color: rgb(0,0,0);
	//font-family: "Harlow Solid Italic";
	font-size: 36px;
}
LOL{
	color:#000000;
	background-color:#CCCCCC;
	padding:1px;
}
div2 {
    color:yellow;
    border: 2px solid #a1a1a1;
    padding: 10px 40px; 
    background: white;
    width: 600px;
    border-radius: 25px;
}
div3 {
    border: 2px solid #a1a1a1;
    padding: 10px 40px; 
    background: #336600;
    width: 1250px;
}
div.img {
    margin: 5px;
    padding: 5px;
    border: 1px solid #0000ff;
    height: auto;
    width: auto;
    float: left;
    text-align: center;
}	

div.img img {
    display: inline;
    margin: 5px;
    border: 1px solid #ffffff;
}

div.img a:hover img {
    border: 1px solid #0000ff;
}

div.desc {
  text-align: center;
  font-weight: normal;
  width: 120px;
  margin: 5px;
  height: 50px;
}
p3    {color:white;
font-weight: bold;
}

  



 

</style>
 <title>Store</title>
</head>
<body  onload="input()">

    <%! int q;%>

 <div>
     
     <center> <h1>Online Stationary Store</center></h1>
    <%
         Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/project", "project", "project");
        PreparedStatement ps=null;
        PreparedStatement ps1=null;
        ResultSet rs=null;
        int p=0;
    
         String s=session.getAttribute("user")+" ";
  
          
        ps1=con.prepareStatement("select count(item) from orders where userid=?");
        ps1.setString(1, s);
       rs=ps1.executeQuery();
       int q=0;
          //String q=rs.getString(1);
       while(rs.next())
       {
        q=rs.getInt(1);}
        %>
     <img src="020-Design-Production-furnishings-fittings-Stationery-stores.jpg" alt="MAHARAJA's EXPRESS" style="float:right" width="500" height="200" border="10" align="center">
     <%
         if(session.getAttribute("user")==null || session.getAttribute("user") == "" || session.getAttribute("user") == " " )
         {
             response.sendRedirect("error.html");
             %>
             }
             
             <p>Welcome <%=session.getAttribute("user")%></p>
             
             <br>
             <p> <a href="cart.jsp">Your cart = <%= q %></a></p>
             <br>
             <br><br><br><br><br><br>
             <br><br><br><br>
<center>
                 <table border="1">
                       <tr>
                         <th>Product</th>
                         <th>Quantity</th>
                     </tr>
             <%
             ps=con.prepareStatement("select name from products where id in (select item from orders where userid=?)");
             ps.setString(1, s);
             ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
             %>
             
             
                   
                     <tr>
                         <td><%=rs1.getString("name")%></td>
                         <td> 
                         <%
                         PreparedStatement ps2=con.prepareStatement("select count(item) from orders where userid=? AND item in(select id from products where name = ?) ");
                         ps2.setString(1, s);
                         ps2.setString(2, rs1.getString("name"));
                         ResultSet rs2=ps2.executeQuery();
                         while(rs2.next())
                         {
                         %>
                         <%= rs2.getInt(1)  %>
                         </td>
                         <%}%>
                         
                     </tr>
                     
                     
                 



             
             
             <%
             }%>
                 </table><br>
             <form id="f3" action="buy.jsp">
                 <input type="submit" value="BUY">
             </form>
                  <a href="logout.jsp">LOG OUT !! </a>
             </center>
             <%
         }
         
         else
         { %>
             <p>Welcome <%=session.getAttribute("user")%></p>
             
             <br>
             <p> <a href="cart.jsp">Your cart = <%= q %></a></p>
             <br>
             <br><br><br><br><br><br>
             <br><br><br><br>
<center>
                 <table border="1">
                       <tr>
                         <th>Product</th>
                         <th>Quantity</th>
                     </tr>
             <%
             ps=con.prepareStatement("select name from products where id in (select item from orders where userid=?)");
             ps.setString(1, s);
             ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
             %>
             
             
                   
                     <tr>
                         <td><%=rs1.getString("name")%></td>
                         <td> 
                         <%
                         PreparedStatement ps2=con.prepareStatement("select count(item) from orders where userid=? AND item in(select id from products where name = ?) ");
                         ps2.setString(1, s);
                         ps2.setString(2, rs1.getString("name"));
                         ResultSet rs2=ps2.executeQuery();
                         while(rs2.next())
                         {
                         %>
                         <%= rs2.getInt(1)  %>
                         </td>
                         <%}%>
                         
                     </tr>
                     
                     
                 



             
             
             <%
             }%>
                 </table><br>
             <form id="f3" action="buy.jsp">
                 <input type="submit" value="BUY">
             </form>
                  <a href="logout.jsp">LOG OUT !! </a>
             </center>
             <%
         }
       
         %>
 



</div>
     
</body>

</html>
