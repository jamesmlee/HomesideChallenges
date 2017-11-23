<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Send A Text</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">        
    </head>
    <body>
        <div class="container">
            <h1>Challenge 2: h0tline bling</h1>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                </ul>    
            </div>
            <form class="form-horizontal" action="sendText" method="POST" role="form">
                <fieldset>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="phone">Phone #</label>  
                        <div class="col-md-4">
                            <input id="phone" name="phone" type="text" placeholder="enter a #" class="form-control input-md">

                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="message">Message</label>
                        <div class="col-md-4">                     
                            <textarea class="form-control" id="message" name="message" placeholder="enter a message"></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="button"></label>
                        <div class="col-md-4">
                            <button id="button" name="button" class="btn btn-primary">Send Message</button>
                        </div>
                    </div>

                </fieldset>
            </form>

        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>

