var xmlHttpRequest;
function createXMLHttpRequest()
{
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

function updateCart(cartItemId,cartItemQuantity) {
    //var username = document.NewAccountForm.username.value;
    //var workingItemId = document.getElementById('workingItemId').value;
    //sendRequest("updateCartQuantities?username=" + username);
    console.log(cartItemId+cartItemQuantity);
    sendRequest("updateCartJSServlet?workingItemId="+ cartItemId+"&workingItemQuantity="+cartItemQuantity);
    //sendRequest("updateCartQuantities");
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
            var array = resp.split(",");
            var Namearray = document.getElementsByName(array[0]);

            var quantity = Namearray[0];
            var total = Namearray[1];
            var subtotal = document.getElementById("subtotal");

            console.log(resp);
            quantity.innerText = array[1];
            subtotal.innerText = array[3];
            total.innerText = array[2];
        }
    }
}
