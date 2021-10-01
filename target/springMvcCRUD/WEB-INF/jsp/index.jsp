<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Employees List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Email</th><th>Nationality</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="person" items="${list}">   
   <tr>  
   <td>${person.id}</td>  
   <td>${person.name}</td>  
    <td>${person.email}</td>  
   <td>${person.nationality}</td>  
   <td><a href="editPerson/${person.id}">Edit</a></td>  
   <td><a href="deletePerson/${person.id}">Delete</a></td>  
   
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="addPerson">Add New Employee</a>  