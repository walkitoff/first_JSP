<!DOCTYPE html>
<html>
        <head>
            <title>HELLO JSP</title>
            <link rel="stylesheet" type="text/css" href="./style.css">
        </head>
    <body>

        <h1>Hello JSP</h1>
        <div class = "wrapper one" >
            <p><%= ("normal text").toUpperCase()%><%= " using .toUpperCase()" %>
            <br><br>
            <b>Bold </b>
            <br><br>
            <u>Underlined</u>
            <br><br>
            My favorite color is: <%="blue"%></p>
        </div>
        <%
            int x=1;
            int y=x+1;
        %>
        <p class = "middle">
            <%="Returning String literal using jsp."%><br>
            <%="And printing int variable y:"  %>
            <br><br>
            The value of y is: <span id="y"><%= y %></span>
        <p/>
        <br>

<!-- ______________________HTML FORM______________________ -->

        <form class = "wrapper form">
            <label for="firstname">First name:</label>
            <input type="text" id="firstname" name="firstname"><br><br>

<!--**********COMMENT OUT LAST NAME FORM BLOCK *************************
            <label for="lastname">Last name:</label>
            <input type="text" id="lastname" name="lastname"><br><br>
***********************************************************************-->

            <label for="age">      Age:</label>
            <input type="text" id="age" name="age"><br><br>
            <input type="submit" value="Submit">
        </form>
<!-- ______________________END FORM______________________ -->

        <br><br>
        <container>

           <%

                if(request.getParameter("firstname")!= null){
                    out.println("<div class = formLabel>Your First name is:</div><div>" + request.getParameter("firstname"));
                    out.println("</div>");
                }
//********************* COMMENT OUT LAST NAME FORM BLOCK******************************
                 if(request.getParameter("lastname")!= null){
                     out.println("<div class = formLabel>Your Last name is:</div><div>" + request.getParameter("lastname"));
                     out.println("</div>");
                }
//**************************************************************************************
                 if(request.getParameter("age")!= null){
                     out.println("<div class = formLabel>Your age is:</div><div>" + request.getParameter("age"));
                     out.println("</div>");
                }

            %>

        </container>
        <br><br>
  
   

    </body>

</html>
