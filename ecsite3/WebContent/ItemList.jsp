<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>商品一覧画面</title>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>登録商品確認画面</p>
		</div>
	<div>
		<s:if test= "itemInfoDTOList == null">
			<h3>商品情報はありません。</h3>
		</s:if>
		<s:elseif test="message == null">
			<h3>商品情報は以下になります。</h3>
			<table border="1">
				<tr>
					<th>id</th>
					<th>商品名</th>
					<th>値段</th>
					<th>在庫</th>
					<th>登録日</th>
					<th>更新日</th>
				</tr>
				<s:iterator value="itemInfoDTOList">
					<tr>
						<td><s:property value="id" /></td>
						<td><s:property value="itemName" /></td>
						<td><s:property value="itemPrice" /><span>円</span></td>
						<td><s:property value="itemStock" /><span>個</span></td>
						<td><s:property value="insert_date" /></td>
						<td><s:property value="update_dated" /></td>
					<td>
					<a href='<s:url action="ItemDataAction">
						<s:param name="id" value="%{id}"/>
						</s:url>'>詳細</a>
					</td>
					</tr>
				</s:iterator>
			</table>
		</s:elseif>
		<s:if test="message != null">
			<h3><s:property value="message"/></h3>
		</s:if>
		<s:form action="ItemListDeleteConfirmAction">
			<s:submit value="削除"/>
		</s:form>
		<div id="text-right">
			<p>管理者TOP画面へ戻る場合は<a href='<s:url action="AdminAction"/>'>こちらへ</a>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
   </div>
</body>
</html>