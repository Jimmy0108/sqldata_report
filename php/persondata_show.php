<?php
session_start();
include "config.php";
$username = $_SESSION['username'];
try {
    $conn = new PDO("mysql:host=" . DB_SERVER  .";dbname=" . DB_DATABASE, DB_USER, DB_PASSWORD);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // 使用參數化查詢防止 SQL 注入
    $sql = "SELECT name, birthday, memberID, address, email, phone FROM `member` WHERE personID = :username";
    $stmt = $conn->prepare($sql);
    //N152487694
    //987645633
    // 指定 :username 的型別為字串
    $stmt->bindParam(':username', $username, PDO::PARAM_STR);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
    $name = $result['name'];
    $birth = $result['birthday'];
    $memberID = $result['memberID'];
    $add = $result['address'];
    $email = $result['email'];
    $phone = $result['phone'];
}
catch(PDOException $e) {
    echo $e->getMessage();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/persondata.css">
    <style>
        .perdata_box {
            margin-top: 20px;
            border: 2px solid #333;
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            text-align: center;
        }

        .perdata_box th, .perdata_box td {
            border: 2px solid #333;
            padding: 8px;
        }

        .perdata_box th {
            background-color: #f2f2f2;
        }
    </style>
    <title>個人資料展示</title>
</head>
<body>

    <div class="perdata_body">
        <div class="profile-picture">
            <img class="profile-picture" src="../image/perimg.jpeg" alt="Profile Picture">
        </div>
        <div class="profile-box">
            <?php
                echo "<h3>姓名 : $name</h3>";
                echo "<p>生日 : $birth</p>";
                echo "<p>會員ID : $memberID</p>";
                echo "<p>城市地址 : $add</p>";
                echo "<p>Email : $email</p>";
                echo "<p>電話 : $phone</p>";
            ?>
        </div>
    </div>

    <div class="perdata_box">
        <h1>下單資料</h1>
        <?php
        // 假設你有一個包含表格資料的陣列
        $tableData = array(
            array('id','下單時間','performID','會員ID','下單總數'),
            array('1','2023-12-13','a1234','m1234','2'),
            // 可以繼續加入更多的資料
        );

        // 檢查 $tableData 是否有資料
        if (!empty($tableData)) {
            echo '<table class="perdata_box">';
            // 表頭
            echo '<tr>';
            foreach ($tableData[0] as $header) {
                echo '<th>' . $header . '</th>';
            }
            echo '</tr>';

            // 逐列處理資料
            foreach (array_slice($tableData, 1) as $row) {
                echo '<tr>';
                // 逐欄處理資料
                foreach ($row as $cell) {
                    echo '<td>' . $cell . '</td>';
                }
                echo '</tr>';
            }
            echo '</table>';
            echo '<button class="button" onclick="generateQRCode()">結帳</button>';
        } else {
            echo '<h3>沒有可顯示的資料。</h3>';
        }
        ?>   
            <script src="../JavaScript/persondata.js"></Script>
    </div>
</body>
</html>
