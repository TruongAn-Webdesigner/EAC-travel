<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EAC Travel</title>

    <!-- css -->
    <link rel="stylesheet" href="css/index.css">

    <!-- google font -->
    <link href="https://fonts.googleapis.com/css2?family=Alice&display=swap" rel="stylesheet"> <!-- font-family: 'Alice', serif; -->
    <link href="https://fonts.googleapis.com/css2?family=Exo&display=swap" rel="stylesheet"> <!-- font-family: 'Exo', sans-serif;-->

    <!-- font awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    
</head>
<body>

        <?php
        
            $ctrl='home';
            if(isset($_GET['ctrl'])){
                $ctrl = $_GET['ctrl'];
            }

            include 'controller/'.$ctrl.'.php';

        ?>
</body>
</html>
