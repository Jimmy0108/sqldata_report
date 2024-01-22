<?php
// 處理購買請求
include "config.php";
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // 接收前端傳送的商品資訊
    $productName = $_POST['productName'];
    $productPrice = $_POST['productPrice'];
    try {
        $conn = new PDO("mysql:host=" . DB_SERVER . "; dbname=" . DB_DATABASE, DB_USER, DB_PASSWORD);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        // 執行 SQL INSERT 語句
        $sql = "INSERT INTO oder_number (memberID, performID, amount) VALUES (:productName, :productPrice, '1');";
        $conn->exec($sql);

        echo "商品已成功購買！";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }

    $conn = null;
} else {
    echo "Invalid request.";
}
?>
