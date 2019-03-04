<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 使用 Tag File --%>
<%-- 如果用 tagdir 属性，tag file 只能在 /WEB-INF/tags 或子文件夹中 --%>
<%@taglib prefix="html" tagdir="/WEB-INF/tags" %>

<html:Html title="Gossip 微博">
	<html:Errors headline="新增会员失败"/>
	<h1>会员注册</h1>
	<form method='post' action='register.do'>
		<table bgcolor=#cccccc>
			<tr>
				<td>邮件位址：</td>
				<td><input type='text' name='email' value='${param.email}' size='25' maxlength='100'>
				</td>
			</tr>
			<tr>
				<td>名称（最大16字符）：</td>
				<td><input type='text' name='username' value='${param.username}' size='25' maxlength='16'></td>
			</tr>
			<tr>
				<td>密码（6到16字符）：</td>
				<td><input type='password' name='password' size='25' maxlength='16'>
				</td>
			</tr>
			<tr>
				<td>确认密码：</td>
				<td><input type='password' name='confirmedPasswd' size='25' maxlength='16'></td>
			</tr>
			<tr>
				<td colspan='2' align='center'><input type='submit' value='注册'></td>
			</tr>
		</table>
	</form>
</html:Html>