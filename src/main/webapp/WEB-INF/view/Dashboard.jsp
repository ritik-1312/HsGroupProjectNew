
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<%@ page isELIgnored="false"%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap Admin Dashboard</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://icons.getbootstrap.com" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha384-...insert integrity code here...-...">

<script src="https://kit.fontawesome.com/ae360af17e.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="assets/css/Dashboard.css">



<style>
/* To show Code inside a box */
.code-container {
	position: relative;
	margin: 20px;
}

/* .copybtn {
	top: 5px;
	right: 25px;
	padding: 5px 10px;
	cursor: pointer;
} */
.capitalize {
	text-transform: capitalize;
	text-align: center;
	font-weight: 700;
	font-size: 45px;
	color: #5beea7;
}
@media (max-width: 768px) {
  .capitalize {
    font-size: 30px; /* Adjust font size for smaller screens */
  }
}

.img-container img {
	max-width: 50%;
	height: auto;
}
</style>


</head>

<body>

	<!-- JSTL CODE -->
	<c:set var="sesemail" value="${sesemail}" />

	<div class="wrapper">
		<aside id="sidebar" class="js-sidebar">
			<!-- Content For Sidebar -->
			<div class="h-100">
				<div class="sidebar-logo">
					<a href="#">HS-Group</a>
				</div>
				<ul class="sidebar-nav">
					<li class="sidebar-header">Spring Course</li>
					<li class="sidebar-item toggle-btn" data-target="helloSection1">
						<a href="#" class="sidebar-link"> <i
							class="fab fa-galactic-republic"
							style="margin-right: 10px; font-size: 16px"> </i> Introduction of
							Spring
					</a>
					</li>

					<c:if test="${not empty SidebarTopicName}">
						<c:forEach var="item" items="${SidebarTopicName}" varStatus="loop">

							<li class="sidebar-item"><a href="#"
								class="sidebar-link collapsed " data-bs-target="#springcore"
								data-bs-toggle="collapse" aria-expanded="false"> <i
									class="fab fa-galactic-republic"
									style="margin-right: 10px; font-size: 16px"></i>
									${item.topic_name}
							</a>
								<ul id="springcore"
									class="sidebar-dropdown list-unstyled collapse"
									data-bs-parent="#sidebar">
									<c:if test="${not empty topicList}">
										<c:forEach var="item2" items="${topicList}" varStatus="loop">
											<c:if test="${item.id eq item2.sidebar_topic.id}">
												<li class="sidebar-item"><a href="#"
													class="sidebar-link toggle-btn "
													data-target="helloSection${item.id }.${item2.id}">
														${item2.subtopic_name} </a></li>
											</c:if>
										</c:forEach>
									</c:if>
								</ul></li>
						</c:forEach>
					</c:if>

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
							data-bs-toggle="dropdown" class="nav-icon pe-md-0"> <span>${sesemail}</span>
								<img src="assets/img/testimonials/profile.jpg"
								class="avatar img-fluid rounded" alt="">
						</a>
							<div class="dropdown-menu dropdown-menu-end">
								<a href="#" class="dropdown-item">Profile</a> <a href="#"
									class="dropdown-item">Setting</a> <a href="#"
									class="dropdown-item">Logout</a>
							</div></li>
					</ul>
				</div>
			</nav>
			<main class="content px-3 py-2">
				<div class="container-fluid">
					<section id="helloSection1" class="section">
						<div class="mb-3">
							<h1 class="heading">Spring Framework</h1>
						</div>
						<div class="row">
							<p class="intro">
								<b> Spring Framework -</b> The Spring Framework provides a
								comprehensive programming and configuration model for modern
								Java-based enterprise applications on any kind of deployment
								platform. It can be thought of as a framework of frameworks
								because it provides support to various frameworks such as
								Struts, Hibernate, Tapestry, EJB, JSF, etc. The framework, in
								broader sense, can be defined as a structure where we find
								solution of the various technical problems.
							</p>
							<div class="img-container">
								<img
									src="https://1.bp.blogspot.com/-1A8yFspYhIU/XxciPbOX74I/AAAAAAAAANc/Joi30ePg2ZgeQRFFu_J5c8y9PCI0n55sQCLcBGAsYHQ/s640/spring-framework-architecture.jpg"
									alt="Responsive image">
							</div>
							<p class="h4">Spring Framework Architecture</p>

						</div>
						<div class="explanation">
							<p class="in-head h4">
								<b>1.</b> Spring framework Core Components
							</p>
							<p class="para">The core container from Spring consist of
								four modules SpEL, Context, Core and Beans</p>
							<p class="para">
								<b>1.1.</b> The SpEL module provides a powerful expression
								language for manipulating objects during execution.
							</p>
							<p class="para">
								<b>1.2</b> Context is built on the basis of Beans and Core and
								allows you to access any object that is defined in the
								setting.The Key Element of the context is ApplicationContext
								interface.
							</p>
							<p class="para">
								<b>1.3</b> The Core modules provides key parts of the framework
								including IoC and DI properties.
							</p>
							<p class="para">
								<b>1.4</b> The Bean module is responsible for creating and
								managing spring beans is application context structure unit.
							</p>

							<p class="in-head h4">
								<b>2.</b> Spring framework Web
							</p>
							<p class="para">Spring framework web layer consists of Web,
								Web-MVC, Web-Socket, Web-portlet etc. refer Introduction of Web
								MVC</
							<p class="in-head h4">
								<b>3.</b> Spring Framework Data Access
							</p>
							<p class="para">Data Access container consists of
								JDBC,ORM,OXM,JMS and Transaction Module.</p>
							<p class="para">
								<b>3.1</b> JDBC - provides an abstract layer JDBC and elominates
								the need for the developer to manually register the monotonous
								code associated with connecting to the database.
							</p>
							<p class="para">
								<b>3.2</b> Spring ORM provides integration with popular ORM's
								such as Hibernate,JDO which are implementations of JPA.
							</p>
							<p class="para">
								<b>3.3</b> The OXM module is responsible for linking the object
								XML-XMLBeans etc.
							</p>
							<p class="para">
								<b>3.4</b> The JMS(Java Messaging Sevice) module is responsible
								for creating, sending and receiving messages.
							</p>
							<p class="para">
								<b>3.5</b> Transaction support transaction management for
								classes that implement certain methods POJO's.
							</p>

							<p class="in-head h4">
								<b>4.</b> Miscellaneous Module
							</p>
							<p class="para">Spring also includes a number of other
								important modules such as AOP,Aspects, Instrumentation,
								Messaging and Test.</p>
							<p class="para">
								<b>4.1</b> AOP implements aspect oriented programming and allows
								using the entire features of AOP capabilities.
							</p>
							<p class="para">
								<b>4.2</b> The aspects module proides integration with AspectJ
								which is also powerful AOP framework.
							</p>
							<p class="para">
								<b>4.3</b> Instrumentation is responsible for supporting class
								instrumentation and class loader which are used in server
								application.
							</p>
							<p class="para">
								<b>4.4</b> The Messaging module provides STOMP support.
							</p>
							<p class="para">
								<b>4.5</b> Finally, the Test Module provides testing TestNG or
								JUnit Framework.
							</p>

							<p class="in-head h4">Spring Framework Features</p>
							<p class="para">
								<b>1.</b> Core Technologies - Dependency Injection, event
								resources,validation, data binding,AOP
							</p>
							<p class="para">
								<b>2.</b>Testing - Spring MVC Test, mock objects
							</p>
							<p class="para">
								<b>3.</b>Data Access - transactions, DAO Support,JDBC,ORM
							</p>
							<p class="para">
								<b>4.</b>Spring MVC Framework
							</p>
							<p class="para">
								<b>5.</b>Auto Configuration
							</p>

							<p class="in-head h4">Advantages of Spring Framework</p>
							<p class="para">
								<b>1.</b> Light Weight - It uses light weight servlet container
								to develop application
							</p>
							<p class="para">
								<b>2.</b>Powerful Configuration - It provides robust
								configuration for both framework and application classes eg web
								controllers, business logic, validations etc.
							</p>
							<p class="para">
								<b>3.</b>Rapid Development - Due to auto configuration over
								conventional method the application developed rapidly.
							</p>
							<p class="para">
								<b>4.</b>Template Driven - Due to this nature template driven
								once template created for any business application, most of
								services repeated without repeating code eg transaction are same
								for almost all business application.
							</p>
							<p class="para">
								<b>5.</b> Unit Testing - Unit testing is very easy, because of
								layered architecture of spring. It is easy to test error at each
								layer.
							</p>
							<p class="para">
								<b>6.</b> Mapping - Rich set of annotation that easily redirect
								the pages and handles data easily.
							</p>

							<p class="in-head h4">Spring Core Technology</p>
							<p class="para">
								<b></b>1.1 Inversion of Control (IoC) - IoC is tool which is
								used to inject setter and constructor dependency internally to
								achieve loose coupling dependency hence it is also known as DI
								i.e. dependency injection. It is the process where object
								defines their dependency through constructor argument, arguments
								to factory method or by setting class properties. IOC Container
								gets information from xml and works accordingly. Spring IOC
								container working architecture <b>Shown below.</b>
							</p>
						</div>

						<div class="row">
							<div class="img-container-small">
								<img
									src="https://1.bp.blogspot.com/-BwcN5eZ4-HE/XwFkIXYNZLI/AAAAAAAAALM/pj5uf7Dr3GoXzwASwTS3g0yu_nV-w2mdQCLcBGAsYHQ/s400/IOC%2BContainer.jpg"
									alt="Responsive image">
							</div>
						</div>

						<div class="explanation">
							<p class="in-head h4" style="margin-left: 10%; margin-top: 5%;">Explanation
								-</p>
							<p class="para">
								<b>1)</b> User Object will send request to spring/IoC container.
							</p>
							<p class="para">
								<b>2)</b> Spring Container generates its own object of the
								BeanClasses
							</p>
							<p class="para">
								<b>3)</b> Send the request to xml configuration file and bean
								object will check for bean configuration of request object if
								found then container will give permission to user for using user
								facility mentioned in user class.
							</p>
							<p class="para">
								<b></b>The org.springframework.beans and
								org.springframework.context are packages for IoC container.
								BeanFactory interface provides basic functionality and
								ApplicationContext provides more enterprize specific
								functionality. ApplicationContext called superset of
								BeanFactory. In Spring objects form backbone of your application
								and managed by spring container known as IoC Container are
								called as beans.
							</p>
							<p class="para">Implementation of ApplicationContext
								interface are supplies with spring. It is used to create
								instance of ClassPathXmlApplcationContext. Xml file defines
								configuration metadata. For information about using other forms
								of metadata with Spring Container.</p>

							<p class="para">
							<ul style="margin-left: 16%; color: #ccc; font-family: cursive;">
								<li>Annotation Based Configuration - Spring 2.5 introduced
									support for annotation-based configuration metadata.</li>
								<li>Java Based Configuration - Starting with Spring 3.0,
									many features provided by the Spring JavaConfig project became
									part of the core Spring Framework. To use new features,
									annotations such as `@Configuration`, `@Import`, `@Beans` can
									be used.</li>
								<li>XML Based Configuration - The following example shows
									the basic structure of XML-based configuration metadata:<?xml version="1.0" encoding="UTF-8"?>
								</li>
							</ul>
							</p>
						</div>
						<!-- Table Element -->
						<div class="card border-0"></div>
					</section>
				</div>
				<c:if test="${not empty SidebarTopicName}">
					<c:forEach var="item" items="${SidebarTopicName}" varStatus="loop">

						<c:forEach var="tm" items="${topicList}">

							<c:if test="${item.id eq tm.sidebar_topic.id}">

								<div class="container-fluid">
									<section id="helloSection${item.id}.${tm.id}" class="section">

										<h1 class="heading">
											<strong><c:out value="${tm.subtopic_name}" /></strong>
										</h1>



										<p class="intro">
											<c:out value="${tm.intro}" />
											<br>
										</p>
										<br>
										<h1 class="capitalize">Examples</h1>
										<c:forEach var="fileContent" items="${tm.file_content}">
											<%-- <c:out value="${(tm.Upload_File)}" /> --%>

											<div class="code-container">
												<textarea class="code-textarea" readonly>
                                <c:out value="${fileContent}" />
                            </textarea>
												<button class="copy" onclick="copyToClipboard()">
												  <span data-text-end="Copied!" data-text-initial="Copy to clipboard" class="tooltip"></span>
												  <span>
												    <svg xml:space="preserve" style="enable-background:new 0 0 512 512" viewBox="0 0 6.35 6.35" y="0" x="0" height="20" width="20" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xmlns="http://www.w3.org/2000/svg" class="clipboard">
												      <g>
												        <path fill="currentColor" d="M2.43.265c-.3 0-.548.236-.573.53h-.328a.74.74 0 0 0-.735.734v3.822a.74.74 0 0 0 .735.734H4.82a.74.74 0 0 0 .735-.734V1.529a.74.74 0 0 0-.735-.735h-.328a.58.58 0 0 0-.573-.53zm0 .529h1.49c.032 0 .049.017.049.049v.431c0 .032-.017.049-.049.049H2.43c-.032 0-.05-.017-.05-.049V.843c0-.032.018-.05.05-.05zm-.901.53h.328c.026.292.274.528.573.528h1.49a.58.58 0 0 0 .573-.529h.328a.2.2 0 0 1 .206.206v3.822a.2.2 0 0 1-.206.205H1.53a.2.2 0 0 1-.206-.205V1.529a.2.2 0 0 1 .206-.206z"></path>
												      </g>
												    </svg>
												    <svg xml:space="preserve" style="enable-background:new 0 0 512 512" viewBox="0 0 24 24" y="0" x="0" height="18" width="18" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xmlns="http://www.w3.org/2000/svg" class="checkmark">
												      <g>
												        <path data-original="#000000" fill="currentColor" d="M9.707 19.121a.997.997 0 0 1-1.414 0l-5.646-5.647a1.5 1.5 0 0 1 0-2.121l.707-.707a1.5 1.5 0 0 1 2.121 0L9 14.171l9.525-9.525a1.5 1.5 0 0 1 2.121 0l.707.707a1.5 1.5 0 0 1 0 2.121z"></path>
												      </g>
												    </svg>
												  </span>
												</button>
											</div>
										</c:forEach>
										<br>
										<h1 class="capitalize">Output Images</h1>
										<br>
										<c:forEach var="imageFile" items="${tm.image_file}">
											<div class="image-container">
												<img src="assets/upload/<c:out value="${imageFile}"/>"
													alt="Responsive image">
												<!-- Add any additional styling or attributes as needed -->
											</div>
										</c:forEach>



									</section>
								</div>
							</c:if>
						</c:forEach>

					</c:forEach>
				</c:if>
			</main>



			<%-- <c:if test="${not empty SidebarTopicName}">
				<c:forEach var="item" items="${SidebarTopicName}" varStatus="loop">

					<c:forEach var="tm" items="${topicList}">

						<c:if test="${item.id eq tm.sidebar_topic.id}">

							<div class="container-fluid">
								<section id="helloSection${item.id}.${tm.id}" class="section">

									<h1 class="capitalize">
										<strong><c:out value="${tm.subtopic_name}" /></strong>
									</h1>



									<p>
										<c:out value="${tm.intro}" />
										<br>
									</p>
									<br>

									<c:forEach var="fileContent" items="${tm.file_content}">
										<c:out value="${fn:length(tm.file_content)}" />

										<div class="code-container">
											<textarea class="code-textarea" readonly>
                                <c:out value="${fileContent}" />
                            </textarea>
											<button class="copybtn" onclick="copyToClipboard()">Copy</button>
										</div>
									</c:forEach>
									<br>

									<c:forEach var="imageFile" items="${tm.image_file}">
										<div class="image-container">
											<img src="assets/upload01/<c:out value="${imageFile}"/>"
												alt="Responsive image">
											<!-- Add any additional styling or attributes as needed -->
										</div>
									</c:forEach>



								</section>
							</div>
						</c:if>
					</c:forEach>

				</c:forEach>
			</c:if> --%>



			<script>
				            		    /* to copy text inside textarea */
				            		    function copyToClipboard() {
				            	            var codeTextarea = document.querySelector('.code-textarea');
				            	           /*  codeTextarea.select(); */
				            	            document.execCommand('copy');
				            	            /* alert('Code copied to clipboard!'); */
				            	        }	
				            		    
										</script>





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
			
			<button class="scroll-to-top-btn" id="scrollToTopBtn">
   			 <i class="fas fa-chevron-up"></i>
			</button>
		</div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="assets/js/Dashboard.js"></script>
		<script>
    document.addEventListener('DOMContentLoaded', function () {
        const toggleButtons = document.querySelectorAll('.toggle-btn');
        const defaultSectionId = 'helloSection1';

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

        function showDefaultSection() {
            toggleSectionVisibility(defaultSectionId);
        }

        // Set the default section on page load
        showDefaultSection();

        toggleButtons.forEach(btn => {
            btn.addEventListener('click', function () {
                const targetSectionId = this.getAttribute('data-target');
                toggleSectionVisibility(targetSectionId);
            });
        });
    });
</script>

<!-- Scroll up button script -->

<script>
window.addEventListener('scroll', function() {
	  var scrollToTopBtn = document.querySelector('.scroll-to-top-btn');
	  if (window.pageYOffset > 100) { // Adjust the scroll threshold as needed
	    scrollToTopBtn.classList.add('active');
	  } else {
	    scrollToTopBtn.classList.remove('active');
	  }
	});

	// Add a click event listener to the button
	scrollToTopBtn.addEventListener('click', function() {
	  // Scroll the page to the top
	  window.scrollTo({
	    top: 0,
	    behavior: 'smooth' // Smooth scrolling behavior
	  });
	});
</script>

</body>

</html>
