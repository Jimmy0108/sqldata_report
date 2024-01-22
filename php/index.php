<?php
    include "../php/topbar.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/test_1.css">
    <title>資料庫期末專題</title>
</head>
<body>
    <div class="container">
        <h1 align="center">近期活動</h1>
        <main>
            <div class="event-card">
                <img src="../image/AdoWishBanner_16x9_02S.jpg.webp" alt="Event 1">
                <h3>Ado</h3>
                <a href="https://www.gq.com.tw/article/ado-%E4%B8%96%E7%95%8C%E5%B7%A1%E8%BF%B4%E6%BC%94%E5%94%B1%E6%9C%83-%E5%8F%B0%E5%8C%97%E7%AB%99">Ado演唱會信息</a>
                <p>票價：$2000.00</p>
                <button class="buy-button" onclick="buyProduct()">買票</button>
            </div>

            <div class="event-card">
                <img src="../image/Ed.webp" alt="Event 2">
                <h3>紅髮艾德世界巡迴演唱會高雄站Ed Sheeran＋－＝÷×2024 TOUR</h3>
                <p>演出日期/時間：2024年2月3日（六）晚上7:00</p>
                <p>票價：$1800~9800</p>
                <button class="buy-button" onclick="buyProduct()">買票</button>
            </div>
            <form name="buy3" method="post" action="buy_product">
                <div class="event-card">
                    <img src="../image/Mayday.jpeg" alt="Event 2">
                    <h3>MAYDAY #5525 LIVE TOUR 五月天 [ 回到那一天 ] 25週年 巡迴演唱會</h3>
                    <p>演出場次｜2023/12/31 (日)2024/01/01 (一) 、01/02 (二)、01/05 (五)、01/06 (六)、01/07 (日)</p>
                    <p>票價：$880~4580</p>
                    <button type="submit" class="buy-button" onclick="buyProduct()">買票</button>
                </div> 
            </form>
        </main>
        <script src="../JavaScript/index.js"></script>
    </div>
    </body>
</html>
<?php
    include "../php/foot.php";
?>