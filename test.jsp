<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">>
        <title>Think of one Later</title>
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

    <!--****************************-->
    <!--  HTML FORM -->

    <form class = "wrapper two">
          <label for="fname">First name:</label>
          <input type="text" id="fname" name="fname"><br><br>
          <label for="lname">Last name:</label>
          <input type="text" id="lname" name="lname"><br><br>
          <input type="submit" value="Submit">
    </form>

    <h1>
       <%

            if(request.getParameter("fname")!=null){

            out.println("Your First name is:\n" + request.getParameter("fname"));
        %>
            <br>
        <%
            if(request.getParameter("lname")!=null){
                out.println("Your Last name is: " + request.getParameter("lname"));
                }
           }

        %>
    </h1>
<br><br>
  
   

</body>

</html>