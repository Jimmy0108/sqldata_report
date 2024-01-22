<?php
session_start();
// 清除所有 session 變數
session_unset();
// 刪除 session
session_destroy();
// 導向回首頁或其他適當的頁面
header("Location: ../php/index.php");
exit();
?>
