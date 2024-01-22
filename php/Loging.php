<?php
session_start();//這邊我session開始，然後換下一頁
include "config.php";
try {
    $conn = new PDO("mysql:host=" . DB_SERVER  .";dbname=" . DB_DATABASE, DB_USER, DB_PASSWORD);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "Connected successfully";
    $sql = "SELECT * FROM member WHERE personID = :username AND phone = :password";  
    $stmt = $conn->prepare($sql);
    $stmt->bindValue(':username', $_POST['username'], PDO::PARAM_STR);
    $stmt->bindValue(':password', $_POST['password'], PDO::PARAM_STR);
    $success = $stmt->execute();
    //print_r($success);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);        
    //print_r($result);
    if($result)
    {
        $_SESSION['login'] = true;//這裡應該要儲存session但是只能在這個頁面顯示
        $_SESSION['username'] = $_POST['username'];
        $response = $_SESSION['login'];
        //echo $_SESSION['login']; 我開跳轉功能
        echo "<script>alert('登入成功！！！'); location.href = '../php/index.php';</script>";
      
    }
    else
    {
        $_SESSION["login"] = false;
        echo "<script>alert('帳號/密碼錯誤 請重新登入'); location.href = '../html/Loging.html';</script>";
    }
  } catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
  }
  

?>