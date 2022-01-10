<%@ include file="../common/IncludeTop.jsp"%>
<link rel="StyleSheet" href="css/confirmorder.css" type="text/css" media="screen" />


	<form action="conFirmOrderForm" method="post">
	    <table style="margin: auto">
			<div id="Catalog">
				<tr >
				<th colspan=2 style="text-align: center">Payment Details</th>
			</tr>
			<tr>
				<td>Card Type:</td>
				<td>
					<select>
						<option value="Visa" selected="selected">Visa</option>
						<option value="MasterCard">MasterCard</option>
						<option value="American Express">American Express</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Card Number:</td>
				<td>
					<input type="text" name="creditCard" value="999999999999" style="text-align: left">* Use a fake number!
				</td>
			</tr>
			<tr>
				<td>Expiry Date (MM/YYYY):</td>
				<td>
					<input type="text" name="expiryDate" value="12/03" style="text-align: left"/>
				</td>
			</tr>
			</div>

		</table>


			<nav id="nav" style="text-align:center;vertical-align:middle;">
				<ul>
					<li class="act" style="font-weight:bold">Billing address</li>
					<li style="font-weight:bold">Shipping address</li>
				</ul>
			</nav>
			<!--内容部分HTML代码-->
			<div id="container">
				<section class="tab" style="background-color: white">
					<table style="margin: auto;">
						<tr>
							<td width="170">First name:</td>
							<td>
								<input type="text" name="billToFirstName" value="${sessionScope.order.billToFirstName}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>Last name:</td>
							<td>
								<input type="text" name="billToLastName" value="${sessionScope.order.billToLastName}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>Address 1:</td>
							<td>
								<input type="text" size="40" name="billAddress1" value="${sessionScope.order.billAddress1}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>Address 2:</td>
							<td>
								<input type="text" size="40" name="billAddress2" value="${sessionScope.order.billAddress2}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>City:</td>
							<td>
								<input type="text" name="billCity" value="${sessionScope.order.billCity}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>State:</td>
							<td>
								<input type="text" size="4" name="billState" value="${sessionScope.order.billState}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>Zip:</td>
							<td>
								<input type="text" size="10" name="billZip" value="${sessionScope.order.billZip}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>Country:</td>
							<td>
								<input type="text" size="15" name="billCountry" value="${sessionScope.order.billCountry}"  style="text-align: left"/>
							</td>
						</tr>
					</table>
				</section>
				<section class="tab" style="background-color: white">
					<table style="margin: auto;">
						<tr>
							<td width="170" style="text-align: left">First name:        </td>
							<td>
								<input type="text" name="shipToFirstName" value="${sessionScope.order.billToFirstName}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>Last name:</td>
							<td>
								<input type="text" name="shipToLastName" value="${sessionScope.order.billToLastName}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>Address 1:</td>
							<td>
								<input type="text" size="40" name="shipAddress1" value="${sessionScope.order.billAddress1}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>Address 2:</td>
							<td>
								<input type="text" size="40" name="shipAddress2" value="${sessionScope.order.billAddress2}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>City:</td>
							<td>
								<input type="text" name="shipCity" value="${sessionScope.order.billCity}"  style="text-align: left"/>
							</td>
						</tr>
						<tr>
							<td>State:</td>
							<td>
								<input type="text" size="4" name="shipState" value="${sessionScope.order.billState}" style="text-align: left" />
							</td>
						</tr>
						<tr>
							<td>Zip:</td>
							<td>
								<input type="text" size="10" name="shipZip" value="${sessionScope.order.billZip}" style="text-align: left" />
							</td>
						</tr>
						<tr>
							<td>Country:</td>
							<td>
								<input type="text" size="15" name="shipCountry" value="${sessionScope.order.billCountry}"  style="text-align: left"/>
							</td>
						</tr>
					</table>
				</section>
			</div>
			<script>
				window.onload=function () {
					var nav=document.getElementById('nav');
					var oNav=nav.getElementsByTagName('li');

					var container=document.getElementById('container');
					var oDiv=container.getElementsByClassName('tab');
					for(var i=0;i<oNav.length;i++){
						oNav[i].index=i;
						oNav[i].onclick=function () {
							for(var i=0;i<oNav.length;i++){
								oNav[i].className='';
								oDiv[i].style.display="none";
							}
							this.className='act';
							oDiv[this.index].style.display="block"
						}
						for(var m=1;m<oNav.length;m++){
							oNav[m].className='';
							oDiv[m].style.display="none";
						}
					}
				};
			</script>
		<div style="text-align:center;vertical-align:middle;">
			<input type="submit" name="newOrder" value="Continue" />
		</div>
</form>







<script type="text/javascript" src="${pageContext.request.contextPath }/js/test.js"></script>
<%@ include file="../common/IncludeBottom.jsp"%>