<%--
  Created by IntelliJ IDEA.
  User: Summer
  Date: 2018/12/10
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
</div>

<div id="Footer">
    <div id="PoweredBy">&nbsp<a href="https://www.csu.edu.cn">www.csu.edu.cn</a>
    </div>

    <!--列出用户喜欢的标题-->
    <div id="Banner">
        <c:if test="${sessionScope.account != null && sessionScope.account.bannerOption}">
            ${sessionScope.account.bannerName}
        </c:if>
    </div>

</div>

</body>
</html>
