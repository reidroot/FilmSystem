
function initLoginPage() {
    //初始化验证码
    const captcha = document.getElementById('captcha-img');
    captcha.src = generateCaptcha();
    captcha.onclick = function () {
        captcha.src = generateCaptcha();
    };

    //初始化输入框的事件
    initInputEvent();

    //初始化登录按钮点击事件
    document.getElementById("form-submit-btn").onclick = login;
}

function initRegisterPage() {

}


/**
 * 产生验证码并且设置session
 */
function generateCaptcha() {
    var code = getRandomString();
    setSession('Captcha', code);
    var canvas = getStringCanvas(code);
    return canvasToBase64Image(canvas);
}

/**
 * 设置验证码字符
 * 得到随机字符串
 * @param  {number} len [字符串长度]
 * @return {[String]}     [随机字符串]
 */
function getRandomString(len) {
    var ostr = "abcdefghijkmnpqrstuvwxyzABCEFGHJKLMNPQRSTWXYZ1234567890";
    var len = len || 4;
    var ostr_len = ostr.length;
    var randomString = "";
    for (var i = 0; i < len; i++) {
        randomString += ostr.charAt(Math.floor(Math.random() * ostr_len));
    }
    return randomString;
}


/**
 * 得到随机颜色的16进制值
 * @return {[String]} [颜色的十六进制值]
 */
function getRandomColor() {
    return '#' + ('00000' + (Math.random() * 0x1000000 << 0).toString(16)).substr(-6);
}

/**
 * HTML5 canvas对象转换成png格式图片的base64编码字符串
 * @param canvas {HTMLCanvasElement}
 * @returns {string}png格式图片的base64编码字符串
 */
function canvasToBase64Image(canvas) {
    return canvas.toDataURL("image/png");
}

/**
 * 获得
 * @param string
 * @returns {HTMLCanvasElement}
 */
function getStringCanvas(string) {
    var canvas = document.createElement("canvas"); //创建canvas的对象
    var context = canvas.getContext("2d"); //canvas画图的环境

    canvas.width = 80;
    canvas.height = 30;
    var string = string || "capa";

    // 填充字符串
    for (var i = 0; i < string.length; i++) {
        var txt = string.charAt(i);
        var text_x = 10 + i * 18;
        var text_y = 20 + Math.random() * 6;
        // 产生一个随机角度
        var angle = Math.random() - 0.8;
        context.font = "bold 22px 微软雅黑";
        context.fillStyle = getRandomColor();
        context.translate(text_x, text_y); // 移动到想0+x，0+y
        context.rotate(angle);
        context.fillText(txt, 0, 0);
        // 还原
        context.rotate(-angle);
        context.translate(-text_x, -text_y);
    }

    // 验证码上显示线条
    for (var i = 0; i < 5; i++) {
        context.strokeStyle = getRandomColor();
        context.beginPath();
        context.moveTo(Math.random() * canvas.width, Math.random() * canvas.height);
        context.lineTo(Math.random() * canvas.width, Math.random() * canvas.height);
        context.stroke();
    }

    // 验证码上显示斑点
    for (var i = 0; i < 30; i++) {
        context.strokeStyle = getRandomColor();
        context.beginPath();
        var x = Math.random() * canvas.width;
        var y = Math.random() * canvas.height;
        context.moveTo(x, y);
        context.lineTo(x + 1, y + 1);
        context.stroke();
    }

    return canvas;
}

//Start Login Code
{
    var ele_userEmail = document.getElementById("userEmail");
    var ele_userPwd= document.getElementById("userPwd");
    var ele_captcha = document.getElementById("captcha");

    var ele_userEmailError = ele_userEmail.parentElement.querySelector(".input-tip");
    var ele_userPwdError = ele_userPwd.parentElement.querySelector(".input-tip");
    var ele_captchaError = ele_captcha.parentElement.querySelector(".input-tip");

    function login() {
        checkLoginInfo()
    }


    function initInputEvent() {
        ele_userEmail.onfocus = function () {
            this.placeholder = "";
            ele_userEmailError.style.color = "#FF8D1B";
            ele_userEmailError.innerHTML = "✎ 用户邮箱：";
        };

        ele_userEmail.onblur = function () {
            this.placeholder = "请输入您的用户邮箱";
            ele_userEmailError.innerHTML = ""
        };

        ele_userPwd.onfocus = function () {
            this.placeholder = "";
            ele_userPwdError.style.color = "#FF8D1B";
            ele_userPwdError.innerHTML = "✎ 密码：";
        };

        ele_userPwd.onblur = function () {
            this.placeholder = "请输入您的密码";
            ele_userPwdError.innerHTML = "";
        };

        ele_captcha.onfocus = function () {
            this.placeholder = "";
            ele_captchaError.style.color = "#FF8D1B";
            ele_captchaError.innerHTML = "✎ 验证码：";
        };

        ele_captcha.onblur = function () {
            this.placeholder = "请输入验证码";
            ele_captchaError.innerHTML = "";
        };
    }

    function checkLoginInfo() {
        let isSuccess = true;

        // !!把一个任意类型的值转换为布尔类型，存在为true，不存在为false

        if (ele_captcha.value.toLowerCase() !== getSession("Captcha").toLowerCase()) {
            ele_captchaError.style.color = "#F00";
            ele_captchaError.innerHTML = "× 验证码错误！";
            return false;
        }

        location.href = '/userLogin?userEmail='+ele_userEmail.value+"&userPwd="+ele_userPwd.value;

        return isSuccess;
    }
}
//End Login Code
