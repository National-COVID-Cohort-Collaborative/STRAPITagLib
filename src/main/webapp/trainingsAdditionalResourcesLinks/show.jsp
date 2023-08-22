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
<strapi:trainingsAdditionalResourcesLinks ID="${ID}">
	<h2>TrainingsAdditionalResourcesLinks: <strapi:trainingsAdditionalResourcesLinksID /></h2>
<ul>
	<li><a href="../resources/show.jsp?ID=<strapi:trainingsAdditionalResourcesLinksResourceId />">Resources</a>
	<li><a href="../trainings/show.jsp?ID=<strapi:trainingsAdditionalResourcesLinksTrainingId />">Trainings</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TrainingId</th>
			<th>ResourceId</th>
			<th>ResourceOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:trainingsAdditionalResourcesLinksID />"><strapi:trainingsAdditionalResourcesLinksID /></a></td>
				<td><strapi:trainingsAdditionalResourcesLinksTrainingId /></td>
				<td><strapi:trainingsAdditionalResourcesLinksResourceId /></td>
				<td><strapi:trainingsAdditionalResourcesLinksResourceOrder /></td>
			</tr>
		</table>
</strapi:trainingsAdditionalResourcesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>