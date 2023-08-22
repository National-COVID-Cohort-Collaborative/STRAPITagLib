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
<strapi:footers ID="${ID}">
	<h2>Footers: <strapi:footersID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>GrantCite</th>
			<th>Credits</th>
			<th>Signup</th>
			<th>Social</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:footersID />"><strapi:footersID /></a></td>
				<td><strapi:footersGrantCite /></td>
				<td><strapi:footersCredits /></td>
				<td><strapi:footersSignup /></td>
				<td><strapi:footersSocial /></td>
				<td><strapi:footersCreatedAt /></td>
				<td><strapi:footersUpdatedAt /></td>
				<td><strapi:footersPublishedAt /></td>
				<td><strapi:footersCreatedById /></td>
				<td><strapi:footersUpdatedById /></td>
			</tr>
		</table>
</strapi:footers>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>