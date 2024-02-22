
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<%@ page isELIgnored="false"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://icons.getbootstrap.com" />
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
    <script src="https://kit.fontawesome.com/ae360af17e.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/Dashboard.css">
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
                    <li class="sidebar-header">
                        Spring Course
                    </li>
                    
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#springcore" data-bs-toggle="collapse"
                            aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-server" style="margin-right: 8px;" viewBox="0 0 16 16">
                                <path d="M1.333 2.667C1.333 1.194 4.318 0 8 0s6.667 1.194 6.667 2.667V4c0 1.473-2.985 2.667-6.667 2.667S1.333 5.473 1.333 4z"/>
                                <path d="M1.333 6.334v3C1.333 10.805 4.318 12 8 12s6.667-1.194 6.667-2.667V6.334a6.5 6.5 0 0 1-1.458.79C11.81 7.684 9.967 8 8 8s-3.809-.317-5.208-.876a6.5 6.5 0 0 1-1.458-.79z"/>
                                <path d="M14.667 11.668a6.5 6.5 0 0 1-1.458.789c-1.4.56-3.242.876-5.21.876-1.966 0-3.809-.316-5.208-.876a6.5 6.5 0 0 1-1.458-.79v1.666C1.333 14.806 4.318 16 8 16s6.667-1.194 6.667-2.667z"/>
                              </svg>
                            SPRING CORE
                        </a>
                        <ul id="springcore" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item toggle-btn" data-target="helloSection1"> 
                                <a href="#" class="sidebar-link">1) Introduction of Spring Framework</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link collapsed" data-bs-target="#depinj"
                                    data-bs-toggle="collapse" aria-expanded="false">2) Spring Dependency Injection</a>
                                <ul id="depinj" class="sidebar-dropdown list-unstyled collapse">
                                    <li class="sidebar-item">
                                        <a href="#" class="sidebar-link toggle-btn" data-target="helloSection2">2.1) Dependency Injection</a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a href="#" class="sidebar-link toggle-btn" data-target="helloSection3">2.2) Setter Injection</a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a href="#" class="sidebar-link toggle-btn" data-target="helloSection4">2.3) Constructor Injection</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">3) Autowiring</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">4) JdbcTemplate</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">5) PagesDifference between Setter and Constructor Injection</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">6) Annotationsk</a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#springmvc" data-bs-toggle="collapse"
                            aria-expanded="false"><i class="fa-solid fa-share-nodes pe-2"></i>
                            SPRING MVC
                        </a>
                        
                        <ul id="springmvc" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">1) Architecture of Web MVC</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">2) Spring MVC example Using Abstract Controller (Without annotaion)</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">3) Spring MVC example using @Controller and @RequestMapping Annotations</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">4) MultiView and MultiAction Controller</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">5) Model Interface</a>
                            </li>
                            
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link collapsed" data-bs-target="#level-1"
                                    data-bs-toggle="collapse" aria-expanded="false">6) Handling HTML form request</a>
                                <ul id="level-1" class="sidebar-dropdown list-unstyled collapse">
                                    <li class="sidebar-item">
                                        <a href="#" class="sidebar-link">6.1) Using HttpServletRequest</a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a href="#" class="sidebar-link">6.2) Using @RequestParam Annotation</a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a href="#" class="sidebar-link">6.3) Using @ModelAttribute Annotation</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#form" data-bs-toggle="collapse"
                            aria-expanded="false"><i class="fa-solid fa-file-lines pe-2" style="font-size: 18px;"></i>
                            MVC Form Tag Library
                        </a>
                        <ul id="form" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">1) One Way and Two Way Binding</a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#Crud" data-bs-toggle="collapse"
                            aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-menu-button-wide-fill" style="margin-right: 8px;" viewBox="0 0 16 16">
                                <path d="M1.5 0A1.5 1.5 0 0 0 0 1.5v2A1.5 1.5 0 0 0 1.5 5h13A1.5 1.5 0 0 0 16 3.5v-2A1.5 1.5 0 0 0 14.5 0zm1 2h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1m9.927.427A.25.25 0 0 1 12.604 2h.792a.25.25 0 0 1 .177.427l-.396.396a.25.25 0 0 1-.354 0zM0 8a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2zm1 3v2a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2zm14-1V8a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v2zM2 8.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5m0 4a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5"/>
                              </svg>
                            Web MVC Crud Application
                        </a>
                        <ul id="Crud" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">1) Web MVC Crud Application</a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#Login" data-bs-toggle="collapse"
                            aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-person-check-fill" style="margin-right: 8px;" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0"/>
                                <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6"/>
                              </svg>
                            Login Demo web MVC
                        </a>
                        <ul id="Login" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">1) Login Demo</a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#email" data-bs-toggle="collapse"
                            aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-send-fill" style="margin-right: 8px;" viewBox="0 0 16 16">
                                <path d="M15.964.686a.5.5 0 0 0-.65-.65L.767 5.855H.766l-.452.18a.5.5 0 0 0-.082.887l.41.26.001.002 4.995 3.178 3.178 4.995.002.002.26.41a.5.5 0 0 0 .886-.083zm-1.833 1.89L6.637 10.07l-.215-.338a.5.5 0 0 0-.154-.154l-.338-.215 7.494-7.494 1.178-.471z"/>
                              </svg>
                            Sending Email
                        </a>
                        <ul id="email" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">1) Sending Simple mail using SimpleMailMessage</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">2) Sending email to multiple receiver</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">3) Sending Email with attachment</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">4) Authentication on Email with OTP</a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#auth" data-bs-toggle="collapse"
                            aria-expanded="false">
                             <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-cloud-upload-fill" style="margin-right: 8px;" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M8 0a5.53 5.53 0 0 0-3.594 1.342c-.766.66-1.321 1.52-1.464 2.383C1.266 4.095 0 5.555 0 7.318 0 9.366 1.708 11 3.781 11H7.5V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11h4.188C14.502 11 16 9.57 16 7.773c0-1.636-1.242-2.969-2.834-3.194C12.923 1.999 10.69 0 8 0m-.5 14.5V11h1v3.5a.5.5 0 0 1-1 0"/>
                             </svg>
                            Uploading Files
                        </a>
                        <ul id="auth" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">1) Uploading Single File</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">2) Upload file with attachment</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">3) Upload Multiple Files to Server</a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#download" data-bs-toggle="collapse"
                            aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-cloud-download-fill" style="margin-right: 8px;" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M8 0a5.53 5.53 0 0 0-3.594 1.342c-.766.66-1.321 1.52-1.464 2.383C1.266 4.095 0 5.555 0 7.318 0 9.366 1.708 11 3.781 11H7.5V5.5a.5.5 0 0 1 1 0V11h4.188C14.502 11 16 9.57 16 7.773c0-1.636-1.242-2.969-2.834-3.194C12.923 1.999 10.69 0 8 0m-.354 15.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 14.293V11h-1v3.293l-2.146-2.147a.5.5 0 0 0-.708.708z"/>
                              </svg>
                            Download Files
                        </a>
                        <ul id="download" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">1) Download File from Server</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">2) Download File from Server from table view</a>
                            </li>
                        </ul>
                    </li>
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
                        <li class="nav-item dropdown">
                            <a href="#" data-bs-toggle="dropdown" class="nav-icon pe-md-0">
                              <span>${sesemail}</span>  <img src="assets/img/testimonials/profile.jpg" class="avatar img-fluid rounded" alt="">
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a href="#" class="dropdown-item">Profile</a>
                                <a href="#" class="dropdown-item">Setting</a>
                                <a href="#" class="dropdown-item">Logout</a>
                            </div>
                        </li>
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
                            <b> Spring Framework -</b>  The Spring Framework provides a comprehensive programming and configuration model for modern Java-based enterprise applications  on any kind of deployment platform. 
                             It can be thought of as a framework of frameworks because it provides support to various frameworks such as Struts, Hibernate, Tapestry, EJB, JSF, etc. The framework, in broader sense, can be defined as a structure where we find solution of the various technical problems. 
                        </p>
                        <div class="img-container">
                            <img src="https://1.bp.blogspot.com/-1A8yFspYhIU/XxciPbOX74I/AAAAAAAAANc/Joi30ePg2ZgeQRFFu_J5c8y9PCI0n55sQCLcBGAsYHQ/s640/spring-framework-architecture.jpg" alt="Responsive image">
                        </div>
                        <p class="h4">Spring Framework Architecture </p>
                        
                    </div>
                    <div class="explanation">
                        <p class="in-head h4"><b>1.</b> Spring framework Core Components </p>
                        <p class="para">The core  container from Spring consist of four modules SpEL, Context, Core and Beans</p>
                        <p class="para"><b>1.1.</b> The SpEL module provides a powerful expression language for manipulating objects during execution.</p>
                        <p class="para"><b>1.2</b> Context is built on the basis of Beans and Core and allows you to access any object that is defined in the setting.The Key Element of the context is ApplicationContext interface.</p>
                        <p class="para"><b>1.3</b> The Core modules provides key parts of the framework including IoC and DI properties.</p>
                        <p class="para"><b>1.4</b> The Bean module is responsible for creating and managing spring beans is application context structure unit. </p>

                        <p class="in-head h4"><b>2.</b> Spring framework Web</p>
                        <p class="para">Spring framework web layer consists of Web, Web-MVC, Web-Socket, Web-portlet etc. refer Introduction of Web MVC</

                        <p class="in-head h4"><b>3.</b> Spring Framework Data Access</p>
                        <p class="para">Data Access container consists of JDBC,ORM,OXM,JMS and Transaction Module.</p>
                        <p class="para"><b>3.1</b> JDBC - provides an abstract layer JDBC and elominates the need for the developer to manually register the monotonous code associated with connecting to the database.</p>
                        <p class="para"><b>3.2</b> Spring ORM provides integration with popular ORM's such as Hibernate,JDO which are implementations of JPA.</p>
                        <p class="para"><b>3.3</b> The OXM module is responsible for linking the object XML-XMLBeans etc.</p>
                        <p class="para"><b>3.4</b> The JMS(Java Messaging Sevice) module is responsible for creating, sending and receiving messages.</p>
                        <p class="para"><b>3.5</b> Transaction support transaction management for classes that implement certain methods POJO's.</p>

                        <p class="in-head h4"><b>4.</b> Miscellaneous Module</p>
                        <p class="para">Spring also includes a number of other important modules such as AOP,Aspects, Instrumentation, Messaging and Test.</p>
                        <p class="para"><b>4.1</b> AOP implements aspect oriented programming and allows using the entire features of AOP capabilities.</p>
                        <p class="para"><b>4.2</b> The aspects module proides integration with AspectJ which is also powerful AOP framework.</p>
                        <p class="para"><b>4.3</b> Instrumentation is responsible for supporting class instrumentation and class loader which are used in server application.</p>
                        <p class="para"><b>4.4</b> The Messaging module provides STOMP support.</p>
                        <p class="para"><b>4.5</b> Finally, the Test Module provides testing TestNG or JUnit Framework.</p>

                        <p class="in-head h4">Spring Framework Features</p>
                        <p class="para"><b>1.</b> Core Technologies - Dependency Injection, event resources,validation, data binding,AOP</p>
                        <p class="para"><b>2.</b>Testing - Spring MVC Test, mock objects</p>
                        <p class="para"><b>3.</b>Data Access - transactions, DAO Support,JDBC,ORM</p>
                        <p class="para"><b>4.</b>Spring MVC Framework</p>
                        <p class="para"><b>5.</b>Auto Configuration</p>

                        <p class="in-head h4">Advantages of Spring Framework </p>
                        <p class="para"><b>1.</b> Light Weight - It uses light weight servlet container to develop application</p>
                        <p class="para"><b>2.</b>Powerful Configuration - It provides robust configuration for both framework and application classes eg web controllers, business logic, validations  etc.</p>
                        <p class="para"><b>3.</b>Rapid Development - Due to auto configuration over conventional method the application developed rapidly.</p>
                        <p class="para"><b>4.</b>Template Driven - Due to this nature template driven once template created for any business application, most of services repeated without repeating code eg transaction are same for almost all business application.</p>
                        <p class="para"><b>5.</b> Unit Testing - Unit testing is very easy, because of layered architecture of spring. It is easy to test error at each layer.</p>
                        <p class="para"><b>6.</b> Mapping - Rich set of annotation that easily redirect the pages and handles data easily.</p>
                        
                        <p class="in-head h4">Spring Core Technology </p>
                        <p class="para"> <b></b>1.1 Inversion of Control (IoC) - IoC is tool which is used to inject setter and constructor dependency internally to achieve loose coupling dependency hence it is also known as DI i.e. dependency injection. It is the process where object defines their dependency through constructor argument, arguments to factory method or by setting class properties. IOC Container gets information from xml and works accordingly. Spring IOC container working architecture <b>Shown below.</b> </p>
                    </div>

                    <div class="row">
                        <div class="img-container-small">
                            <img src="https://1.bp.blogspot.com/-BwcN5eZ4-HE/XwFkIXYNZLI/AAAAAAAAALM/pj5uf7Dr3GoXzwASwTS3g0yu_nV-w2mdQCLcBGAsYHQ/s400/IOC%2BContainer.jpg"  alt="Responsive image">
                        </div>
                    </div>

                    <div class="explanation">
                        <p class="in-head h4" style=" margin-left: 10%; margin-top: 5%;">Explanation -  </p>
                        <p class="para"><b>1)</b> User Object will send request to spring/IoC container.</p>
                        <p class="para"><b>2)</b> Spring Container generates its own object of the BeanClasses </p>
                        <p class="para"><b>3)</b> Send the request to xml configuration file and bean object will check for bean configuration of request object if found then container will give permission to user for using user facility mentioned in user class. </p>
                        <p class="para"><b></b>The org.springframework.beans and org.springframework.context are packages for IoC container. BeanFactory interface provides basic functionality and ApplicationContext provides more enterprize specific functionality. ApplicationContext called superset of BeanFactory. In Spring objects form backbone of your application and managed by spring container known as IoC Container are called as beans. </p>
                        <p class="para">Implementation of ApplicationContext interface are supplies with spring. It is used to create instance of ClassPathXmlApplcationContext. Xml file defines configuration metadata. For information about using other forms of metadata with Spring Container.</p>
                            
                        <p class="para">
                            <ul style="margin-left: 16%; color: #ccc; font-family: cursive;" >
                                <li>Annotation Based Configuration - Spring 2.5 introduced support for annotation-based configuration metadata.</li>
                                <li>Java Based Configuration - Starting with Spring 3.0, many features provided by the Spring JavaConfig project became part of the core Spring Framework. To use new features, annotations such as `@Configuration`, `@Import`, `@Beans` can be used.</li>
                                <li>XML Based Configuration - The following example shows the basic structure of XML-based configuration metadata:<?xml version="1.0" encoding="UTF-8"?>
                                </li>
                            </ul>
                         </p>
                    </div>
                    <!-- Table Element -->
                    <div class="card border-0">
                    
                    </div>
                  </section>
                </div>
                
                <div class="container-fluid">
                    <section id="helloSection2" class="section">
                   		<br>
                    	 <h1> this is another section</h1>
                    	 <p> 2.1 Dependencty Inection</p>
                   		<br>
                     </section>
                </div>
                
                <div class="container-fluid">
                    <section id="helloSection3" class="section">
                      <br>
                       <h1> this is another section</h1>
                       <p> 2.2 Setter Inection</p>
                      <br>
                    </section>
                </div>
                
                <div class="container-fluid">
                    <section id="helloSection4" class="section">
                      <br>
                        <h1> this is another section</h1>
                        <p> 2.3 Constructor Inection</p>
                      <br>
                    </section>
                </div>
            </main>

            
            <footer class="footer">
                <div class="container-fluid">
                    <div class="row text-muted">
                        <div class="col-6 text-start">
                            <p class="mb-0">
                               
                            </p>
                        </div>
                        <div class="col-6 text-end">
                            
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
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

</body>

</html>
