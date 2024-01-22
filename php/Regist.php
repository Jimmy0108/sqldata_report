<?php
include "config.php";
try 
{

    $conn = new PDO("mysql:host=" . DB_SERVER ."; dbname =" . DB_DATABASE, DB_USER, DB_PASSWORD);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "successfull ";
    $conn->exec("USE " . DB_DATABASE);
    //$conn->exec($sql);
    $sql = "INSERT INTO member (personID, name, birthday, address, email, phone)VALUES (:username, :fullname, :birth, :add, :Email,:password)";
    $stmt = $conn->prepare($sql);
    $stmt->bindValue(':fullname', $_POST['fullname'], PDO::PARAM_STR);
    $stmt->bindValue(':username', $_POST['username'], PDO::PARAM_STR);
    $stmt->bindValue(':birth', $_POST['birth'], PDO::PARAM_STR);
    $stmt->bindValue(':add', $_POST['add'], PDO::PARAM_STR);
    $stmt->bindValue(':Email', $_POST['Email'], PDO::PARAM_STR);
    $stmt->bindValue(':password', $_POST['password'], PDO::PARAM_STR);
    $success = $stmt->execute();
    if($success)
    {
        echo "successful";
        sleep(1);
        $_SESSION["loggein"] = true;
        $_SESSION["username"] = $inputUsername; 
        echo "alert(註冊成功，請回首頁登入)";
        header("Location: ../php/index.php");
        exit;
    }
    else
    {
        echo "Fail";
        throw new PDOException();
    }
}
catch(PDOException $e)
{
    echo "Fail Connection ". $e->getMessage();
}
?>