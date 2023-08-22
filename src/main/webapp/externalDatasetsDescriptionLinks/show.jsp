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
<strapi:externalDatasetsDescriptionLinks ID="${ID}">
	<h2>ExternalDatasetsDescriptionLinks: <strapi:externalDatasetsDescriptionLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockLefts/show.jsp?ID=<strapi:externalDatasetsDescriptionLinksContentImageBlockLeftId />">ContentImageBlockLefts</a>
	<li><a href="../externalDatasets/show.jsp?ID=<strapi:externalDatasetsDescriptionLinksExternalDatasetId />">ExternalDatasets</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>ExternalDatasetId</th>
			<th>ContentImageBlockLeftId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:externalDatasetsDescriptionLinksID />"><strapi:externalDatasetsDescriptionLinksID /></a></td>
				<td><strapi:externalDatasetsDescriptionLinksExternalDatasetId /></td>
				<td><strapi:externalDatasetsDescriptionLinksContentImageBlockLeftId /></td>
			</tr>
		</table>
</strapi:externalDatasetsDescriptionLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>