<!-- 使用クラスのインポート -->
<%@ page import="java.util.List" %>
<%@ page import="wiki.WikiPageDTO" %>

<h1>ページの一覧</h1>
<%
List<WikiPageDTO> list = (List<WikiPageDTO>)request.getAttribute("list");
for(WikiPageDTO tableName: list) {
	out.println(tableName.getName());
	// out.println(tableName.getContent());
}
%>

<!-- JSTL(カスタムタグ)の使い方 -->
<%-- 
<c:forEach var="wikiPage" items="${list }">
	<c:url value="/refer" var="url">
		<c:param name="name" value="${wikiPage.name }" />
	</c:url>
	<LI><A href="${url }">${wikiPage.name }</A><BR></LI>
</c:forEach>
 --%>

