<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<meta charset="UTF-8">
<title>商品登録完了画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>商品登録完了画面</p>
		</div>
		<div>
			<h3>商品の登録が完了いたしました。</h3>
			<div>
				<s:form action="control.jsp">
					<s:submit value="管理画面へ"/>
				</s:form>
			</div>
		</div>
	</div>
	<div id="footer">
	</div>
</body>
</html>