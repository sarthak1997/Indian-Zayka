<!DOCTYPE html>
<%
String msg=(String)session.getAttribute("msg");
String show="SOMETHING WENT WRONG ";
    String param=request.getParameter("param");
    if(msg.equals("Try Login Again"))
    {
        show="INVALID CREDENTIALS";
    }
    else if(param!=null && param.trim().equals("regFailed"))
    {
        show="Error Occured In Registering Customer....Try Again:(";
    }
    else if(param!=null && param.trim().equals("updateFailed"))
    {
        show="Error Occured In Updating Customer....:(";
    }
    else
    {
        show=msg;
    }
%>
<html lang="en">

<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <title>Indian Zayka</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">

   
</head>

<body>
 
    <!--Navbar-->
    <nav class="navbar navbar-toggleable-md navbar-dark fixed-top scrolling-navbar graphite-gradient">
        <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav1" aria-controls="navbarNav1" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">
             <img src="img/indianzaykat.png" style="height: 35px;width: 70px;">
            INDIAN ZAYKA
            </a>
        </div>
    </nav>
    <!--/.Navbar-->
        <!-- Start your project here-->
    <div style="height: 100vh">
        <div class="flex-center">
            <div class="jumbotron text-center">
                <h2 class="h2-responsive mt-0 pt-0"> <i class="fa fa-times fa-4x mb-1 animated rotateIn" style="color:red"></i></h2>
                <br>
                <p class="display-4"><%=show %></p>
                <p class="text-muted animated fadeIn mt-1" style="animation-delay: 0.5s">
                <small>
                    Indian Zayka : Best Tiffin Service in Indore<br>
                    Call us: 0731- 2566333 or 8989505618
                </small>
                </p>
                <div class="text-center animated fadeInUp mt-1" style="animation-delay: 1.5s;"><button class="btn btn-unique btn-lg" id="bt" onclick="go()"><%=msg%></button></div> 
                <script>
                    if("<%=show%>"=="<%=msg%>")
                    document.getElementById("bt").style.visibility='hidden';
                </script>
            </div>
            <!--/.Jumbotron-->
        </div>
    </div>

    <!-- /Start your project here-->
    

    <!-- SCRIPTS -->

    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>

    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/tether.min.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>

    <script>
        function go()
        {
            var innerText="<%=msg%>";
            
            if(innerText.trim()=="Try Login Again")
            {
                window.location="LogIn.jsp";
            }
            else if(innerText.trim()=="Go To Home Page")
            {
                window.location="index.jsp";
            } 
            else if(innerText.trim()=="Create Poll Again")
            {
                window.location="CreatePoll.jsp";
            }
            else if(innerText.trim()=="Register Again")
            {
                window.location="CustomerEntry.jsp";
            }
                
        }
    </script>

</body>

</html>