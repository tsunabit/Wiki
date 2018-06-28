<!-- 使用クラスのインポート -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="wiki.WikiPageDTO" %>

<h1>ページの一覧</h1>
並び替え
	<form action="list" method="get">
		<button type="submit" name="findall" value="findall">名前順</button>
        <button type="submit" name="updateDesc" value="updateDesc">更新時間が新しい順</button>
        <button type="submit" name="updateAsc" value="updateAsc">更新時間が古い順</button>
    </form>

<!-- <a href="">更新時間が新しい順</a>
|
<a href="">更新時間が古い順</a> -->

<ul>
 <%
 List<WikiPageDTO> list = (List<WikiPageDTO>)request.getAttribute("list");
 if(list.size() == 0){
	 out.println("<h3>まだページがありません。</h3>");
	 out.println("<h3>Page Nothing</h3>");
 }
 for(WikiPageDTO content: list) {
	 /* out.println("<li>" + content.getName() + "</li>"); */
	 /* jspフォルダの整理の影響でコメントアウト */
	 /* out.println("<li><a href=\"refer?name=" + content.getName() + "\">" + content.getName() + "</a></li>"); */
	 /* out.println("<li><a href=\"jsp\\refer.jsp?name=" + content.getName() + "\">" + content.getName() + "</a></li>"); */
	 out.println("<li><a href=" + request.getContextPath() + "/jsp/refer.jsp" + ">" + content.getName() + "</a></li>");
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
