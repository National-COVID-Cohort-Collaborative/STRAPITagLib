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
<strapi:tenantAccountChecklists ID="${ID}">
	<h2>TenantAccountChecklists: <strapi:tenantAccountChecklistsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Header2</th>
			<th>Checklist</th>
			<th>Trailer</th>
			<th>Intro</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:tenantAccountChecklistsID />"><strapi:tenantAccountChecklistsID /></a></td>
				<td><strapi:tenantAccountChecklistsHeader /></td>
				<td><strapi:tenantAccountChecklistsHeader2 /></td>
				<td><strapi:tenantAccountChecklistsChecklist /></td>
				<td><strapi:tenantAccountChecklistsTrailer /></td>
				<td><strapi:tenantAccountChecklistsIntro /></td>
				<td><strapi:tenantAccountChecklistsCreatedAt /></td>
				<td><strapi:tenantAccountChecklistsUpdatedAt /></td>
				<td><strapi:tenantAccountChecklistsPublishedAt /></td>
				<td><strapi:tenantAccountChecklistsCreatedById /></td>
				<td><strapi:tenantAccountChecklistsUpdatedById /></td>
			</tr>
		</table>
</strapi:tenantAccountChecklists>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>