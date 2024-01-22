
function changePage(pageNumber) {
    // Add logic to change the content based on the selected page
    if(pageNumber == '1'){
        window.location.href="../php/index.php";
    }
    if(pageNumber == '2'){
        window.location.href="../php/news.php";
    }
    if(pageNumber == '3'){
        window.location.href="../php/persondata.php";
    }
    if(pageNumber == '4'){
        window.location.href="../php/aboutus.php";
    }
}

function buyProduct() {
    // 獲取商品資訊
    var productName = "Ado";
    var productPrice = 499;

    // 創建 XMLHttpRequest 物件
    var xhr = new XMLHttpRequest();

    // 設定 HTTP 請求方法和目標 URL
    xhr.open('POST', 'purchase.php', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    // 處理回應
    xhr.onload = function () {
        if (xhr.status === 200) {
            // 回應處理成功
            console.log(xhr.responseText);
            alert('購買成功！');
        } else {
            // 處理錯誤
            console.error('購買請求失敗。');
            alert('購買失敗，請稍後再試。');
        }
    };

    // 準備發送的資料
    var data = 'productName=' + encodeURIComponent(productName) +
               '&productPrice=' + encodeURIComponent(productPrice);

    // 發送請求
    xhr.send(data);
}

/*function openLoginModal() {
    //document.getElementById('loginModal').style.display = 'block';
    window.location.href="../html/Loging.html";
}

function closeLoginModal() {
    //document.getElementById('loginModal').style.display = 'none';

}

function openRegisterModal() {
    document.getElementById('registerModal').style.display = 'block';
}

function closeRegisterModal() {
    document.getElementById('registerModal').style.display = 'none';
}*/
//---
// 使用一個變數來追踪登入狀態

// 創建 XMLHttpRequest 對象
var xhr = new XMLHttpRequest();
// 設定 HTTP 請求方法和目標 URL
xhr.open('GET', 'getSessionData.php', true);

// 處理回應
xhr.onload = function () {
    xhr.send();
    if (xhr.status === 200) {
        // 解析 JSON 格式的回應
        var response = JSON.parse(xhr.responseText);

        // 獲取 $_SESSION['login'] 的值
        var isLoggedIn = response.isLoggedIn;

        // 使用 isLoggedIn 進行相應的操作
        if (isLoggedIn) {
            console.log(isLoggedIn);
        } else {
            console.log(isLoggedIn);
        }
    } else {
        console.error('發生錯誤：' + xhr.statusText);
    }
};

// 發送請求

function toggleLogin() {
    // 模擬登入動作
    isLoggedIn = true;
    window.location.href="../html/Loging.html";
    updateButtons();
}

function toggleLogout() {
    // 模擬登出動作
    isLoggedIn = false;
    alert("已登出，下次見");
    window.location.href="../php/Logout.php";
}

function updateButtons() {
    const loginButton = document.getElementById('loginButton');
    const logoutButton = document.getElementById('logoutButton');

    // 根據登入狀態顯示/隱藏按鈕
    if (isLoggedIn) {
        loginButton.style.display = 'none';
        logoutButton.style.display = 'inline-block';
    } else {
        loginButton.style.display = 'inline-block';
        logoutButton.style.display = 'none';
    }
}

// 初始載入時更新按鈕狀態