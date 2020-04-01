<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri="/struts-tags" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>home画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>HOME</p>
		</div>
		<div id="text-center">
		<s:form action="HomeAction">
				<s:submit value="商品購入"/>
		</s:form>
		<s:form action="AdminAction">
			<s:submit value="管理者画面へ"/>
		</s:form>

		<s:if test="#session.login_user_id!=null">
			<p>ログアウトする場合は
				<a href='<s:url action="LogoutAction"/>'>こちら</a></p>
				をクリックしてください。
		</s:if>
		</div>
	</div>
	<div id="footer">
	</div>
</body>
</html>