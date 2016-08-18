<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>登录窗口</title>
<script type="text/javascript">
	function change() {

		document.getElementById("f").submit();
	}
</script>
</head>

<body>
	<form action="/day08_3/login.jsp" method="post" id="f">
		<select name="locale" onchange="change();">
			<option>---请求选择国家---</option>
			<option value="en_US">US</option>
			<option value="zh_CN">CHINA</option>
		</select>
	</form>
	<%
		String locale = request.getParameter("locale");
		Locale l = null;
		if ("en_US".equals(locale)) {
			l = Locale.US;
		} else {
			l = Locale.CHINA;
		}

		ResourceBundle bundle = ResourceBundle.getBundle("info", l);
	%>
	<table border='1' align="center">
		<caption><%=bundle.getString("login.message")%></caption>
		<tr>
			<td><%=bundle.getString("login.username")%>:</td>
			<td><input type="text" name="username">
			</td>
		</tr>
		<tr>
			<td><%=bundle.getString("login.password")%>:</td>
			<td><input type="password" name="password">
			</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"
				value="<%=bundle.getString("login.submit")%>"></td>
		</tr>
	</table>

	<hr>
	<hr>
	<br> 使用JSTL国际化标签完成
	<br>
	
	<fmt:setLocale value="${param.locale}" /><!-- 相当于  获取一个Locale对象 -->
	
	<fmt:setBundle basename="info" var="bundle" scope="page" /> <!-- 获取一个ResourceBundel对象，会与Locale对象绑定 -->
	<h1>
		<fmt:message bundle="${bundle }" key="login.message" /> <!-- bundle.getString("login.message") -->
	</h1>
	<hr>
	<table>
		<tr>
			<td><fmt:message bundle="${bundle }" key="login.username" />
			</td>
			<td><input type="text" name="username"></td>
		</tr>

		<tr>
			<td><fmt:message bundle="${bundle }" key="login.password" />
			</td>
			<td><input type="text" name="password"></td>
		</tr>

		<tr>
			<td colspan="2"><input type="submit"
				value="<fmt:message bundle="${bundle }" key="login.submit" />">
			</td>

		</tr>
	</table>

</body>
</html>
