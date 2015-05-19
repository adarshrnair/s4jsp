<%-- 
    Document   : register
    Created on : 3 May, 2015, 9:01:09 PM
    Author     : bhishma
--%>

<html>
<head >
	
	<script>
function name1()
{
    var x=document.getElementById("p1");
    var p=/^[a-zA-Z]+$/;
    if(!p.test(x.value))
    {
        alert("INVALID NAME ");
    }
    
    
}

function phone1()
{
    var x=document.getElementById("p2");
    var p=/^[0-9]{10}$/;
    if(!p.test(x.value))
    {
        alert("ENTER A VALID PHONE NUMBER");
    }
}


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
    
<br><br>
<center>
    Kindly Fill in the form ! 
    <br>
    <form name="f3" action="reg.jsp" method="POST">
        First Name: <input id="p1" required type="text" name="name" onblur="name1()">
        <br>Phone &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input id="p2" required type="text" name="phone" onBlur="phone1()">
        <br>username : <input required type="text" name="user">
        <br>password : <input required type="password" name="pass">
        <br> <input type="submit" value="Register">
    </form>
</center>
 <br><br>
 



</div>
     
</body>

</html>
