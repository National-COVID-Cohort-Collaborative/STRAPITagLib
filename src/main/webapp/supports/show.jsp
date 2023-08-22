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
<strapi:supports ID="${ID}">
	<h2>Supports: <strapi:supportsID /></h2>
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
				<td><a href="edit.jsp?ID=<strapi:supportsID />"><strapi:supportsID /></a></td>
				<td><strapi:supportsHeader /></td>
				<td><strapi:supportsBlock /></td>
				<td><strapi:supportsCreatedAt /></td>
				<td><strapi:supportsUpdatedAt /></td>
				<td><strapi:supportsPublishedAt /></td>
				<td><strapi:supportsCreatedById /></td>
				<td><strapi:supportsUpdatedById /></td>
			</tr>
		</table>
</strapi:supports>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>