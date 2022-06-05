<?php
include "../functions.php";
session_start();

if(isset($_POST["send"])){

    $sendName = $_POST["sendName"];
    $sendEmail = $_POST["sendEmail"];
    $subject = $_POST["subject"];

    $message = $_POST["message"];

    $sql = "INSERT INTO `notifications`(`SenderName`, `SenderEmail`, `EmailSubject`, `Message`) VALUES ('$sendName','$sendEmail','$subject','$message')";
    $res = mysqli_query($db,$sql);
    if($res){
        $_SESSION["msg"] = '<div class="alert alert-success">Message Send</div>';
        header("location:notifications.php");
    }else{
        $_SESSION["msg"] = '<div class="alert alert-danger">Ooooop</div>';
        header("location:notifications.php");
    }

}
?>