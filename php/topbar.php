<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <link rel="stylesheet" href="../css/index.css">
    </head>
    <body>
        <div class="top-bar">
            <div class="logo">NULL</div>
            <div class="navigation">
                <button onclick="changePage(1)">首頁</button>
                <button onclick="changePage(2)">探索活動</button>
                <button onclick="changePage(3)">個人資訊</button>
                <button onclick="changePage(4)">關於我們</button>
            </div>
            <div class="user-options">
                <button id="loginButton" onclick="toggleLogin()">登入</button>
                <button id="logoutButton" onclick="toggleLogout()">登出</button>
                <!--<button onclick="openRegisterModal()">Register</button>-->
            </div>
        </div>

        <!--<div class="modal" id="loginModal">
            <div class="modal-content">
                <span class="close" onclick="closeLoginModal()">&times;</span>
                 Login form goes here 
                <h2>Login</h2>
                Add your login form fields here
            </div>
        </div> -->
    <!--
        <div class="modal" id="registerModal">
            <div class="modal-content">
                <span class="close" onclick="closeRegisterModal()">&times;</span>
                Register form goes here
                <h2>Register</h2>
                 Add your register form fields here
            </div>
        </div>
    -->
        <script src="../JavaScript/index.js"></script>
      </body>
</html>
<?php
    session_start();
?>
