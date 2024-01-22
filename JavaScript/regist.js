document.addEventListener("DOMContentLoaded", function () {
    var registForm = document.forms["registform"];
    var passwordInput = registForm["password"];
    var confirmPasswordInput = registForm["comfirm_password"];
    var passwordMessage = document.getElementById("passwordMessage");

    function checkPasswordMatch() {
        var password = passwordInput.value;
        var confirmPassword = confirmPasswordInput.value;

        if (password === confirmPassword) {
            passwordMessage.innerHTML = "密碼一致";
            passwordMessage.style.color = "green";
        } else {
            passwordMessage.innerHTML = "確認密碼與密碼不一致";
            passwordMessage.style.color = "red";
        }
    }
    passwordInput.addEventListener("input", checkPasswordMatch);
    confirmPasswordInput.addEventListener("input", checkPasswordMatch);
});//需做修整