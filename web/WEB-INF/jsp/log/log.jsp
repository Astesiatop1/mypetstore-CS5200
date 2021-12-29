<%--
  Created by IntelliJ IDEA.
  User: 21014
  Date: 2021/11/7
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="../common/IncludeTop.jsp"%>

<body>
<c:forEach var="log" items="${sessionScope.logList}">
    <tr>
        <td>

            <p>${log.history}</p>
        </td>
    </tr>
</c:forEach>

</body>


<%@ include file="../common/IncludeBottom.jsp"%>