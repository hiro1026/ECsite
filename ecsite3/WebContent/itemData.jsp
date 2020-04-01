<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<title>商品一覧画面</title>
	<body>
		<div id="header">
			<div id="pr">
			</div>
		</div>
		<div id="main">
			<div id="top">
				<p>商品詳細データ</p>
			</div>
			<div>
				<s:if test="itemDataDTO == null">
					<h3>商品の詳細情報はありません。</h3>
				</s:if>
				<s:elseif test="message == null">
					<h3>商品情報は以下になります。</h3>
					<table border="1">
						<tr>
							<th>id</th>
							<td><s:property value="itemDataDTO.id" /></td>
						</tr>
						<tr>
							<th>商品名</th>
							<td><s:property value="itemDataDTO.itemName" /></td>
						</tr>
						<tr>
							<th>値段</th>
							<td><s:property value="itemDataDTO.itemPrice" /><span>円</span></td>
						</tr>
						<tr>
							<th>在庫</th>
							<td><s:property value="itemDataDTO.itemStock" /><span>個</span></td>
						</tr>
						<tr>
							<th>登録日</th>
							<td><s:property value="itemDataDTO.insert_date" /></td>
						</tr>
						<tr>
							<th>更新日</th>
							<td><s:property value="itemDataDTO.update_date" /></td>
						</tr>
					</table>
					<s:form action="ItemDeleteConfirmAction">
						<s:hidden name="id" value="%{id}" />
						<s:submit value="削除" />
					</s:form>
				</s:elseif>
				<div id="text-right">
					<p>商品一覧は<a href='<s:url action="ItemListAction" />'>こちら</a></p>
				</div>
			</div>
		</div>
		<div id="footer">
			<div id="pr">
			</div>
		</div>
	</body>
</html>
