<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>Lista Contatos</title>
</head>
<body>

<c:import url="cabecalho.jsp"/>

Tabela <br/>

<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDao"/>

<table>
	<c:forEach var="contato" items="${dao.lista}">
		<tr>
			<td>${contato.nome}</td>
			<td>
				<c:choose>
					<c:when test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:when>
					<c:otherwise>
						E-mail n�o informado
					</c:otherwise>
				</c:choose>
			</td>
			<td>${contato.endereco}</td>
			<td>
				<fmt:formatDate value="${contato.datanascimento}" pattern="dd/MM/yyyy"/>
			</td>
		</tr>
	</c:forEach>
</table>

<c:import url="rodape.jsp"/>

</body>
</html>