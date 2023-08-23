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
<strapi:trainingsPortalResourcesLinks ID="${ID}">
	<h2>TrainingsPortalResourcesLinks: <strapi:trainingsPortalResourcesLinksID /></h2>
<ul>
	<li><a href="../resources/show.jsp?ID=<strapi:trainingsPortalResourcesLinksResourceId />">Resources</a>
	<li><a href="../trainings/show.jsp?ID=<strapi:trainingsPortalResourcesLinksTrainingId />">Trainings</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TrainingId</th>
			<th>ResourceId</th>
			<th>ResourceOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:trainingsPortalResourcesLinksID />"><strapi:trainingsPortalResourcesLinksID /></a></td>
				<td><strapi:trainingsPortalResourcesLinksTrainingId /></td>
				<td><strapi:trainingsPortalResourcesLinksResourceId /></td>
				<td><strapi:trainingsPortalResourcesLinksResourceOrder /></td>
			</tr>
		</table>
</strapi:trainingsPortalResourcesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>