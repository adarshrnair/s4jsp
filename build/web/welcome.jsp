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
	height:400px;
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
p3    {color:white;
font-weight: bold;
}

  



 

</style>
 <title>Store</title>
</head>
<body  onload="input()">



 <div>
     
     <center> <h1>Online Stationary Store</center></h1>
    
     <img src="020-Design-Production-furnishings-fittings-Stationery-stores.jpg" alt="MAHARAJA's EXPRESS" style="float:right" width="500" height="200" border="10" align="center">
     <%
         if(session.getAttribute("user")!=null || session.getAttribute("user")!="")
         {
             %>
             
             <p>Welcome <%=session.getAttribute("user")%></p>
             
             
             <%
         }
         else
         {
             response.sendRedirect("error.html");
         }
         %>
 



</div>
     
</body>

</html>
