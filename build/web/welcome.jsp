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
        String name=request.getParameter("id");
         ps=con.prepareStatement("Insert into orders values(?,?)");
         ps.setString(2, name);
         String s=session.getAttribute("user")+" ";
         ps.setString(1, s);
          p=ps.executeUpdate();
          
        ps1=con.prepareStatement("select count(item) from orders where userid=?");
        ps1.setString(1, s);
       rs=ps1.executeQuery();
       int q;
          //String q=rs.getString(1);
       while(rs.next())
       {
        //q=rs.getInt(1);
        %>
     <img src="020-Design-Production-furnishings-fittings-Stationery-stores.jpg" alt="MAHARAJA's EXPRESS" style="float:right" width="500" height="200" border="10" align="center">
     <%
         if(session.getAttribute("user")!=null || session.getAttribute("user")!="")
         {
             %>
             
             <p>Welcome <%=session.getAttribute("user")%></p>
             
             <br>
             <p> <a href="cart.jsp">Your cart = <%= rs.getInt(1) %></a></p>
             <br>
             <br><br><br><br><br><br>
             <br><br><br><br>


<div class="img">
 <a target="_blank" href="images/17rul1enowtkwjpg.jpg"><img src="images/17rul1enowtkwjpg.jpg" alt="Klematis" width="110" height="90"></a>
 <div class="desc">Rubber Pencil <br>( Rs 10 )<br><a href="welcome.jsp?id=1">Add to Cart</a> </div>
</div>
<div class="img">
 <a target="_blank" href="images/283_108_3454.JPG"><img src="images/283_108_3454.JPG" alt="Klematis" width="110" height="90"></a>
 <div class="desc">Exam Board <br>( Rs 50 )<br><a href="welcome.jsp?id=2">Add to Cart</a></div>
</div>
<div class="img">
 <a target="_blank" href="images/55654-1008-3ww-l.jpg"><img src="images/55654-1008-3ww-l.jpg" alt="Klematis" width="110" height="90"></a>
 <div class="desc">Drawing Board <br>( Rs 50 )<br><a href="welcome.jsp?id=3">Add to Cart</a></div>
</div>
<div class="img">
 <a target="_blank" href="images/bigstock-pencil-crayons-points-narr-19526543.jpg"><img src="images/bigstock-pencil-crayons-points-narr-19526543.jpg" alt="Klematis" width="110" height="90"></a>
 <div class="desc">Color Pencils <br>( Rs 50 )<br><a href="welcome.jsp?id=4">Add to Cart</a></div> </div>
 <div class="img">
  <a target="_blank" href="images/composition-notebook-570x406.png"><img src="images/composition-notebook-570x406.png" alt="Klematis" width="110" height="90"></a>
 <div class="desc">Note Book <br>( Rs 30 )<br><a href="welcome.jsp?id=5">Add to Cart</a></div></div>
 <div class="img">
   <a target="_blank" href="images/ft-cover.jpg"><img src="images/ft-cover.jpg" alt="Klematis" width="110" height="90"></a>
 <div class="desc">Planner <br>( Rs 30 )<br><a href="welcome.jsp?id=6">Add to Cart</a></div></div>
 <div class="img">
  <a target="_blank" href="images/pen-1.jpeg"><img src="images/pen-1.jpeg" alt="Klematis" width="110" height="90"></a>
 <div class="desc">Fountain Pen <br>( Rs 20 )<br><a href="welcome.jsp?id=7">Add to Cart</a></div></div>
 <div class="img">
   <a target="_blank" href="images/pen_PNG7405.png"><img src="images/pen_PNG7405.png" alt="Klematis" width="110" height="90"></a>
 <div class="desc">Ball Pen <br>( Rs 10 )<br><a href="welcome.jsp?id=8">Add to Cart</a></div></div>
 <div class="img">
 <a target="_blank" href="images/Pencil-4ed084aa75b77_hires.jpg"><img src="images/Pencil-4ed084aa75b77_hires.jpg" alt="Klematis" width="110" height="90"></a>
 <div class="desc">Nataraj Pencils <br>( Rs 5 )<br><a href="welcome.jsp?id=9">Add to Cart</a></div></div>
 <div class="img">
 <a target="_blank" href="images/pens-promotional-metal-moritz-pen.jpg"><img src="images/pens-promotional-metal-moritz-pen.jpg" alt="Klematis" width="110" height="90"></a>
 <div class="desc">Metal Pen <br>( Rs 15 )<br><a href="welcome.jsp?id=10">Add to Cart</a></div></div>
 <div class="img">
 <a target="_blank" href="images/primary_crayon_colors.jpg"><img src="images/primary_crayon_colors.jpg" alt="Klematis" width="110" height="90"></a>
 <div class="desc">Crayons <br>( Rs 25 )<br><a href="welcome.jsp?id=11">Add to Cart</a></div>
</div>



             
             
             <%
         }
         else
         {
             response.sendRedirect("error.html");
         }
       }
         %>
 



</div>
     
</body>

</html>
