<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE >
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<meta charset="UTF-8">
<title>登録内容確認画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>確認画面</p>
		</div>
		<div>
			<h3>登録する内容は以下でよろしいですか</h3>
			<table>
				<s:form action="ItemCreateCompleteAction">
				<tr id="box">
					<td>
						<label>商品名:</label>
					</td>
					<td>
						<s:property value="ItemName" escape="false"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>商品価格:</label>
					</td>
					<td>
						<s:property value="ItemPrice" escape="false"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>在庫数:</label>
					</td>
					<td>
						<s:property value="ItemStock" escape="false"/>
					</td>
				</tr>
				<tr>
					<td>
						<s:submit value="完了"/>
					</td>
				</tr>
			</s:form>
			</table>
		</div>
	</div>
	<div id="footer">
	</div>
</body>
</html>