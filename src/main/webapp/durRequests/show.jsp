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
<strapi:durRequests ID="${ID}">
	<h2>DurRequests: <strapi:durRequestsID /></h2>
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
				<td><a href="edit.jsp?ID=<strapi:durRequestsID />"><strapi:durRequestsID /></a></td>
				<td><strapi:durRequestsHeader /></td>
				<td><strapi:durRequestsRequestHeader /></td>
				<td><strapi:durRequestsRequestBlock /></td>
				<td><strapi:durRequestsOverviewHeader /></td>
				<td><strapi:durRequestsOverviewBlock /></td>
				<td><strapi:durRequestsProcessHeader /></td>
				<td><strapi:durRequestsPrereqHeader /></td>
				<td><strapi:durRequestsPrereqBlock /></td>
				<td><strapi:durRequestsSubmitHeader /></td>
				<td><strapi:durRequestsSubmitBlock /></td>
				<td><strapi:durRequestsSubmitBlock2 /></td>
				<td><strapi:durRequestsSubmitBlock3 /></td>
				<td><strapi:durRequestsCreatedAt /></td>
				<td><strapi:durRequestsUpdatedAt /></td>
				<td><strapi:durRequestsPublishedAt /></td>
				<td><strapi:durRequestsCreatedById /></td>
				<td><strapi:durRequestsUpdatedById /></td>
			</tr>
		</table>
</strapi:durRequests>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>