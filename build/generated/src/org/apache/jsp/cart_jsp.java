package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 int q;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head >\n");
      out.write("\t\n");
      out.write("\t<script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("<style>\n");
      out.write("body {\n");
      out.write("    background-color: #000033;\n");
      out.write("}\n");
      out.write("div {\n");
      out.write("    background-color: lightgrey;\n");
      out.write("   width:1150px;\n");
      out.write("\theight:1500px;\n");
      out.write("    padding: 25px;\n");
      out.write("    border: 25px solid navy;\n");
      out.write("    margin: 25px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h1 {\n");
      out.write("    color: white;\n");
      out.write("    text-align: center;\n");
      out.write(" \tborder: 2px solid #a1a1a1;\n");
      out.write("    padding: 10px 40px; \n");
      out.write("    background: #003399;\n");
      out.write("    width: 800px;\n");
      out.write("    border-radius: 2px;\n");
      out.write("}\n");
      out.write("p.ex {\n");
      out.write("    color: rgb(0,0,0);\n");
      out.write("\t//font-family: \"Harlow Solid Italic\";\n");
      out.write("\tfont-size: 36px;\n");
      out.write("}\n");
      out.write("LOL{\n");
      out.write("\tcolor:#000000;\n");
      out.write("\tbackground-color:#CCCCCC;\n");
      out.write("\tpadding:1px;\n");
      out.write("}\n");
      out.write("div2 {\n");
      out.write("    color:yellow;\n");
      out.write("    border: 2px solid #a1a1a1;\n");
      out.write("    padding: 10px 40px; \n");
      out.write("    background: white;\n");
      out.write("    width: 600px;\n");
      out.write("    border-radius: 25px;\n");
      out.write("}\n");
      out.write("div3 {\n");
      out.write("    border: 2px solid #a1a1a1;\n");
      out.write("    padding: 10px 40px; \n");
      out.write("    background: #336600;\n");
      out.write("    width: 1250px;\n");
      out.write("}\n");
      out.write("div.img {\n");
      out.write("    margin: 5px;\n");
      out.write("    padding: 5px;\n");
      out.write("    border: 1px solid #0000ff;\n");
      out.write("    height: auto;\n");
      out.write("    width: auto;\n");
      out.write("    float: left;\n");
      out.write("    text-align: center;\n");
      out.write("}\t\n");
      out.write("\n");
      out.write("div.img img {\n");
      out.write("    display: inline;\n");
      out.write("    margin: 5px;\n");
      out.write("    border: 1px solid #ffffff;\n");
      out.write("}\n");
      out.write("\n");
      out.write("div.img a:hover img {\n");
      out.write("    border: 1px solid #0000ff;\n");
      out.write("}\n");
      out.write("\n");
      out.write("div.desc {\n");
      out.write("  text-align: center;\n");
      out.write("  font-weight: normal;\n");
      out.write("  width: 120px;\n");
      out.write("  margin: 5px;\n");
      out.write("  height: 50px;\n");
      out.write("}\n");
      out.write("p3    {color:white;\n");
      out.write("font-weight: bold;\n");
      out.write("}\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("</style>\n");
      out.write(" <title>Store</title>\n");
      out.write("</head>\n");
      out.write("<body  onload=\"input()\">\n");
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write(" <div>\n");
      out.write("     \n");
      out.write("     <center> <h1>Online Stationary Store</center></h1>\n");
      out.write("    ");

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
        
      out.write("\n");
      out.write("     <img src=\"020-Design-Production-furnishings-fittings-Stationery-stores.jpg\" alt=\"MAHARAJA's EXPRESS\" style=\"float:right\" width=\"500\" height=\"200\" border=\"10\" align=\"center\">\n");
      out.write("     ");

         if(session.getAttribute("user")==null || session.getAttribute("user") == "" || session.getAttribute("user") == " " )
         {
             response.sendRedirect("error.html");
             
      out.write("\n");
      out.write("             }\n");
      out.write("             \n");
      out.write("             <p>Welcome ");
      out.print(session.getAttribute("user"));
      out.write("</p>\n");
      out.write("             \n");
      out.write("             <br>\n");
      out.write("             <p> <a href=\"cart.jsp\">Your cart = ");
      out.print( q );
      out.write("</a></p>\n");
      out.write("             <br>\n");
      out.write("             <br><br><br><br><br><br>\n");
      out.write("             <br><br><br><br>\n");
      out.write("<center>\n");
      out.write("                 <table border=\"1\">\n");
      out.write("                       <tr>\n");
      out.write("                         <th>Product</th>\n");
      out.write("                         <th>Quantity</th>\n");
      out.write("                     </tr>\n");
      out.write("             ");

             ps=con.prepareStatement("select name from products where id in (select item from orders where userid=?)");
             ps.setString(1, s);
             ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
             
      out.write("\n");
      out.write("             \n");
      out.write("             \n");
      out.write("                   \n");
      out.write("                     <tr>\n");
      out.write("                         <td>");
      out.print(rs1.getString("name"));
      out.write("</td>\n");
      out.write("                         <td> \n");
      out.write("                         ");

                         PreparedStatement ps2=con.prepareStatement("select count(item) from orders where userid=? AND item in(select id from products where name = ?) ");
                         ps2.setString(1, s);
                         ps2.setString(2, rs1.getString("name"));
                         ResultSet rs2=ps2.executeQuery();
                         while(rs2.next())
                         {
                         
      out.write("\n");
      out.write("                         ");
      out.print( rs2.getInt(1)  );
      out.write("\n");
      out.write("                         </td>\n");
      out.write("                         ");
}
      out.write("\n");
      out.write("                         \n");
      out.write("                     </tr>\n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                 \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("             \n");
      out.write("             \n");
      out.write("             ");

             }
      out.write("\n");
      out.write("                 </table><br>\n");
      out.write("             <form id=\"f3\" action=\"buy.jsp\">\n");
      out.write("                 <input type=\"submit\" value=\"BUY\">\n");
      out.write("             </form>\n");
      out.write("                  <a href=\"logout.jsp\">LOG OUT !! </a>\n");
      out.write("             </center>\n");
      out.write("             ");

         }
         
         else
         { 
      out.write("\n");
      out.write("             <p>Welcome ");
      out.print(session.getAttribute("user"));
      out.write("</p>\n");
      out.write("             \n");
      out.write("             <br>\n");
      out.write("             <p> <a href=\"cart.jsp\">Your cart = ");
      out.print( q );
      out.write("</a></p>\n");
      out.write("             <br>\n");
      out.write("             <br><br><br><br><br><br>\n");
      out.write("             <br><br><br><br>\n");
      out.write("<center>\n");
      out.write("                 <table border=\"1\">\n");
      out.write("                       <tr>\n");
      out.write("                         <th>Product</th>\n");
      out.write("                         <th>Quantity</th>\n");
      out.write("                     </tr>\n");
      out.write("             ");

             ps=con.prepareStatement("select name from products where id in (select item from orders where userid=?)");
             ps.setString(1, s);
             ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
             
      out.write("\n");
      out.write("             \n");
      out.write("             \n");
      out.write("                   \n");
      out.write("                     <tr>\n");
      out.write("                         <td>");
      out.print(rs1.getString("name"));
      out.write("</td>\n");
      out.write("                         <td> \n");
      out.write("                         ");

                         PreparedStatement ps2=con.prepareStatement("select count(item) from orders where userid=? AND item in(select id from products where name = ?) ");
                         ps2.setString(1, s);
                         ps2.setString(2, rs1.getString("name"));
                         ResultSet rs2=ps2.executeQuery();
                         while(rs2.next())
                         {
                         
      out.write("\n");
      out.write("                         ");
      out.print( rs2.getInt(1)  );
      out.write("\n");
      out.write("                         </td>\n");
      out.write("                         ");
}
      out.write("\n");
      out.write("                         \n");
      out.write("                     </tr>\n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                 \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("             \n");
      out.write("             \n");
      out.write("             ");

             }
      out.write("\n");
      out.write("                 </table><br>\n");
      out.write("             <form id=\"f3\" action=\"buy.jsp\">\n");
      out.write("                 <input type=\"submit\" value=\"BUY\">\n");
      out.write("             </form>\n");
      out.write("                  <a href=\"logout.jsp\">LOG OUT !! </a>\n");
      out.write("             </center>\n");
      out.write("             ");

         }
       
         
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("     \n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
