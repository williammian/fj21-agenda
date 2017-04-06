<%@ page import="java.util.*,
br.com.caelum.jdbc.dao.*,
br.com.caelum.modelo.*" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table>
		<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		
		for(Contato contato : contatos){
		%>
			<tr>
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				<td><%=contato.getDatanascimento() %></td>
			</tr>
			
		<%
		} 
		%>
		
	</table>
</body>
</html>