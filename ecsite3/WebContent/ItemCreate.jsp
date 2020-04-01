<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<meta charset="UTF-8">
<title>商品登録画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>ItemCreate</p>
		</div>
		<div>
			<s:if test="errorMessage !=''">
				<s:property value="errorMessage" escape="false"/>
			</s:if>
			<table>
			<s:form action="ItemCreateConfirmAction">
				<tr>
					<td>
						<label>商品名:</label>
					</td>
					<td>
						<input type="text" name="ItemName" value=""/>
					</td>
				</tr>
				<tr>
					<td>
						<label>価格:</label>
					</td>
					<td>
						<input type="text" name="ItemPrice" value=""/>
					</td>
				</tr>
				<tr>
					<td>
						<label>在庫数</label>
					</td>
					<td>
						<input type="text" name="ItemStock" value=""/>
					</td>
				</tr>
				<s:submit value="登録"/>
			</s:form>
			</table>
			<div>
				<span>前の画面は</span>
				<a href='<s:url action="ItemCtreateAction"/>'>こちら</a>
			</div>
		</div>
	</div>
	<div id="footer">
	</div>
</body>
</html>