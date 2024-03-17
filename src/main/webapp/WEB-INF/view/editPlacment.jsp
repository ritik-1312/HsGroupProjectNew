<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">

  <head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link href="assets/css/editplacment.css" >
	
					<link href="assets/editplacment.js">
    <title>Hello, world!</title>
    <style>
     body{
     background-image: radial-gradient(circle at center center, transparent,rgb(0,0,0)),linear-gradient(292deg, rgba(157, 157, 157,0.05) 0%, rgba(157, 157, 157,0.05) 50%,rgba(176, 176, 176,0.05) 50%, rgba(176, 176, 176,0.05) 100%),linear-gradient(272deg, rgba(73, 73, 73,0.05) 0%, rgba(73, 73, 73,0.05) 50%,rgba(98, 98, 98,0.05) 50%, rgba(98, 98, 98,0.05) 100%),linear-gradient(230deg, rgba(222, 222, 222,0.05) 0%, rgba(222, 222, 222,0.05) 50%,rgba(175, 175, 175,0.05) 50%, rgba(175, 175, 175,0.05) 100%),linear-gradient(286deg, rgba(175, 175, 175,0.05) 0%, rgba(175, 175, 175,0.05) 50%,rgba(37, 37, 37,0.05) 50%, rgba(37, 37, 37,0.05) 100%),linear-gradient(160deg, rgba(14, 14, 14,0.05) 0%, rgba(14, 14, 14,0.05) 50%,rgba(129, 129, 129,0.05) 50%, rgba(129, 129, 129,0.05) 100%),linear-gradient(72deg, rgba(26, 26, 26,0.05) 0%, rgba(26, 26, 26,0.05) 50%,rgba(202, 202, 202,0.05) 50%, rgba(202, 202, 202,0.05) 100%),linear-gradient(14deg, rgba(254, 254, 254,0.05) 0%, rgba(254, 254, 254,0.05) 50%,rgba(23, 23, 23,0.05) 50%, rgba(23, 23, 23,0.05) 100%),linear-gradient(60deg, rgba(194, 194, 194,0.05) 0%, rgba(194, 194, 194,0.05) 50%,rgba(16, 16, 16,0.05) 50%, rgba(16, 16, 16,0.05) 100%),radial-gradient(circle at center center, hsl(12,88%,58%),hsl(12,88%,58%));
     
     }
     
    </style>
  </head>
  <body>
    

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    
    
<body>

<!-- <nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
    <div class="container">
    <a class="navbar-brand" href="#">Laravel</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Register</a>
            </li>
        </ul>

    </div>
    </div>
</nav> -->

<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header" style="justify-content: center;">UPDATE</div>
                        <div class="card-body">
                            <form action="/ProjectHibernateWebArtifi/updateEdit" method="post" enctype="multipart/form-data">
                            <c:forEach var="edit" items="${Edit}">
                            	
                                <div class="form-group row">
                                    <label for="nid_number" class="col-md-4 col-form-label text-md-right">
                                    <!--  <abbr title="National Id Card"> Id No. </abbr>-->ID Number</label>
                                    <div class="col-md-6">
                                  		<input type="text" value="${edit.id }" id="nid_number" class="form-control" name="id" readonly>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Full Name</label>
                                    <div class="col-md-6">
                                        <input type="text" value="${edit.name }" id="full_name" class="form-control" name="name">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Type of Work</label>
                                    <div class="col-md-6">
                                        <input type="text"  id="email_address" class="form-control" value="${edit.typeWork }" name="typeWork">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Compamy Name</label>
                                    <div class="col-md-6">
                                    
                                        <input type="text" id="user_name" class="form-control" name="companyName" value="${edit.companyName }">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Package</label>
                                    <div class="col-md-6">
                                        <input type="text" id="phone_number" class="form-control" value="${edit.pakage}" name="Pakage">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Location</label>
                                    <div class="col-md-6">
                                        <input type="text" id="present_address" class="form-control" value="${edit.location }" name="location">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">College Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="present_address" name="collegeName" class="form-control" value="${edit.collegeName }">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Branch</label>
                                    <div class="col-md-6">
                                        <input type="text" id="present_address" class="form-control" value="${edit.branch }" name="branch">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Profilephoto</label>
                                    	<div class="col-md-6" id="logs">
                                     		<img  src="http://localhost:8080/HibernateCourseProject/assets/upload/${edit.imgname}" alt="sorry no image" class=""width="17%" height="50%"/>
 											<input type="file" id="form3Example90"class="form-control form-control-lg" name="image"accept="image/*">     
                                      		<input type="hidden" id="present_address" class="form-control" value="${edit.imgname} "name="imgname"  />
                                    	</div>
                                </div>  
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        	update
                                        </button>
                                    </div>
                                    </c:forEach>
                                    </form>
                                </div>
                            
                        </div>
                    </div>
            </div>
        </div>
    

</main>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </body>
</html>