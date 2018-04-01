<h1>新規作成</h1>

<% String name = request.getParameter("name"); %>

<div>
<p><b>
<%= name %>
</b>
のページを作成します。</p>
</div>
<!-- <p>ページ名を入力してください</p> -->

<form action="create">
	<input type="hidden" name="cmd" value="create">
	<input type="hidden" name="name" value="${param.name }">
	
	<textarea rows="15" cols="60" name="content"></textarea>
	<br>
	<input type="submit" value="作成">
	<input type="button" value="キャンセル" onclick="location.href='href'">
	
</form>