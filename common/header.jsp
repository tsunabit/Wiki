<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- ファビコン追加 -->
<link rel="icon" href="image/wikiFavicon.jpg">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>wiki</title>
</head>
<body>
<!-- ロゴ -->
<a href="<%=request.getContextPath()%>"><img src="image/wikiFavicon.jpg" alt="wiki" width="50" height="50"></a>
<!-- ヘッダーメニュー -->
<a href="list">一覧</a>
|
<a href="create.jsp">新規</a>

<!-- メッセージ表示 -->
<p>${ message }
<HR>
