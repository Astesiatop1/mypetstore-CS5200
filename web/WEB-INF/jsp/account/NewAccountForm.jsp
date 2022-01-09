<%@ include file="../common/IncludeTop.jsp"%>

${sessionScope.messageAccount}

<div id="Catalog">
	<form action="newAccount" method="post">
		<h3>User Information</h3>

		<table>
			<tr>
				<td>User ID:</td>
				<td>
					<input type="text" name="username" id="username" onblur="checkUsername()"/>
					<span id="usernameTips"></span>
					<script type="text/javascript" src="${pageContext.request.contextPath }/js/usernameExist.js"></script>
				</td>
			</tr>
			<tr>
				<td>New password:</td>
				<td><input type="text" name="password" id="password"/></td>
			</tr>
			<tr>
				<td>Repeat password:</td>
				<td>
					<input type="text" name="repeatedPassword" id="repeatedPassword" onblur="checkCodeSame()"/>
				    <span id="codeTips"></span>
					<script type="text/javascript" src="${pageContext.request.contextPath }/js/codeSame.js"></script>
				</td>
			</tr>
			<tr>
				<td>VerificationCode:</td>
				<td>
					<input type="text" name="vCode" size="5" maxlength="4"/>
					<a href="newAccount"><img border="0" src="verificationCode" name="checkcode"></a>
				</td>
			</tr>
		</table>

		<%@ include file="IncludeAccountFields.jsp"%>
		<input type="submit" name="newAccount" value="Save Account Information" />
	</form>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>