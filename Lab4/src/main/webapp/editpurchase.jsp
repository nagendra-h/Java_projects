<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="pack1.addpurchase.*,pack1.purchase.*,pack1.*,java.util.*"%>  
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
.form{
  width: 100%;
  margin-bottom: 1em;
}

.submit{
  display: block;
  width: 100%;
  padding: 0.75rem;
  background: rgb(2,0,36);
  color: inherit;
  border-radius: 15px;
  cursor: pointer;
  text-decoration:none;
}

textarea{
  width: 100%;
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
    width: 90%;

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

</head>
<body>
  
<%  
String n=request.getParameter("wid");
List<User> list=(List) addpurchase.getAllRecords(n);  
request.setAttribute("list",list);  

%>  
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
 <div id="container_1">
  
  <h1 id="title">
  Edit Form purchase details
</h1><!--title-->
<p id="description">
  Enter the required data in the boxes.
</p><!--description--->
  
</div><!---container_1--->
<div id="container_2">
<h1>Edit Form</h1>  
<form action="editpur1.jsp" method="">  
<table>  
<c:forEach items="${list}" var="u">  
<input type="hidden" name="wid" value="${u.getWid()}"/>  

<tr><td>Dealer Id:</td><td>  
<input type="text" name="did" value="${u.getId()}"/></td></tr>  

<tr><td>Watch Name:</td><td>  
<input type="text" name="wname" value="${u.getWname()}"/></td></tr>  
<tr><td>Quantity:</td><td>  
<input type="text" name="qty" value="${u.getQty()}"/></td></tr>  
<tr><td>Price:</td><td>  
 <input type="text" name="price" value="${u.getPrice()}"/>
</td></tr>  
</td></tr>  
<tr><td colspan="2"><input type="submit" class="submit" value="Edit purchase"/></td></tr>  
</c:forEach>  

</table>  
</form>  
</div><!--container_2---> 

 
 

  
 
</body>
</html>