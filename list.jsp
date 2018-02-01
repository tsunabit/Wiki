<!-- 使用クラスのインポート -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="wiki.WikiPageDTO" %>

<h1>ページの一覧</h1>
<ul>
 <%
 List<WikiPageDTO> list = (List<WikiPageDTO>)request.getAttribute("list");
 if(list.size() == 0){
	 out.println("まだページがありません。<br>");
	 out.println("Page Nothing<br>");
 }
 for(WikiPageDTO content: list) {
	 /* out.println("<li>" + content.getName() + "</li>"); */
	 out.println("<li><a href=\"refer?name=" + content.getName() + "\">" + content.getName() + "</a></li>");
 }
 %>
</ul>

<!-- JSTL(カスタムタグ)の使い方 -->
<%-- 
<ul>
<c:forEach var="wikiPage" items="${list}">
	<c:url value="/refer" var="url">
		<c:param name="name" value="${wikiPage.name}" />
	</c:url>
	<LI><A href="${url}">${wikiPage.name}</A><BR></LI>
</c:forEach>
</ul>
 --%>
