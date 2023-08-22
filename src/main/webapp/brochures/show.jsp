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
<strapi:brochures ID="${ID}">
	<h2>Brochures: <strapi:brochuresID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>PdfLinkHeader</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:brochuresID />"><strapi:brochuresID /></a></td>
				<td><strapi:brochuresHeader /></td>
				<td><strapi:brochuresPdfLinkHeader /></td>
				<td><strapi:brochuresCreatedAt /></td>
				<td><strapi:brochuresUpdatedAt /></td>
				<td><strapi:brochuresPublishedAt /></td>
				<td><strapi:brochuresCreatedById /></td>
				<td><strapi:brochuresUpdatedById /></td>
			</tr>
		</table>
</strapi:brochures>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>