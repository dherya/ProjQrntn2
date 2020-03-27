<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="X-UA-Compatible" content="IE=11" />
<head>
<title>FIT Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<spring:url value="/images/js/bootstrap.min.js" var="bootstrapJs" />
<spring:url value="/images/js/bootstrap-datepicker.min.js" var="datePickerJs" />
<spring:url value="/images/js/jquery.min.js" var="jQueryJs" />
<spring:url value="/images/js/jquery.validate.min.js" var="validationJs" />

<spring:url value="/images/css/bootstrap-datepicker3.standalone.css" var="datePickerCSS" />
<spring:url value="/images/css/bootstrap.min.css" var="bootstrapCSS" />

<script src="${jQueryJs}"></script>
<script src="${datePickerJs}"></script>
<script src="${bootstrapJs}"></script>

<script src="${validationJs}"></script>
<link href="${datePickerCSS}" rel="stylesheet" />
<link href="${bootstrapCSS}" rel="stylesheet" />
	

	
	
<script>
$('#bannerformmodal').on('show', function() {
  	$('#myModal').css('opacity', .5);
  	$('#myModal').unbind();
});
$('#bannerformmodal').on('hidden', function() {
  	$('#myModal').css('opacity', 1);
  	$('#myModal').removeData("modal").modal({});
});

  </script>

<script type="text/javascript">
$(function() {
  $('requestacallform').submit(function(){
    $.post('http://example.com/upload', function() {
      window.location = 'http://google.com';
    });
    return false;
  });
});
</script>

</head>
<body>

<!--  Configuration Management modal -->
<div class="modal fade" id="myModal" data-toggle="modal"   >
        <div class="modal-dialog">
            <div class="modal-content">
             
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
<!--  Configuration Management modal -->
<nav class="navbar navbar-default" role="navigation"  style="height: 16px;">
 <div class="navbar-header">
  
		<div class="form-horizontal" >
		<form  method="POST" action="GenericSearch" >
        <input type="text" name="name" class="form-control" placeholder="SEARCH ITEMS BY NAME"style="width:280px;max-width:280px;display:inline-block;padding-top: 1px;margin-top: 10px;margin-left: 20px;"/>
        <input type="text" name="desc" class="form-control" placeholder="SEARCH ITEMS BY DESCRIPTION"style="width:280px;max-width:280px;display:inline-block;padding-top: 1px;margin-top: 10px;margin-left: 20px;"/>
         	&nbsp;   <button type="submit" class="btn btn-default" style="margin-left:-8px;margin-top:-2px;min-height:36px;">
             <i class="glyphicon glyphicon-search"></i>
        </button>
        </form>
    </div>
		</div>
		<%
     
        if(session.getAttribute("sessionName")==null)
        {
            response.sendRedirect("FITSuite.jsp");
		}
		String userID = (String) session.getAttribute("sessionName"); 
		  ////System.out.println("Session name in jsp: "+userID); 
        %> 
		
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-collapse-1">

			<ul class="nav navbar-nav navbar-right" style="padding-left:10%;">
			<li><h2  style="font-weight: bold;color:4B1388;margin-top:25%;margin-left:-1200%">FIT</h2></li>
			<li><h4  style="font-weight: bold;color:FF6600;margin-top:48%;margin-left:-1200%">Suite</h4></li>
				<li><a href="Home.jsp">Home</a></li>
				
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Management <b class="caret"></b></a>
					
						
						<ul class="dropdown-menu pull-left" role="menu">
							<!-- <li><a href="#addItems" data-toggle="modal">Configuration Management</a></li> -->
							<li><a href="Management.jsp" data-toggle="modal" data-target="#myModal">Configuration Management <span class='glyphicon glyphicon-tasks'></span></a></li>
						<!-- <li><a href="#">Catalog Management</a></li> -->	
					<!-- <li>		<li><a href="#">Admin</a></li> -->	
							 <li class="divider"></li>
<%-- 							<li><li>&nbsp;&nbsp;&nbsp; Logged in as (<%=userID%>)</li> --%>
						
							
						</ul>
				<li>
<%-- 				 <form action=" ${pageContext.request.contextPath}/Logout" method="post"> --%>
<!-- 					  <button class="btn btn-outline-success my-2 my-sm-0" value="Logout" type="submit" style="margin-top:6px">Logout</button> -->
    					
<!-- 					</form>  -->
					</li>
						
						
			
			</ul>

		</div>
	
	</nav>
	
		<br>

</body>
</html>
