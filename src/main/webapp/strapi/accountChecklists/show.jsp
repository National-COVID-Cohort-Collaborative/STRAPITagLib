<%@ include file="../../_include.jsp"  %>

        <html>
            <jsp:include page="../../head.jsp" />
            <body>
                <div class="container-fluid">
                    <jsp:include page="../../header.jsp" />
                    <div class="row flex-nowrap">
                        <div class="col-xs-3">
                            <jsp:include page="../../menu.jsp" />
                        </div>
                        <div class="col-xs-8">
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:accountChecklists ID="${ID}">
	<h2>AccountChecklists: <strapi:accountChecklistsID /></h2>
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
				<td><a href="edit.jsp?ID=<strapi:accountChecklistsID />"><strapi:accountChecklistsID /></a></td>
				<td><strapi:accountChecklistsHeader /></td>
				<td><strapi:accountChecklistsHeader2 /></td>
				<td><strapi:accountChecklistsChecklist /></td>
				<td><strapi:accountChecklistsTrailer /></td>
				<td><strapi:accountChecklistsIntro /></td>
				<td><strapi:accountChecklistsCreatedAt /></td>
				<td><strapi:accountChecklistsUpdatedAt /></td>
				<td><strapi:accountChecklistsPublishedAt /></td>
				<td><strapi:accountChecklistsCreatedById /></td>
				<td><strapi:accountChecklistsUpdatedById /></td>
			</tr>
		</table>
</strapi:accountChecklists>
                </div>
            </div>
        </div>
        <jsp:include page="../../footer.jsp" />
    </body>
</html>