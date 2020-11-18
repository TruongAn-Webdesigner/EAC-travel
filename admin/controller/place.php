<?php
    
    $action='index';
    if(isset($_GET['act'])){
        $action=$_GET['act'];
    }

    switch($action){
        case 'index':
            include_once 'view/place/place.php';
        break;

        case 'ct':
            include_once 'view/place/chitietplace.php';
        break;
    }
?>
