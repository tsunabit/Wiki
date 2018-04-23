<h3>新規作成</h3>

<% String name = request.getParameter("name"); %>

<div>
<p><b>
<%= name %>
</b>
のページを作成します。</p>
</div>
<!-- <p>ページ名を入力してください</p> -->

<!-- <form action="create"> -->
<form method="post" action="create" enctype="multipart/form-data">
	<input type="hidden" name="cmd" value="create">
	<input type="hidden" name="name" value="${param.name }">
	
	<textarea rows="15" cols="60" name="content"></textarea>
	<br>
	<!-- <td><input type="file" name="image" size="30" /></td> -->
	<td><input type="file" name="image" value="画像選択" /></td>
	<br>
	
	<input type="submit" value="作成">
	<!-- <input type="button" value="キャンセル" onclick="location.href='href'"> -->
	<input type="button" value="キャンセル" onclick="location.href='/Wiki'">
	
</form>