<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="edu.curso.UserInfo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina administrador</title>
</head>
<body>
	<% UserInfo userInfo = 
			(UserInfo)session.getAttribute("LOGADO"); 
		if (userInfo != null 
			&& userInfo.isLogado()
			&& "admin".equals(userInfo.getProfile())) {
	%>
			<h3>Conte�do da pagina de administrador</h3>
			<h4>Parab�ns <%=userInfo.getNome()%> voc� est� acessando a pagina de administra��o do sistema</h4>
	<%  } else { %>
			<h3>Apenas o administrador pode acessar esta p�gina</h3>
			<h4>Clique <a href="./login.jsp">aqui</a> para acessar acessar a p�gina de login</h4>
	<% } %>
</body>
</html>