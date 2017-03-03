<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>

        <c:url value="/css/bootply.css" var="jstlCss" />
        <link href="${jstlCss}" rel="stylesheet" />
    </head>

    <body>
        <script type="text/javascript" src="webjars/jquery/3.1.1/jquery.min.js"></script>
        <script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <div class="container-full">

            <div class="row">

                <div class="col-lg-12 text-center v-center">

                    <h1>Hello Landing</h1>
                    <p class="lead">A sign-up page example for Bootstrap 3</p>

                    <br>

                    <form class="col-lg-12">
                        <div class="input-group input-group-lg col-sm-offset-4 col-sm-4">
                            <input type="text" class="center-block form-control input-lg" title="Enter you email." placeholder="Enter your email address">
                            <span class="input-group-btn"><button class="btn btn-lg btn-primary" type="submit" formmethod="post" formaction="/add">OK</button></span>
                        </div>
                    </form>
                </div>

            </div> <!-- /row -->

            <br><br><br><br><br>

        </div> <!-- /container full -->

    </body>
</html>