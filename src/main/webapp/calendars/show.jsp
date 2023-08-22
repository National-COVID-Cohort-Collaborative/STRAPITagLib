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
<strapi:calendars ID="${ID}">
	<h2>Calendars: <strapi:calendarsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:calendarsID />"><strapi:calendarsID /></a></td>
				<td><strapi:calendarsHeader /></td>
				<td><strapi:calendarsCreatedAt /></td>
				<td><strapi:calendarsUpdatedAt /></td>
				<td><strapi:calendarsPublishedAt /></td>
				<td><strapi:calendarsCreatedById /></td>
				<td><strapi:calendarsUpdatedById /></td>
			</tr>
		</table>
</strapi:calendars>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>