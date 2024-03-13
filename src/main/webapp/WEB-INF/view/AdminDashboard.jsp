<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
 <meta http-equiv="Cache-Control" content="no-store, no-cache, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap Admin Dashboard</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://icons.getbootstrap.com" />

<script src="https://kit.fontawesome.com/ae360af17e.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="assets/css/adamindash.css">
<link rel="stylesheet" href="assets/css/contactus.css">

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
 

</head>

<body>
<script>
window.onload = function () {
    if (performance.navigation.type === 2) {
        Swal.fire({
            title: 'Redirection detected',
            text: "Please Click OK to check whether user logged in or out",
             icon: 'warning', 
            showCancelButton: false, 
            allowOutsideClick: false, 
            confirmButtonText: 'OK'
        }).then((result) => {
            // If the user clicks OK, redirect to the login page
            if (result.isConfirmed) {
            	 window.location.reload();  
            }
        });
    }
};
</script>
<c:set var="sesexist" value="${sesexist }"></c:set>
<c:choose>
  <c:when test="${sesexist == 'sidebarfail'}">
    <script>
      Swal.fire({
    	  icon: 'error',
    	  title: 'Opps!!!',
    	  text: 'This topic is already exist'
      }).then(function() {
        // Remove the session variable after the pop-up is closed
        <c:remove scope="session" var="sesexist" />;
      });
    </script>
  </c:when>
</c:choose>


	<div class="wrapper">
		<aside id="sidebar" class="js-sidebar">
			<!-- Content For Sidebar -->
			<div class="h-100">
				<div class="sidebar-logo">
					<a href="#">HS-Group</a>
				</div>
				<ul class="sidebar-nav">
					<li class="sidebar-header">Admin Dashboard</li>
					<li class="sidebar-item"><a href="#"
						class="sidebar-link collapsed" data-bs-target="#springcore"
						data-bs-toggle="collapse" aria-expanded="false"><svg
								xmlns="http://www.w3.org/2000/svg" width="18" height="18"
								fill="currentColor" class="bi bi-server"
								style="margin-right: 8px;" viewBox="0 0 16 16">
                                <path
									d="M1.333 2.667C1.333 1.194 4.318 0 8 0s6.667 1.194 6.667 2.667V4c0 1.473-2.985 2.667-6.667 2.667S1.333 5.473 1.333 4z" />
                                <path
									d="M1.333 6.334v3C1.333 10.805 4.318 12 8 12s6.667-1.194 6.667-2.667V6.334a6.5 6.5 0 0 1-1.458.79C11.81 7.684 9.967 8 8 8s-3.809-.317-5.208-.876a6.5 6.5 0 0 1-1.458-.79z" />
                                <path
									d="M14.667 11.668a6.5 6.5 0 0 1-1.458.789c-1.4.56-3.242.876-5.21.876-1.966 0-3.809-.316-5.208-.876a6.5 6.5 0 0 1-1.458-.79v1.666C1.333 14.806 4.318 16 8 16s6.667-1.194 6.667-2.667z" />
                              </svg> Add Course </a>
						<ul id="springcore"
							class="sidebar-dropdown list-unstyled collapse"
							data-bs-parent="#sidebar">
							<li class="sidebar-item"><a href="#"
								class="sidebar-link toggle-btn" data-target="helloSection1">
									1) Add topics to Sidebar</a></li>

							<li class="sidebar-item"><a href="#"
								class="sidebar-link toggle-btn" data-target="helloSection4">2)
									Add subtopics to Sidebar</a></li>
						</ul></li>
					<li class="sidebar-item"><a href="#"
						class="sidebar-link toggle-btn" data-target="helloSection2"> <i
							class="fa-solid fa-list pe-2"></i> Add Placement
					</a></li>
					<li class="sidebar-item"><a href="#"
						class="sidebar-link toggle-btn" data-target="helloSection3"> <i
							class="fa-solid fa-list pe-2"></i> Contact Us Messages
					</a></li>

				</ul>
			</div>
		</aside>
		<div class="main">
			<nav class="navbar navbar-expand px-3 border-bottom">
				<button class="btn" id="sidebar-toggle" type="button">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="navbar-collapse navbar">
					<ul class="navbar-nav">
						<li class="nav-item dropdown"><a href="#"
							data-bs-toggle="dropdown" class="nav-icon pe-md-0"> <img
								src="assets/img/testimonials/profile.jpg"
								class="avatar img-fluid rounded" alt="">
						</a>
							<div class="dropdown-menu dropdown-menu-end">
								<a href="#" class="dropdown-item">Profile</a> <a href="#"
									class="dropdown-item">Setting</a> <a href="logout"
									class="dropdown-item">Logout</a>
							</div></li>
					</ul>
				</div>
			</nav>
			<main class="content px-3 py-2">
				<div class="container-fluid">
					<section id="helloSection1" class="section">

						<section class="h-100 bg-dark">
							<div class="container py-3 h-100">
								<h1 class="heading">Add Topics to Sidebar</h1>
								<div
									class="row d-flex justify-content-center align-items-center h-100">
									<div class="col">
										<div class="card card-registration my-4">
											<div class="row g-0">
												<div class="col-xl-6 d-none d-xl-block">
													<img
														src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
														alt="Sample photo" class="img-fluid"
														style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
												</div>
												<div class="col-xl-6">
													<div class="card-body p-md-5 text-black">

														<form action="save_sidebar" method="post">

															<div class="row">
																<div class="col-md-6 mb-4">
																	<div class="form-outline">
																		<label class="form-label" for="form3Example1m"
																			style="color: aliceblue; font-size: 18px;">Sidebar
																			Topic Name</label> <input type="text" name="topic_name"
																			class="form-control form-control-lg"
																			style="width: 40vh;" />
																	</div>
																</div>
															</div>


															<div class="d-flex justify-content-end pt-3">
																<button type="button" class="btn btn-light btn-lg"
																	onclick="resetAllFields()">Reset all</button>
																<button type="submit"
																	class="btn btn-warning btn-lg ms-2">Submit
																	form</button>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>

					</section>
				</div>

				<div class="container-fluid">
					<section id="helloSection2" class="section">

						<section class="h-100 bg-dark">
							<div class="container py-3 h-100">
								<h1 class="heading">Add Placement</h1>
								<div
									class="row d-flex justify-content-center align-items-center h-100">
									<div class="col">
										<div class="card card-registration my-4">
											<div class="row g-0">
												<div class="col-xl-6 d-none d-xl-block">
													<img
														src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
														alt="Sample photo" class="img-fluid"
														style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
												</div>
												<div class="col-xl-6">
													<div class="card-body p-md-5 text-black">

														<form action="uploadplacement" method="post"
															enctype="multipart/form-data">
															<div class="row">
																<div class="col-md-6 mb-4">
																	<div class="form-outline">
																		<label class="form-label" for="form3Example1m"
																			style="color: aliceblue; font-size: 18px;">Full
																			Name</label> <input type="text" name="name"
																			class="form-control form-control-lg"
																			style="width: 40vh;" />
																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-md-6 mb-4">
																	<div class="form-outline">
																		<label class="form-label" for="form3Example1m"
																			style="color: aliceblue; font-size: 18px;">Type
																			of Work</label> <input type="text" name="name"
																			class="form-control form-control-lg"
																			style="width: 40vh;" />
																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-md-6 mb-4">
																	<div class="form-outline">
																		<label class="form-label" for="form3Example1m"
																			style="color: aliceblue; font-size: 18px;">Company
																			Name</label> <input type="text" name="name"
																			class="form-control form-control-lg"
																			style="width: 40vh;" />
																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-md-6 mb-4">
																	<div class="form-outline">
																		<label class="form-label" for="form3Example1m"
																			style="color: aliceblue; font-size: 18px;">Package</label>
																		<input type="text" name="name"
																			class="form-control form-control-lg"
																			style="width: 40vh;" />
																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-md-6 mb-4">
																	<div class="form-outline">
																		<label class="form-label" for="form3Example1m"
																			style="color: aliceblue; font-size: 18px;">Location</label>
																		<input type="text" name="name"
																			class="form-control form-control-lg"
																			style="width: 40vh;" />
																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-md-6 mb-4">
																	<div class="form-outline">
																		<label class="form-label" for="form3Example1m"
																			style="color: aliceblue; font-size: 18px;">College
																			Name</label> <input type="text" name="name"
																			class="form-control form-control-lg"
																			style="width: 40vh;" />
																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-md-6 mb-4">
																	<div class="form-outline">
																		<label class="form-label" for="form3Example1m"
																			style="color: aliceblue; font-size: 18px;">Branch</label>
																		<input type="text" name="name"
																			class="form-control form-control-lg"
																			style="width: 40vh;" />
																	</div>
																</div>
															</div>


															<div class="form-outline  mb-4 ">
																<label class="form-label" for="form3Example90"
																	style="color: aliceblue; font-size: 18px;">Profile
																	Photo</label> <input type="file" id="form3Example90"
																	class="form-control form-control-lg" />
															</div>

															<div class="d-flex justify-content-end pt-3">
																<button type="button" class="btn btn-light btn-lg"
																	onclick="resetAllFields()">Reset all</button>
																<button type="submit"
																	class="btn btn-warning btn-lg ms-2">Submit
																	form</button>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>

					</section>
				</div>

				<div class="container-fluid">
					<section id="helloSection3" class="section">

						<div class="mb-3">
							<!-- Heading of topic -->
							<h1 class="heading">Contact Us messages</h1>
						</div><br>
						<div class="search-bar">
							<div class="search_bar">
								<input type="text" id="searchInput" class="search__input"
									placeholder="Search..." oninput="searchMessages()">
								
							</div>

							<div style="text-align: right;" class="delete_button">
								<button type="submit" onclick="confirmMultipleDelete()" class="delete">
									<span class="shadow"></span> <span class="edge"></span> <span
										class="front text"> Delete </span>
								</button>
							</div>
						</div>
						<form action="deleteMultiple" id="myForm">
							<div id="messageContainer">
								<table class="center-table">
									<thead>
										<tr>
											<th>ID</th>
											<th>Name</th>
											<th>Email</th>
											<th>Message</th>
											<th>Timestamp</th>
											<th>Status</th>
											<th>Delete</th>
											<th>Multiple Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="message" items="${ul}">

											<tr class="message-row">
												<td class="i">${message.id}</td>
												<td class="me">${message.name}</td>
												<td class="mle">${message.email}</td>
												<td class="message" onclick="handleMessageClick(this)">
													${message.message}<!-- Display the truncated message -->
												</td>
												<td class="time">${message.timestamp}</td>
												<td
													class="status ${message.status eq 'seen' ? 'seen' : 'unseen'}">${message.status}</td>


												<td class="delete"><a href="delete/${message.id}" onclick="confirmDelete(${message.id}); return false;">
														<!-- Added anchor tag --> <i class="fas fa-trash-alt"
														style="font-size: 22px; color: red; align-items: center;"></i>
														<!-- Font Awesome trash icon -->
												</a></td>


												<td><div class="form-check" style="align-items: center;">
														<input class="form-check-input" type="checkbox"
															value="${message.id }" name="ids"
															style="cursor: pointer;">
													</div></td>
											</tr>

										</c:forEach>
									</tbody>
								</table>
							</div>


							<div id="noDataMessage" style="display: none;">No Result
								found</div>

						</form>

						<!-- Custom dialog HTML -->
						<!-- Custom dialog HTML -->
						<div id="overlay"></div>
						<div id="customDialog">
							<p id="customDialogContent"></p>
							<button class="closeButton" onclick="closeCustomDialog()">Close</button>
						</div>

					</section>
				</div>

				<div class="container-fluid">
					<section id="helloSection4" class="section">

						<script type="text/javascript">
$(document).ready(function(){
    var maxField = 10; //Input fields increment limitation
    var addButton = $('.add_button'); //Add button selector
    var wrapper = $('.field_wrapper'); //Input field wrapper
    var fieldHTML = '<div class="form-outline field_wrapper mb-4"><label class="form-label" for="form3Example90" style="color: aliceblue; font-size: 18px;">Attach File (java / jsp / xml)</label> <input name="uploadfiles" type="file" id="form3Example90" class="form-control form-control-lg" /> <a href="javascript:void(0);" class="remove_button" title="Remove field" style="color: rgb(10, 131, 238);">&nbsp;&nbsp;Remove</a></div>';
 
    var x = 1; //Initial field counter is 1
    
    //Once add button is clicked
    $(addButton).click(function(){
        //Check maximum number of input fields
        if(x < maxField){ 
            x++; //Increment field counter
            $(wrapper).append(fieldHTML); //Add field html
        }
    });
    
    //Once remove button is clicked
    $(wrapper).on('click', '.remove_button', function(e){
        e.preventDefault();
        $(this).parent('div').remove(); //Remove field html
        x--; //Decrement field counter
    });
});

$(document).ready(function(){
    var maxField2 = 10; // Input fields increment limitation
    var addButton2 = $('.add_button2'); // Add button selector
    var wrapper2 = $('.field_wrapper'); // Input field wrapper
    var fieldHTML2 = '<div class="form-outline mb-4"><label class="form-label" for="form3Example91" style="color: aliceblue; font-size: 18px;">Attach Output Image (screenshot)</label> <input name="outputfile" type="file" id="form3Example90" class="form-control form-control-lg" /><a href="javascript:void(0);" class="remove_button2" title="Remove field" style="color: rgb(10, 131, 238);">&nbsp;&nbsp;Remove</a></div>'; // New input field html 
    var fieldCounter = 1; // Initial field counter is 1
    
    // Once add button is clicked
    $(addButton2).click(function(){
        // Check maximum number of input fields
        if(fieldCounter < maxField2){ 
            fieldCounter++; // Increment field counter
            $(wrapper2).append(fieldHTML2); // Add field html
        }
    });
    
    // Once remove button is clicked
    $(wrapper2).on('click', '.remove_button2', function(e){
        e.preventDefault();
        $(this).parent('div').remove(); // Remove field html
        fieldCounter--; // Decrement field counter
    });
});
</script>
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
        url: 'delete/' + id,
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

<!-- Your HTML and other content -->


<script>
function confirmMultipleDelete(){
	 var selectedIds = document.querySelectorAll('input[name="ids"]:checked');

     if (selectedIds.length === 0) {
         // No IDs selected, show a SweetAlert message
         Swal.fire({
             icon: 'warning',
             title: 'No IDs selected',
             text: 'Please select at least one ID to delete.',
             confirmButtonColor: '#3085d6',
             confirmButtonText: 'OK',
             width:200,
             customClass: {
                 popup: 'small-swal-dialog',
                 title: 'small-swal-title',
                 content: 'small-swal-content',
                 confirmButton: 'small-swal-confirm-button',
             }
         });
     } else {
	      Swal.fire({
	         title: 'Are you sure?',
	         text: 'You won\'t be able to revert this!',
	         icon: 'warning',
	         showCancelButton: true,
	         confirmButtonColor: '#d33',
	         cancelButtonColor: '#3085d6',
	         confirmButtonText: 'Yes, delete it!',
	        	 customClass: {
	                    popup: 'small-swal-dialog'
	                }
	      }).then((result) => {
	         if (result.isConfirmed) {
	            // Trigger the form submission or delete action for selected messages
	            document.getElementById('myForm').submit();
	           
	         }
	      });
     }
	   }
</script>
<script>
    // Disable caching to force reload
    window.onpageshow = function(event) {
        if (event.persisted) {
            window.location.reload();
        }
    };
</script>


						<section class="h-100 bg-dark">
							<div class="container py-3 h-100">
								<h1 class="heading">Add Subtopics Details</h1>
								<div
									class="row d-flex justify-content-center align-items-center h-100">
									<div class="col">
										<div class="card card-registration my-4">
											<div class="row g-0">
												<div class="col-xl-6 d-none d-xl-block">
													<img
														src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
														alt="Sample photo" class="img-fluid"
														style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
												</div>
												<div class="col-xl-6">
													<div class="card-body p-md-5 text-black">

														<form action="save_subtopicdata" method="post"
															enctype="multipart/form-data">

															<div class="form-group" style="margin-bottom: 25px">
																<label for="topic_name_id" style="font-size: 18px">Select
																	Topic</label> <select class="form-control" id="id" name="id">
																	<option value="" style="font-size: 18px">Click
																		to view topics</option>
																	<!-- This is the first option -->
																	<c:forEach var="topic_name_id" items="${side}">
																		<option value="${topic_name_id.id}">${topic_name_id.topic_name}</option>
																	</c:forEach>
																</select>
															</div>

															<div class="row field_wrapper2">
																<div class="col-md-6 mb-4">
																	<div class="form-outline">
																		<label class="form-label" for="form3Example1m"
																			style="color: aliceblue; font-size: 18px;">Subtopic
																			Name</label> 
													<input type="text" name="subtopic_name" class="form-control form-control-lg" style="width: 40vh;" />
																	</div>
																</div>
															</div>

															<div class="form-outline mb-4">
																<div class="form-outline">
																	<label class="form-label" for="form3Example1n"
																		style="color: aliceblue; font-size: 18px;">Topic
																		Intro</label>
																	<textarea name="intro" rows="4" cols="6"
																		id="form3Example8"
																		class="form-control form-control-lg"></textarea>
																</div>
															</div>


															<div class="form-outline field_wrapper mb-4 ">
																<label class="form-label" for="form3Example90"
																	style="color: aliceblue; font-size: 18px;">Attach
																	File (java / jsp / xml)</label> <input name="uploadfiles"
																	type="file" id="form3Example90"
																	class="form-control form-control-lg" /> <a
																	href="javascript:void(0);" class="add_button"
																	title="Add field" style="color: rgb(10, 131, 238);">&nbsp;&nbsp;ADD</a>
															</div>

															<div class="form-outline  mb-4 ">
																<label class="form-label" for="form3Example91"
																	style="color: aliceblue; font-size: 18px;">Attach
																	Output Image (screenshot)</label> <input name="outputfile"
																	type="file" id="form3Example91"
																	class="form-control form-control-lg" /><a
																	href="javascript:void(0);" class="add_button2"
																	title="Add field" style="color: rgb(10, 131, 238);">&nbsp;&nbsp;ADD</a>
															</div>

															<div class="d-flex justify-content-end pt-3">
																<button type="button" class="btn btn-light btn-lg"
																	onclick="resetAllFields()">Reset all</button>
																<button type="submit"
																	class="btn btn-warning btn-lg ms-2">Submit
																	form</button>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>

					</section>
				</div>
			</main>


			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-start">
							<p class="mb-0"></p>
						</div>
						<div class="col-6 text-end"></div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/admindash.js"></script>

	<!-- sidebar and section togling javascript -->
	<script>
        document.addEventListener('DOMContentLoaded', function () {
    const toggleButtons = document.querySelectorAll('.toggle-btn');

    function toggleSectionVisibility(sectionId) {
        const section = document.getElementById(sectionId);
        const allSections = document.querySelectorAll('.section');

        allSections.forEach(s => {
            if (s.id === sectionId) {
                s.style.display = 'block';
            } else {
                s.style.display = 'none';
            }
        });
    }

    toggleButtons.forEach(btn => {
        btn.addEventListener('click', function () {
            const targetSectionId = this.getAttribute('data-target');
            toggleSectionVisibility(targetSectionId);
        });
    });

    // Add this part to set the default section visibility after page load
    const defaultSectionId = 'helloSection1';
    toggleSectionVisibility(defaultSectionId);
});

    </script>

	<!-- contact us javascript -->
	<script>

document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.message').forEach(element => {
        element.addEventListener('click', () => {
            showMessage(element.textContent);
        });
    });
});




function showMessage(fullMessage) {
        // Set the content of the custom dialog
        console.log('showMessage function called.');
    console.log('Full Message:', fullMessage);
        document.getElementById('customDialogContent').innerHTML = fullMessage;
        
        // Display the overlay and custom dialog
        document.getElementById('overlay').style.display = 'block';
        document.getElementById('customDialog').style.display = 'block';
    }

    function closeCustomDialog() {
        // Hide the overlay and custom dialog
        document.getElementById('overlay').style.display = 'none';
        document.getElementById('customDialog').style.display = 'none';
    }

    function deleteMessage(element) {
        // Add logic to delete the corresponding message
        // For demonstration, let's remove the entire row
        const row = element.parentNode;
        row.parentNode.removeChild(row);
        
                      }
    
    function handleMessageClick(element) {
        var messageId = element.closest('tr').querySelector('.i').textContent;
        console.log("id"
        		+messageId);
        var fullMessage = element.textContent;

        // Your existing show message logic
        //showMessage(fullMessage);

        // Make an asynchronous request to update the status
        $.post('updateStatus/' + messageId, function () {
            console.log('Status updated to seen successfully.');
            
            
            
            
        });
    }
    </script>
	<!-- Add the following script after your existing scripts -->
	<script>
	function searchMessages() {
	    const searchTerm = $('#searchInput').val().toLowerCase();

	    // Initially hide all rows
	    $('.message-row').hide();

	    let found = false;

	    $('.message-row').each(function () {
	        const name = $(this).find('.me').text().toLowerCase();
	        const email = $(this).find('.mle').text().toLowerCase();

	        if (name.includes(searchTerm) || email.includes(searchTerm)) {
	            $(this).show();
	            found = true;
	        }
	    });

	    // Toggle the 'no data found' message based on whether any rows were found
	    if (!found) {
	        $('#noDataMessage').show();
	    } else {
	        $('#noDataMessage').hide();
	    }
	}


    function resetSearch() {
        // Show all rows when resetting the search
        $('.message-row').show();
        $('#searchInput').val(''); // Clear the search input
    }

  /*   $(document).ready(function () {
        // Add a class to each row for easy manipulation
        $('.message-row').each(function (index) {
            $(this).addClass(`message-row-${index}`);
        });
    }); */
</script>
</body>

</html>
