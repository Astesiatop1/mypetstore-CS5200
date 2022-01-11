var $password=$('#password');
var $repeatedPassword=$('#repeatedPassword');

function checkCodeSame(){
    var password=$password.val();
    var repeatedPassword=$repeatedPassword.val();
    if(repeatedPassword!="")
    {
        if(password==repeatedPassword){
            document.getElementById("codeTips").innerHTML="<font color='green'>密码一致！</font>";
        }else{
            document.getElementById("codeTips").innerHTML= "<font color='red'>错误，密码不一致！</font>";
        }
    }else{
        document.getElementById("codeTips").innerText= "";
    }
}

