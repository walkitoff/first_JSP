<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
        <title>HELLO JSP</title>
        <link rel="stylesheet" type="text/css" href="./style.css">
    </head>
<body>

    <h1>Hello JSP</h1>
    <div class = "wrapper one" >
        <p><%= ("normal text").toUpperCase() %>
        <br><br>
        <b>This is bold </b>
        <br><br>
        <u>This is underlined</u>
        <br><br>
        My favorite color is: <%="blue"%></p>
    </div>
    <p class = "middle">
        <%="String literal using jsp"%><br>
        <%="and calling int variable for y"  %>
    <p/>

    <%!
        int x=1;
        int y=x+1;
    %>


    <p class = "middle">The value of y is: <%= y %></p>
    <br>

<!--***********************************************-->
    <!--  HTML FORM -->

    <form class = "wrapper two">
          <label for="fname">First name:</label>
          <input type="text" id="fname" name="fname"><br><br>
          <label for="lname">Last name:</label>
          <input type="text" id="lname" name="lname"><br><br>
          <input type="submit" value="Submit">
    </form>
<!--************************************************-->
    <container>

           <%

                if(request.getParameter("fname")!=null){
                    out.println("<div class = fname>Your First name is:</div><fname>" + request.getParameter("fname"));
                    out.println("</fname>");
                }
            %>


            <%
                if(request.getParameter("lname")!=null){
                    out.println("<div class = lname>Your Last name is:</div><lname>" + request.getParameter("lname"));
                    out.println("</lname>");
               }

            %>

    </container>
<br><br>
  
   

</body>

</html>
