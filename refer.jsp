<%@ page import="wiki.WikiPageDTO" %>


<!-- wikiのタイトル -->
<h1>${wikiPage.name}</h1>
<!-- wikiのコンテンツ -->
${wikiPage.getFormatedContent()}

<%-- 
<%
WikiPageDTO a = (WikiPageDTO)session.getAttribute("wikiPage");
out.print("<h1>" + a.getName() + "</h1>");
out.print(a.getFormatedContent());
%>
 --%>
 
<hr>
<a href="update.jsp">このページを更新</a>