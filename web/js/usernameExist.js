var xhr;
function checkUsername(){
    var username=document.getElementById("username").value;
    xhr=new XMLHttpRequest();
    xhr.onreadystatechange=fun1;
    xhr.open("GET","usernameExist?username="+username,true);
    xhr.send(null);
}

function fun1(){
    if(xhr.readyState===4){
        if(xhr.status===200){
            var responseInfo=xhr.responseText;
            var tips=document.getElementById("usernameTips");
            if(responseInfo==='Exist'){
                tips.innerHTML= "<font color='red'>用户名已存在</font>";
            }else if(responseInfo==='Not Exist'){
                tips.innerHTML= "<font color='green'>用户名可用</font>";
            }else if(responseInfo==='null'){
                tips.innerHTML= "";
            }
        }
    }
}