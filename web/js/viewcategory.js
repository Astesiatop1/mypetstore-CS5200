var xmlHttpRequest;
function createXMLHttpRequest()
{
    console.log('yes');

    if (window.XMLHttpRequest) //非IE浏览器
    {
        xmlHttpRequest = new XMLHttpRequest();
    }
    else if (window.ActiveObject)//IE6以上版本的IE浏览器
    {
        xmlHttpRequest = new ActiveObject("Msxml2.XMLHTTP");
    }
    else //IE6及以下版本IE浏览器
    {
        xmlHttpRequest = new ActiveObject("Microsoft.XMLHTTP");
    }
}

function showInblock(categoryId) {
    console.log(categoryId);
    sendRequest("JSViewCategory?categoryId=" + categoryId);
}

function sendRequest(url) {
    createXMLHttpRequest();
    xmlHttpRequest.open("GET", url, true);
    xmlHttpRequest.onreadystatechange = processResponse;
    xmlHttpRequest.send(null);
}

function processResponse() {
    if (xmlHttpRequest.readyState == 4) {
        if (xmlHttpRequest.status == 200) {
            var resp = xmlHttpRequest.responseText;
            //显示悬浮层
            var inform = document.getElementById("inform");
            inform.innerText = resp;
            fadeIn(inform,20);
            inform.style.display = "block";
        }
    }
}

function hideblock(event){
    var informDiv = document.getElementById('inform');
    var x=event.clientX;
    var y=event.clientY;
    var divx1 = informDiv.offsetLeft;
    var divy1 = informDiv.offsetTop;
    var divx2 = informDiv.offsetLeft + informDiv.offsetWidth;
    var divy2 = informDiv.offsetTop + informDiv.offsetHeight;
    if( x < divx1 || x > divx2 || y < divy1 || y > divy2){
        fadeOut(informDiv);
        //document.getElementById('inform').style.display='none';

    }

}

function fadeIn(element,speed){
    if(element.style.opacity !=1){
        var speed = speed || 30 ;
        var num = 0;
        var st = setInterval(function(){
            num++;
            element.style.opacity = num/10;
            if(num>=10)  {  clearInterval(st);  }
        },speed);
    }
}

function fadeOut(element){
    if(element.style.opacity !=0){
        var speed = speed || 30 ;
        var num = 10;
        var st = setInterval(function(){
            num--;
            element.style.opacity = num / 10 ;
            if(num<=0)  {   clearInterval(st);  }
        },speed);
    }

}
