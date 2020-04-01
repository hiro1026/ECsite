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
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<title>削除確認画面</title>

		<script type="text/javascript">
			function submitAction(url) {
				$('form').attr('action', url);
				$('form').submit();
			}
		</script>
	</head>
	<body>
		<div id="header">
			<div id="pr">
			</div>
		</div>
		<div id="main">
			<div id="top">
				<p>削除確認</p>
			</div>
			<div>
				<h3>商品ID[<s:property value="id" />]の商品を削除します。よろしいですか?</h3>
				<s:form>
					<input id="button" type="button" value="OK" onclick="submitAction('ItemDeleteCompleteAction')" />
					<input id="button" type="button" value="キャンセル" onclick="submitAction('ItemDataAction')" />
					<s:hidden name="id" value="%{id}" />
				</s:form>
			</div>
		</div>
		<div id="footer">
			<div id="pr">
			</div>
		</div>
	</body>
</html>