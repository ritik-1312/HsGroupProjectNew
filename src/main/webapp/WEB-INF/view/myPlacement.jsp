<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
 --><meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Insert title here</title>
<meta charset="utf-8">
<title>Infinite Card Slider JavaScript | CodingNepal</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Fontawesome Link for Icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="assets/js/script1.js" defer></script>
<link rel="stylesheet" href="assets/css/cardStyle.css">
<link rel="stylesheet" href="assets/css/Style1.css">
					<link href="assets/upload">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>			
</head>
<body>
<style>
/* delete button */
.delete_button {
  width: 50px;
  height: 50px;
  border-radius: 50%;
  background-color: rgb(20, 20, 20);
  border: none;
  font-weight: 600;
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.164);
  cursor: pointer;
  transition-duration: .3s;
  overflow: hidden;
  position: absolute;
  bottom: 0;
  right: 0;
  margin-top: 55px;
 margin-right: 20px;
}

.svgIcon {
  width: 12px;
  transition-duration: .3s;
}

.svgIcon path {
  fill: white;
}

.delete_button:hover {
  width: 80px;
  border-radius: 50px;
  transition-duration: .3s;
  background-color: rgb(255, 69, 69);
  align-items: center;
}

.delete_button:hover .svgIcon {
  width: 50px;
  transition-duration: .3s;
  transform: translateY(60%);
}

.delete_button::before {
  position: absolute;
  top: -20px;
  content: "Delete";
  color: white;
  transition-duration: .3s;
  font-size: 2px;
}

.delete_button:hover::before {
  font-size: 13px;
  opacity: 1;
  transform: translateY(30px);
  transition-duration: .3s;
}

/* Edit Button */
.edit_button {
  display: flex;
  align-items: center;
  justify-content: flex-start;
  width: 45px;
  height: 45px;
  border: none;
  border-radius: 50%;
  cursor: pointer;
   position: absolute;
  bottom: 0;
  left: 0;
  margin-bottom: 27px;
  margin-left: 10px;
  overflow: hidden;
  transition-duration: .3s;
  box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.199);
  background-color: rgb(0, 120, 43);
  
}

/* plus sign */
.sign {
  width: 100%;
  transition-duration: .3s;
  display: flex;
  align-items: center;
  justify-content: center;
}

.sign svg {
  width: 17px;
}

.sign svg path {
  fill: white;
}
/* text */
.text {
  position: absolute;
  right: 0%;
  width: 0%;
  opacity: 0;
  color: white;
  font-size: 1.2em;
  font-weight: 600;
  transition-duration: .3s;
}
/* hover effect on button width */
.edit_button:hover {
  width: 100px;
  border-radius: 40px;
  transition-duration: .3s;
}

.edit_button:hover .sign {
  width: 30%;
  transition-duration: .3s;
  padding-left: 20px;
}
/* hover effect button's text */
.edit_button:hover .text {
  opacity: 1;
  width: 70%;
  transition-duration: .3s;
  padding-right: 10px;
}
/* button click effect*/
.edit_button:active {
  transform: translate(2px ,2px);
}

/* heading css */
.heading{
    width: 90%;
    font-size: 60px;
    font-weight: 600;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    text-align: center;
    color: transparent;
    background-image: linear-gradient(to right ,#ECFFCE, #FFE81E, #15FF48, #15FFAD, #ECFFCE);
/*      background-image: linear-gradient(to right, #eee, #f7f7f7, #fafafa, #fbfbfb, #eee);
 */    -webkit-background-clip: text;
    background-clip: text;    
    background-size: 200%;
    background-position: -200%;
    animation: animated-gradient 4s infinite alternate-reverse;
    }
    @keyframes animated-gradient{
      to{
        background-position: 200%;
      }
    }
</style>
		
	<!--Second Section-->
	<div class="container"> 
		
			<h1 class="heading">Placement Page</h1>
<!-- 			<input type="search" class="input" name="text" id="searchtext" oninput="filterCards()" placeholder="search.....">
 -->		
					<input type="search" class="input" name="text" id="searchtext" oninput="filterCards()" placeholder="search....."><br>
					
		
		<div class="wrapper">
			<i id="left" class="fa-solid fa-angle-left"></i>
			<ul class="carousel">
				<c:forEach var="rma" items="${list2 }">
					<li class="card">
						<div class="img">
						<img src="<c:url value='assets/upload/'/>${empty rma.imgname ? 'default_image.jpg' : rma.imgname}" alt="img" draggable="false" />
						</div>
						<h2>${rma.name}</h2> 
						<span>${rma.typeWork }</span>
						<div class="additional-info">
							
							<p>Company: ${rma.companyName }</p>
							<p>Package: ${rma.pakage } LPA</p>
							<p>Location:${rma.location }</p>
							<p class="small-text">College: ${rma.collegeName }</p>
							<p class="small-text">Branch: ${rma.branch }</p>
						</div>
						
						<div id="btn1">
    						<button class="edit_button" type="submit" id="btnid1" onclick="redirectToEditPage('${rma.id}');">
        						<div class="sign">
            						<svg viewBox="0 0 512 512">
                						<path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"></path>
            						</svg>
        						</div>
        						<div class="text">EDIT</div>
   						 </button>
						</div>
							 
							 <div id="btn1">
    							<button class="delete_button" type="submit" id="btnid2" onclick="confirmDelete(${rma.id}); return false;">
        							<svg viewBox="0 0 448 512" class="svgIcon">
            							<path d="M135.2 17.7L128 32H32C14.3 32 0 46.3 0 64S14.3 96 32 96H416c17.7 0 32-14.3 32-32s-14.3-32-32-32H320l-7.2-14.3C307.4 6.8 296.3 0 284.2 0H163.8c-12.1 0-23.2 6.8-28.6 17.7zM416 128H32L53.2 467c1.6 25.3 22.6 45 47.9 45H346.9c25.3 0 46.3-19.7 47.9-45L416 128z"></path>
        							</svg>
    							</button>
							</div>
					</li>
					
				</c:forEach>
			</ul>
			<i id="right" class="fa-solid fa-angle-right"></i>
		</div>
		</div>
	
	<!-- Edit button script -->
	
	<script>
    function redirectToEditPage(id) {
        // Construct the edit page URL with the id parameter
        var editPageUrl = 'goEditpage/' + id;
        
        // Navigate to the edit page URL
        window.location.href = editPageUrl;
    }
</script>
	
	<!-- delete button js -->
	<script>
    function confirmDelete(id) {
        // Use SweetAlert for confirmation
        Swal.fire({
            title: 'Are you sure?',
            text: 'You won\'t be able to revert this!',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#d33',
            cancelButtonColor: '#3085d6',
            confirmButtonText: 'Yes, delete it!',
            width: '400px',
        }).then((result) => {
            if (result.isConfirmed) {
                // Use AJAX to perform the delete operation
                $.ajax({
                    url: 'deletecard/' + id,
                    type: 'DELETE',
                    success: function(response) {
                        // Optionally, you can handle the response or update the UI
                        console.log('Delete success:', response);
                        location.reload();

                        // Show a success message
                        Swal.fire({
                            icon: 'success',
                            title: 'Deleted!',
                            text: 'The message has been deleted.',
                        });

                    },
                    error: function(xhr, status, error) {
                        console.error('Delete error:', status, error);
                    }
                });
            }
        });
    }
</script>
	<script  src="assets/js/script1.js"></script>
</body>
</html>