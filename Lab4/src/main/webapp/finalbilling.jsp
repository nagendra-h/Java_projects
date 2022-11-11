<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <!-- <link href="s1.css" type="text/css" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<style>
body{
  background-image: url("https://st3.depositphotos.com/1103339/13209/v/1600/depositphotos_132095056-stock-illustration-abstract-seamless-pattern-in-postmodern.jpg");
}
div{
  margin: 2em 5em 3em 5em;

  padding: 2em 6em 2em 6em;
  background: rgb(2,0,36);
background: linear-gradient(117deg, rgba(2,0,36,1) 0%, rgba(125,129,150,0.9757503221014968) 96%, rgba(222,199,45,1) 98%, rgba(222,199,45,1) 98%, rgba(142,49,242,0.5859143339953169) 98%);
  color: #ffff;
  font-family: cursive;
  border-radius: 1.25rem;
}
#container_1{
  text-align:center;
}
#container_2{
 display: block;

  
}
nav{
	    background-color: rgba(0, 0, 0, 0.905); 
	    padding: 10px;
	    padding-left: 50px;
	    padding-left: 50px;
	    display: flex;
	    box-shadow: 0px 3px 65px 0px rgb(157, 0, 255);
	}
	
.nav_side{
 background-color: rgba(0, 0, 0, 0.905); 
    float: right; 
    width: 60%;

}
.nav_side a{
    float:right;
    text-decoration: none;
    margin-right: 30px;
    padding-top: 20px;
    font-weight: bold;
    font-family: serif;
    font-size: 20px;
    color:white;
    justify-content: center;
    align-items: center;
    align-content: center;
    text-align: center;
}
.nav_side a:hover{
    color: rgb(157, 0, 255);
    text-decoration: underline;
    transition:  0.5s ease ;
}
</style>
<body>

<%if(session.getAttribute("name")==null){
	response.sendRedirect("login.html");
} 
else {%>

 <nav class="nav nav_top">
           	 <div id="logo">
			<marquee behavior="scroll">Watch workers</marquee>            	
			</div>
            <div class="nav_side">
                 <a href="view1.jsp">VIEW</a>
                  <a  href="billing.jsp">BILLING</a>
                 <a  href="purchase.jsp">PURCHASE</a>
                 <a  href="worker.jsp">WORKER</a>
                  
                 <a  href="dealer.jsp">DEALER</a>
                 <a  href="first.jsp">HOME</a>
              
            </div>
        </nav>
  

  
<script src="https://smtpjs.com/v3/smtp.js">
</script>
<script>
function yes(){
	Email.send({
		
	    Host : "smtp.elasticemail.com",
	    Username : "n@gmail.com",
	    Password : "B7EB27202D302DA18B9E5CB698FD923E3F63",
	    To :document.getElementById("e1").value,
	    From : "nagendraherle@gmail.com",
	    Subject : "Watch purchase",
	    Body : "Congratulations from Ayyappa watch workers."
	}).then(
	  message => alert(message)
	);
	
}

</script>

        <div id="container_1">
 
  <h1 id="title">
  Billing Successful
</h1><!--title-->

</div><!---container_1--->
    <%
    String name=(String) request.getAttribute("cname");
    String email=(String) request.getAttribute("email");

    String phno=(String) request.getAttribute("phno");
	int qty =Integer.parseInt(request.getParameter("qty"));
    double price=(double) request.getAttribute("price");
    %>
 
    <!-- Body of Form starts -->
		
		
  
			
		
      <form action="yes(); reset(); return false;">
        <!--First name-->
    		<div class="box">
          <label for="firstName" class="fl fontLabel"> First Name: </label>
    			
    					<input type="text" name="firstName" value=<%=name %>
              class="textBox" autofocus="on" required>
    			
    		</div>
    		<!--First name-->

		    <!--First name-->
    		<div class="box">
          <label for="Email" class="fl fontLabel"> Email: </label>
    			
    					<input type="text" name="email" id="e1" value=<%=email %>
              class="textBox" autofocus="on" required>
    			
    		</div>
    		<!--First name-->
        


    		<!---Phone No.------>
    		<div class="box">
          <label for="phone" class="fl fontLabel"> Phone No.: </label>
    			
    					<input type="text" required name="phoneNo" maxlength="10" value=<%=phno %> class="textBox">
    			
    		</div>
    		<!---Phone No.---->
    		
    		<!--Price-->
    		<div class="box">
          <label for="secondName" class="fl fontLabel"> Price: </label>
    					<input type="text" required name="secondName" value=<%=price %> class="textBox">
    		
    			
    		</div>
    		<!--Price-->
    		
    			<!--Qty-->
    		<div class="box">
          <label for="secondName" class="fl fontLabel"> Quantity: </label>
    					<input type="text" required name="Quantity" value=<%=qty %> class="textBox">
    			
    		</div>
    
    	 <input type = "button" onclick = "yes()" value = "Display">  

    	

      </form>
      </div>
		<div class="dbp">
			<p> CONGRATULATIONS </p>
		</div>
	
  



<%} %>
</body>
</html>