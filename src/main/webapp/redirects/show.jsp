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
<strapi:redirects ID="${ID}">
	<h2>Redirects: <strapi:redirectsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Source</th>
			<th>Target</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:redirectsID />"><strapi:redirectsID /></a></td>
				<td><strapi:redirectsSource /></td>
				<td><strapi:redirectsTarget /></td>
				<td><strapi:redirectsCreatedAt /></td>
				<td><strapi:redirectsUpdatedAt /></td>
				<td><strapi:redirectsPublishedAt /></td>
				<td><strapi:redirectsCreatedById /></td>
				<td><strapi:redirectsUpdatedById /></td>
			</tr>
		</table>
</strapi:redirects>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>