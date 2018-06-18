<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- ファビコン追加 -->
<!-- ルートからの絶対パスで記載 -->
<link rel="icon" href="/Wiki/image/wikiFavicon.jpg">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>wiki</title>
</head>
<body>
<!-- ロゴ -->
<!-- ルートからの絶対パスで記載 -->
<a href="<%=request.getContextPath()%>"><img src="/Wiki/image/wikiFavicon.jpg" alt="wiki" width="50" height="50"></a>
<!-- ヘッダーメニュー -->
<a href="list">一覧表示</a>
|
<a href="createPageName">新規作成</a>

<!-- メッセージ表示 -->
<p>${ message }
<HR>
