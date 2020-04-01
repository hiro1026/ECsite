<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text.css" href="./css/style2.css">
<title>管理者画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<h3>管理者画面</h3>
		</div>
		<div id="left">
			<p>商品</p>
			<s:form action="ItemCtreateAction">
				<s:submit value="商品登録"/>
			</s:form>
			<s:form action="ItemListAction">
				<s:submit value="一覧"/>
			</s:form>
		</div>
		<div id="right">
			<p>ユーザー</p>
			<s:form action="UserCreateAction">
				<s:submit value="新規登録"/>
			</s:form>
			<s:form action="UserListAction">
				<s:submit value="ユーザー一覧"/>
			</s:form>

			<div id="text-right">
			<p>Homeへ戻る場合は<a href ='<s:url action="GoHomeAction"/>'>こちら</a>をクリック</p>
		</div>
	  </div>
	</div>

	<div id="footer">
	</div>
</body>
</html>