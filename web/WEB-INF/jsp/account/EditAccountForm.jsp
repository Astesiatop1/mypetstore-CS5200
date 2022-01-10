<%@ include file="../common/IncludeTop.jsp"%>

<div id="Catalog">
<form action="saveAccount" method="post">
	<h3>User Information</h3>

	<table>
		<tr>
			<td>User ID:</td>
			<td>${sessionScope.account.username}</td>
		</tr>
		<tr>
			<td>New password:</td>
			<td><input type="text" name="password" id="password" autofocus="autofocus"/></td>
		</tr>
		<tr>
			<td>Repeat password:</td>
			<td>
				<input type="text" name="repeatedPassword" id="repeatedPassword" onblur="checkCodeSame()"/>
				<div id="codeTips"></div>
				<script type="text/javascript" src="${pageContext.request.contextPath }/js/codeSame.js"></script>
			</td>
		</tr>
	</table>
	<%@ include file="IncludeAccountFields.jsp"%>
	<input type="submit" name="editAccount" value="Save Account Information" />

</form>
	<!--event="listOrders-->
	<a href="viewListOrder?username=${sessionScope.account.username}">My Orders</a>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>
