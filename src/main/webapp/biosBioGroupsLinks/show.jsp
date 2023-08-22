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
<strapi:biosBioGroupsLinks ID="${ID}">
	<h2>BiosBioGroupsLinks: <strapi:biosBioGroupsLinksID /></h2>
<ul>
	<li><a href="../bioGroups/show.jsp?ID=<strapi:biosBioGroupsLinksBioGroupId />">BioGroups</a>
	<li><a href="../bios/show.jsp?ID=<strapi:biosBioGroupsLinksBioId />">Bios</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>BioId</th>
			<th>BioGroupId</th>
			<th>BioGroupOrder</th>
			<th>BioOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:biosBioGroupsLinksID />"><strapi:biosBioGroupsLinksID /></a></td>
				<td><strapi:biosBioGroupsLinksBioId /></td>
				<td><strapi:biosBioGroupsLinksBioGroupId /></td>
				<td><strapi:biosBioGroupsLinksBioGroupOrder /></td>
				<td><strapi:biosBioGroupsLinksBioOrder /></td>
			</tr>
		</table>
</strapi:biosBioGroupsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>