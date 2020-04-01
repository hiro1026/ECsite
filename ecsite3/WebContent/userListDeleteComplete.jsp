<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>削除完了画面</title>
</head>
<body>
		<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>削除完了画面</p>
		</div>
		<div>
			<h3>削除が完了しました。</h3>
		</div>
		<s:if test = "message != null">
			<h3><s:property value="message"/></h3>
		</s:if>
		<div id="text-right">
			<p>管理者画面へ戻る場合は<a href='<s:url action="AdminAction"/>'>こちら</a>をクリック</p>
			<p>Homeへ戻る場合は<a href ='<s:url action="GoHomeAction"/>'>こちら</a>をクリック</p>
		</div>

	</div>
	<div id="footer">
	</div>
</body>
</html>