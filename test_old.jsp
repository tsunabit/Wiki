<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*,javax.naming.*,javax.sql.*"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8" />
<title>データベースへの接続</title>
</head>
<body>
	<%
            Context context = new InitialContext();
            DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/myds");
            Connection db = ds.getConnection();
            db.close();
        %>
	データベースへの接続に成功しました。
</body>
</html>
