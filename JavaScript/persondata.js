function generateQRCode() {
    // 假設這是您的訂單號碼
    var orderId = "12345";

    var orderIdInput = prompt("請輸入訂單號碼：");

    // 驗證訂單號碼是否有效，這裡需要您的實際邏輯
    if (orderIdInput === orderId) {
        alert("訂單號碼驗證成功！感謝您的購物！請查閱您的信箱有無商品！");
    } else {
        alert("訂單號碼驗證失敗，請檢查輸入。");
    }

}
