<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EAC Travel</title>

    <!-- css -->
    <link rel="stylesheet" href="css/index.css">

    <!-- google font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet"><!-- font-family: 'Playfair Display', serif; -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300&display=swap" rel="stylesheet"><!-- font-family: 'Noto Sans JP', sans-serif; -->
    <link href="https://fonts.googleapis.com/css2?family=Goldman&display=swap" rel="stylesheet"><!-- font-family: 'Goldman', cursive; -->

    <!-- font awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">

    <!-- jiqueri -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    
</head>
<body>

    <div class="full">
        <!-- ad_left -->
        <div class="ad_left">

            <!-- title_ad_left -->
                <div class="title_ad_left">
                    EAC TRAVEL
                </div>
            <!-- end title_ad_left -->

            <!-- dashboarid -->
                <div class="dashboarid">

                    <div class="title_db">
                        DASHBOARID
                    </div>

                    <div class="content_db">
                        <ul>
                            <li class="active"><a href="#" >Statistical</a></li>

                            <li>
                                <a href="#"  class="feat-btn">Data <i class="fas fa-chevron-down"></i></a>
                                    <ul  class="feat-show">
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Place</a></li>
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Review</a></li>
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Tips note</a></li>
                                    </ul>
                                
                            </li>

                            <li>
                                <a href="#" class="serv-btn">E-commerce <i class="fas fa-chevron-down"></i></a>
                                    <ul  class="serv-show">
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Tour</a></li>
                                    </ul>
                                
                            </li>
                        </ul>
                    </div>
                </div>
            <!-- end dashboarid -->

            <!-- application -->

            <div class="dashboarid">

                <div class="title_db">
                   APPLICATION
                </div>

                <div class="content_db">
                    <ul>
                        <li><a href="#" >Mail</a></li>
                    </ul>
                </div>
            </div>

            <!-- end application -->

        </div>
        <!-- end ad_left -->

        <!-- ad_right -->
            <div class="ad_right">
            <?php
        
            $ctrl='home';
            if(isset($_GET['ctrl'])){
                $ctrl = $_GET['ctrl'];
            }

            include 'controller/'.$ctrl.'.php';

        ?>
            </div>
        <!-- end ad_right -->
    </div>



      <!-- java script -->

      <script>
    $('.btn').click(function(){
      $(this).toggleClass("click");
      $('.sidebar').toggleClass("show");
    });
      $('.feat-btn').click(function(){
        $('.content_db ul .feat-show').toggleClass("show");
        $('.content_db ul .first').toggleClass("rotate");
      });
      $('.serv-btn').click(function(){
        $('.content_db ul .serv-show').toggleClass("show1");
        $('.content_db ul .second').toggleClass("rotate");
      });
      $('.content_db ul li').click(function(){
        $(this).addClass("active").siblings().removeClass("active");
      });
    </script>

        
</body>
</html>
