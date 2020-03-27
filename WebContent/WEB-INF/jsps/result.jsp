<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@ page import="co.edureka.quiz.SendAttachment" %>  --%>

<%@ page import="java.util.*" %>
<%-- <%@ page import="javax.mail.*" %> --%>
<%-- <%@ page import="javax.mail.internet.*" %> --%>
<%@ page import="javax.activation.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
}

</style>
<title>Result</title>
</head>
<body>

<div style="position:absolute;left:500px;top:70px">
<h3 align="center">Quiz Result</h3>
<table border=1>
        <tr>
            <td class="head">
                Quiz :
            </td>
            <td>
                <span id="lblSubject">${sessionScope.exam}</span></td>
        </tr>
        <tr>
            <td class="head">
                Starting Time :
            </td>
            <td >
                <span id="lblStime">${sessionScope.started}</span></td>
        </tr>
        
              
                <tr>
            <td class="head">
               No. of Questions :
            </td>
            <td>
                <span id="lblNquestions">${sessionScope.totalNumberOfQuizQuestions}</span></td>
        </tr>
        
                <tr>
            <td class="head">
                No. of correct answers :
            </td>
            <td>
                <span id="lblNcans">${requestScope.result}</span></td>
        </tr>
        
    </table>

<c:if test="${requestScope.result >= 5}">
   <h3 align="center">Passed</h3>
</c:if>
<c:if test="${requestScope.result < 5}">
   <h3 align="center">Failed</h3>
</c:if>


<h2 align="center"><a href='${pageContext.request.contextPath}'>Take Another Exam</a></h2>


<%-- <%  --%>


class SendAttachment{
	 public  void main(String [] args){

	  String to="shashi.shekhar.osv@fedex.com";
	  final String user="5190753";
	  final String password="Krish241";
	 
	//  1) get the session object   
	  Properties properties = System.getProperties();
	  properties.setProperty("mail.smtp.host","smtp.mail.fedex.com");
	  properties.put("mail.smtp.auth","true");
	  properties.put("mail.smtp.port","25");

	  
	//  
	  
// 	  Session session = Session.getDefaultInstance(properties,
// 	   new javax.mail.Authenticator() {
// 	   protected PasswordAuthentication getPasswordAuthentication() {
// 	   return new PasswordAuthentication(user,password);
// 	   }
// 	  });
	   
	  //2) compose message   
// 	  try{
// 	    MimeMessage message = new MimeMessage(session);
// 	    message.setFrom(new InternetAddress(user));
// 	    message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
// 	    message.setSubject("Message Aleart");
	    
	       
// 	    BodyPart messageBodyPart1 = new MimeBodyPart();
// 	    messageBodyPart1.setText("EXAM RESULTS, Total questions 10, Correct 5");
	    
// 	    //4) create new MimeBodyPart object and set DataHandler object to this object    
// //	    MimeBodyPart messageBodyPart2 = new MimeBodyPart();
// 	//
// //	    String filename = "SendAttachment.java";//change accordingly
// //	    DataSource source = new FileDataSource(filename);
// //	    messageBodyPart2.setDataHandler(new DataHandler(source));
// //	    messageBodyPart2.setFileName(filename);
	   
	   
// 	    //5) create Multipart object and add MimeBodyPart objects to this object    
// 	    Multipart multipart = new MimeMultipart();
// 	    multipart.addBodyPart(messageBodyPart1);
// //	    multipart.addBodyPart(messageBodyPart2);

// 	    //6) set the multiplart object to the message object
// 	    message.setContent(multipart );
	   
// 	    //7) send message
// 	    Transport.send(message);
	 
// 	   System.out.println("message sent....");
// 	   }catch (MessagingException ex) {ex.printStackTrace();}
// 	 }
	}


%>

</div>

</body>
</html>