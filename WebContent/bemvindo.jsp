<html>
<head>
<title>Bem-vindo</title>
</head>
<body>
	<%--Comentário --%>
	
	<%
		String mensagem = "Bem vindo ao sistema de agenda do FJ-21";
	%>
	<% out.println(mensagem); %>
	
	<br/>
	
	<%
		String desenvolvido = "Desenvolvido por XPTO";
	%>
	<%= desenvolvido %>
	
	<%
		System.out.println("Tudo foi executado!");
	%>
	
</body>
<html>