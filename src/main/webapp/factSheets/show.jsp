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
<strapi:factSheets ID="${ID}">
	<h2>FactSheets: <strapi:factSheetsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Block1</th>
			<th>Block2</th>
			<th>Block3</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:factSheetsID />"><strapi:factSheetsID /></a></td>
				<td><strapi:factSheetsHeader /></td>
				<td><strapi:factSheetsBlock1 /></td>
				<td><strapi:factSheetsBlock2 /></td>
				<td><strapi:factSheetsBlock3 /></td>
				<td><strapi:factSheetsCreatedAt /></td>
				<td><strapi:factSheetsUpdatedAt /></td>
				<td><strapi:factSheetsPublishedAt /></td>
				<td><strapi:factSheetsCreatedById /></td>
				<td><strapi:factSheetsUpdatedById /></td>
			</tr>
		</table>
</strapi:factSheets>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>