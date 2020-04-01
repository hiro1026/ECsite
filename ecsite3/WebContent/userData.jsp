<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	<meta charset="utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<title>ユーザー一覧画面</title>
	</head>
	<body>
		<div id="header">
			<div id="pr">
			</div>
		</div>
		<div id="main">
			<div id="top">
				<p>MyPage</p>
			</div>
			<div>
				<s:if test="userInfoDTO == null">
					<h3>ユーザー情報はありません。</h3>
				</s:if>
				<s:elseif test="message == null">
					<h3>ユーザー情報は以下になります。</h3>
					<table border="1">
						<tr>
							<th>id</th>
							<td><s:property value="userInfoDTO.id" /></td>
						</tr>
						<tr>
							<th>ログインID</th>
							<td><s:property value="userInfoDTO.loginId" /></td>
						</tr>
						<tr>
							<th>パスワード</th>
							<td><s:property value="userInfoDTO.loginPass" /></td>
						</tr>
						<tr>
							<th>ユーザー名</th>
							<td><s:property value="userInfoDTO.userName" /></td>
						</tr>
						<tr>
							<th>登録日</th>
							<td><s:property value="userInfoDTO.insert_date" /></td>
						</tr>
						<tr>
							<th>更新日</th>
							<td><s:property value="userInfoDTO.update_date" /></td>
						</tr>
					</table>
					<s:form action="UserDeleteConfirmAction">
						<s:submit value="削除" />
						<s:hidden name="loginId" value="%{loginId}"/>
					</s:form>
				</s:elseif>
				<div id="text-right">
					<p>管理者TOP画面へ戻る場合は<a href='control.jsp'>こちら</a></p>
				</div>
			</div>
		</div>
		<div id="footer">
			<div id="pr">
			</div>
		</div>
	</body>
</html>