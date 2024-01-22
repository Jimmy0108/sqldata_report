<?php
    include "../php/topbar.php";
?>
<!DOCTYPE html>
<html>
    <head>
        <title>個人資料</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    </body>
</html>
<?php
    session_start();
    if(isset($_SESSION['login']) && $_SESSION['login'] == true)
    {
        include "persondata_show.php";
    }
    else
    {
        echo "<h1 align='center'>請登入</h1>";
    }
?>
<?php
    include "../php/foot.php";
?>