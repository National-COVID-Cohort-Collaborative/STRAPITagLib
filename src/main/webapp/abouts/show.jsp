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
<strapi:abouts ID="${ID}">
	<h2>Abouts: <strapi:aboutsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Block1</th>
			<th>Block2</th>
			<th>Block3</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			<th>Block4</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:aboutsID />"><strapi:aboutsID /></a></td>
				<td><strapi:aboutsBlock1 /></td>
				<td><strapi:aboutsBlock2 /></td>
				<td><strapi:aboutsBlock3 /></td>
				<td><strapi:aboutsCreatedAt /></td>
				<td><strapi:aboutsUpdatedAt /></td>
				<td><strapi:aboutsPublishedAt /></td>
				<td><strapi:aboutsCreatedById /></td>
				<td><strapi:aboutsUpdatedById /></td>
				<td><strapi:aboutsBlock4 /></td>
			</tr>
		</table>
</strapi:abouts>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>