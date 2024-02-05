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
<strapi:tenantDurRequests ID="${ID}">
	<h2>TenantDurRequests: <strapi:tenantDurRequestsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>RequestHeader</th>
			<th>RequestBlock</th>
			<th>OverviewHeader</th>
			<th>OverviewBlock</th>
			<th>ProcessHeader</th>
			<th>PrereqHeader</th>
			<th>PrereqBlock</th>
			<th>SubmitHeader</th>
			<th>SubmitBlock</th>
			<th>SubmitBlock2</th>
			<th>SubmitBlock3</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:tenantDurRequestsID />"><strapi:tenantDurRequestsID /></a></td>
				<td><strapi:tenantDurRequestsHeader /></td>
				<td><strapi:tenantDurRequestsRequestHeader /></td>
				<td><strapi:tenantDurRequestsRequestBlock /></td>
				<td><strapi:tenantDurRequestsOverviewHeader /></td>
				<td><strapi:tenantDurRequestsOverviewBlock /></td>
				<td><strapi:tenantDurRequestsProcessHeader /></td>
				<td><strapi:tenantDurRequestsPrereqHeader /></td>
				<td><strapi:tenantDurRequestsPrereqBlock /></td>
				<td><strapi:tenantDurRequestsSubmitHeader /></td>
				<td><strapi:tenantDurRequestsSubmitBlock /></td>
				<td><strapi:tenantDurRequestsSubmitBlock2 /></td>
				<td><strapi:tenantDurRequestsSubmitBlock3 /></td>
				<td><strapi:tenantDurRequestsCreatedAt /></td>
				<td><strapi:tenantDurRequestsUpdatedAt /></td>
				<td><strapi:tenantDurRequestsPublishedAt /></td>
				<td><strapi:tenantDurRequestsCreatedById /></td>
				<td><strapi:tenantDurRequestsUpdatedById /></td>
			</tr>
		</table>
</strapi:tenantDurRequests>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>