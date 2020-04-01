<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<meta  charset="UTF-8">
<title>Login画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>Login</p>
		</div>
		<div>
			<p>商品を購入する際にはログインをお願いします。</p>
			<s:form action="LoginAction">
				<s:textfield name="loginUserId"/>
				<s:password name ="loginPassword"/>
				<s:submit value="ログイン"/>
			</s:form>
			<br/>
				<div id="text-link">
				<p>新規ユーザー登録は
					<a href='<s:url action="UserCreateAction"/>'>こちら</a>からできます</p>
				<p>Homeへ戻る場合は
					<a href='<s:url action="GoHomeAction"/>'>こちら</a>をクリックしてください。</p>

				</div>
		</div>
	</div>
	<div id="footer">
	</div>
</body>
</html>