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
<strapi:duaLists ID="${ID}">
	<h2>DuaLists: <strapi:duaListsID /></h2>
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
				<td><a href="edit.jsp?ID=<strapi:duaListsID />"><strapi:duaListsID /></a></td>
				<td><strapi:duaListsHeader /></td>
				<td><strapi:duaListsBlock1 /></td>
				<td><strapi:duaListsCreatedAt /></td>
				<td><strapi:duaListsUpdatedAt /></td>
				<td><strapi:duaListsPublishedAt /></td>
				<td><strapi:duaListsCreatedById /></td>
				<td><strapi:duaListsUpdatedById /></td>
			</tr>
		</table>
</strapi:duaLists>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>