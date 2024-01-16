<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://icons.getbootstrap.com" />

    <script src="https://kit.fontawesome.com/ae360af17e.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/adamindash.css">
</head>

<body>
    <div class="wrapper">
        <aside id="sidebar" class="js-sidebar">
            <!-- Content For Sidebar -->
            <div class="h-100">
                <div class="sidebar-logo">
                    <a href="#">HS-Group</a>
                </div>
                <ul class="sidebar-nav">
                    <li class="sidebar-header">
                        Admin Dashboard
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link toggle-btn" data-target="helloSection1">
                            <i class="fa-solid fa-list pe-2"></i>
                            Add Course
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link toggle-btn" data-target="helloSection2">
                            <i class="fa-solid fa-list pe-2"></i>
                            Add Placement
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link toggle-btn" data-target="helloSection3">
                            <i class="fa-solid fa-list pe-2"></i>
                            Contact Us Messages
                        </a>
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
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">1) Introduction of Spring Framework</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link collapsed" data-bs-target="#depinj"
                                    data-bs-toggle="collapse" aria-expanded="false">2) Spring Dependency Injection</a>
                                <ul id="depinj" class="sidebar-dropdown list-unstyled collapse">
                                    <li class="sidebar-item">
                                        <a href="#" class="sidebar-link">2.1) Dependency Injection</a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a href="#" class="sidebar-link">2.2) Setter Injection</a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a href="#" class="sidebar-link">2.3) Constructor Injection</a>
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
                                <img src="assets/img/testimonials/profile.jpg" class="avatar img-fluid rounded" alt="">
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
                             <!-- Heading of topic -->
                          <h1 class="heading">Add Course</h1>
                        </div>
                    
                  </section>
                </div>

                <div class="container-fluid">
                    <section id="helloSection2" class="section">
  
                          <div class="mb-3">
                               <!-- Heading of topic -->
                            <h1 class="heading">Add Placement</h1>
                          </div>
                      
                    </section>
                  </div>

                  <div class="container-fluid">
                    <section id="helloSection3" class="section">
  
                          <div class="mb-3">
                               <!-- Heading of topic -->
                            <h1 class="heading">Contact Us messages</h1>
                          </div>
                      
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
    <script src="assets/js/admindash.js"></script>
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
</body>

</html>
