<!-- 使用クラスのインポート -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="wiki.WikiPageDTO" %>

<h1>ページの一覧</h1>
<%-- 
<ul>
<%
List<WikiPageDTO> list = (List<WikiPageDTO>)request.getAttribute("list");
for(WikiPageDTO tableName: list) {
	out.println("<li>" + tableName.getName() + "</li>");
	// out.println(tableName.getContent());
}
%>
</ul>
 --%>

<!-- JSTL(カスタムタグ)の使い方 -->
<ul>
<c:forEach var="wikiPage" items="${list}">
	<c:url value="/refer" var="url">
		<c:param name="name" value="${wikiPage.name}" />
	</c:url>
	<LI><A href="${url}">${wikiPage.name}</A><BR></LI>
</c:forEach>
</ul>

