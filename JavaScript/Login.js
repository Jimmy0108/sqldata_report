function show_hide() {
    var login = document.getElementById("container1");
    var signup = document.getElementById("container2");
    var copyright = document.getElementById("copyright");
  
    if (login.style.display === "none") {
        login.style.display = "block";  //lonin出現
        document.getElementById("username").value="";
        document.getElementById("password").value="";
        signup.style.display = "none";  //signup消失
        copyright.style.margin = "200px 0px 0px 0px";
    } else {
        login.style.display = "none";   //login消失
        signup.style.display = "block"; //signup出現
        signup.style.visibility="visible";
        copyright.style.margin = "200px 0px 0px 0px";
     
        document.getElementById("fullname").value="";
        document.getElementById("username2").value="";
        document.getElementById("password2").value="";
        document.getElementById("comfirm_password").value="";
    }
}
document.addEventListener("DOMContentLoaded", function () {
    var registForm = document.forms["registform"];

    registForm.addEventListener("submit", function (event) {
        // 获取表单中的各个输入框的值
        var username = registForm["username"].value;
        var password = registForm["password"].value;
        var confirm_password = registForm["comfirm_password"].value;
        var email = registForm["Email"].value;
        var address = registForm["add"].value;

        // 验证帳號只能三个字
        if (username.length !== 3) {
            alert("帳號必須為三個字");
            event.preventDefault(); // 阻止表单提交
            return;
        }

        // 验证密码必须有大小写且超过六个字
        if (!/[a-z]/.test(password) || !/[A-Z]/.test(password) || password.length < 6) {
            alert("密碼必須有大小寫且超過六個字");
            event.preventDefault();
            return;
        }

        // 验证電子郵件必须包含@
        if (email.indexOf("@") === -1) {
            alert("電子郵件必須包含@");
            event.preventDefault();
            return;
        }

        // 验证地址不能为空
        if (address.trim() === "") {
            alert("地址不能為空");
            event.preventDefault();
            return;
        }

        // 验证密码和确认密码是否一致
        if (password !== confirm_password) {
            alert("確認密碼與密碼不一致");
            event.preventDefault();
            return;
        }
    });
});
