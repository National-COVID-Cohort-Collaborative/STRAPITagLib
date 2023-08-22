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
<strapi:enclaveEssentialsUserTilesLinks ID="${ID}">
	<h2>EnclaveEssentialsUserTilesLinks: <strapi:enclaveEssentialsUserTilesLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockLefts/show.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftId />">ContentImageBlockLefts</a>
	<li><a href="../enclaveEssentials/show.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksEnclaveEssentialId />">EnclaveEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>EnclaveEssentialId</th>
			<th>ContentImageBlockLeftId</th>
			<th>ContentImageBlockLeftOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />"><strapi:enclaveEssentialsUserTilesLinksID /></a></td>
				<td><strapi:enclaveEssentialsUserTilesLinksEnclaveEssentialId /></td>
				<td><strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftId /></td>
				<td><strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftOrder /></td>
			</tr>
		</table>
</strapi:enclaveEssentialsUserTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>