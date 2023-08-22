<%@ include file="../_include.jsp"  %>

        <html>
            <jsp:include page="../head.jsp" />
            <body>
                <div class="container-fluid">
                    <jsp:include page="../header.jsp" />
                    <div class="row flex-nowrap">
                        <div class="col-xs-3">
                            <jsp:include page="../menu.jsp" />
                        </div>
                        <div class="col-xs-8">
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:liaisons ID="${ID}">
	<h2>Liaisons: <strapi:liaisonsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Block</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:liaisonsID />"><strapi:liaisonsID /></a></td>
				<td><strapi:liaisonsHeader /></td>
				<td><strapi:liaisonsBlock /></td>
				<td><strapi:liaisonsCreatedAt /></td>
				<td><strapi:liaisonsUpdatedAt /></td>
				<td><strapi:liaisonsPublishedAt /></td>
				<td><strapi:liaisonsCreatedById /></td>
				<td><strapi:liaisonsUpdatedById /></td>
			</tr>
		</table>
</strapi:liaisons>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>