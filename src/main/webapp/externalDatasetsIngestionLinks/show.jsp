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
<strapi:externalDatasetsIngestionLinks ID="${ID}">
	<h2>ExternalDatasetsIngestionLinks: <strapi:externalDatasetsIngestionLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:externalDatasetsIngestionLinksContentImageBlockRightId />">ContentImageBlockRights</a>
	<li><a href="../externalDatasets/show.jsp?ID=<strapi:externalDatasetsIngestionLinksExternalDatasetId />">ExternalDatasets</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>ExternalDatasetId</th>
			<th>ContentImageBlockRightId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:externalDatasetsIngestionLinksID />"><strapi:externalDatasetsIngestionLinksID /></a></td>
				<td><strapi:externalDatasetsIngestionLinksExternalDatasetId /></td>
				<td><strapi:externalDatasetsIngestionLinksContentImageBlockRightId /></td>
			</tr>
		</table>
</strapi:externalDatasetsIngestionLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>