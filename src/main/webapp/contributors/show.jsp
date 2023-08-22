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
<strapi:contributors ID="${ID}">
	<h2>Contributors: <strapi:contributorsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Block1</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:contributorsID />"><strapi:contributorsID /></a></td>
				<td><strapi:contributorsBlock1 /></td>
				<td><strapi:contributorsCreatedAt /></td>
				<td><strapi:contributorsUpdatedAt /></td>
				<td><strapi:contributorsPublishedAt /></td>
				<td><strapi:contributorsCreatedById /></td>
				<td><strapi:contributorsUpdatedById /></td>
			</tr>
		</table>
</strapi:contributors>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>