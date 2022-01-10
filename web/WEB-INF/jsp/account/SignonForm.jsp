<%@ include file="../common/IncludeTop.jsp"%>

<div id="Content">
		<ul class="messages">
			<li>${sessionScope.messageSignOn}</li>
		</ul>

<div id="Catalog">
	<form action="signOn" method="post">
		<p>Please enter your username and password.</p>
		<p>
			<table>
		<tr>
			<td>
				Username:
			</td>
			<td>
				<input type="text" name="username" value="j2ee"/>
			</td>
		</tr>
		<tr>
			<td>
				Password:
			</td>
			<td>
				<input type="password" name="password" value="j2ee"/><br />
			</td>
		</tr>
		<tr>
			<td>
				VerificationCode:
			</td>
			<td>
				<input type="text" name="vCode" size="5" maxlength="4"/>
			</td>
			<td>
				<a href="signOn"><img border="0" src="verificationCode" name="checkcode"></a>
			</td>
		</tr>
	</table>


		</p>
		<input type="submit" name="signon" value="Login" />
	</form>
		Need a user name and password?
	    <!--newAccountForm-->
	    <a href="newAccountForm">Register Now!</a>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>

