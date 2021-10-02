<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>        
 <html lang="en">
 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
   <body>
    <!-- navbar start-->
 <nav class="navbar navbar-light fixed-top bg-light shadow-sm">
 <div class="container-lg">
   <a class="navbar-brand text-danger fw-bold fs-4" href="/springMvcCRUD/"> Alberto</a>
   <div class="dropdown">
      <button class="btn btn-secondary btn-danger px-3" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
          +
      </button>
       <ul class="dropdown-menu  dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
         <li><a class="dropdown-item" href="/springMvcCRUD/">Home</a></li>
         <li><a class="dropdown-item" href="addPerson">Add Person</a></li>
        
    </ul>
   </div>
  </div>
</nav>
 <!-- vavbar end-->
  <section>
  <div class="container pt-5 ">
  	<div class="row justify-content-center">
  		<div class="col-4 pt-5">
  		         
         <h1>Edit Person</h1>  
      <form:form method="POST" action="/springMvcCRUD/editsave">   
      <form:hidden  path="id" />
       		 <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <form:input class="form-control" path="name"  id="name" aria-describedby="name"/>
    
  </div>
   <div class="mb-3">
    <label for="email" class="form-label">Email</label>
    <form:input class="form-control" path="email"  id="email" aria-describedby="email"/>
    
  </div>
   <div class="mb-3">
    <label for="name" class="form-label">Nationality</label>
    <form:input class="form-control" path="nationality"  id="name" aria-describedby="name"/>
    
  </div>
       <input type="submit"  class="btn btn-primary value="Save" />
        
       
       </form:form>    
  		</div>
  	</div>
  
  </div>
 
  </section>  
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body> 
   </html>  


  