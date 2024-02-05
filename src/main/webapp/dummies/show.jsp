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
<strapi:dummies ID="${ID}">
	<h2>Dummies: <strapi:dummiesID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>A</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:dummiesID />"><strapi:dummiesID /></a></td>
				<td><strapi:dummiesA /></td>
				<td><strapi:dummiesCreatedAt /></td>
				<td><strapi:dummiesUpdatedAt /></td>
				<td><strapi:dummiesPublishedAt /></td>
				<td><strapi:dummiesCreatedById /></td>
				<td><strapi:dummiesUpdatedById /></td>
			</tr>
		</table>
</strapi:dummies>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>