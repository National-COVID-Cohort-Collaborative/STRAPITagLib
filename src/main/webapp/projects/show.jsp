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
<strapi:projects ID="${ID}">
	<h2>Projects: <strapi:projectsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Block1</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:projectsID />"><strapi:projectsID /></a></td>
				<td><strapi:projectsHeader /></td>
				<td><strapi:projectsBlock1 /></td>
				<td><strapi:projectsCreatedAt /></td>
				<td><strapi:projectsUpdatedAt /></td>
				<td><strapi:projectsPublishedAt /></td>
				<td><strapi:projectsCreatedById /></td>
				<td><strapi:projectsUpdatedById /></td>
			</tr>
		</table>
</strapi:projects>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>