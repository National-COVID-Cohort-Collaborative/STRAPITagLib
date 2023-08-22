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
<strapi:researcherEssentialsJoinBlockLinks ID="${ID}">
	<h2>ResearcherEssentialsJoinBlockLinks: <strapi:researcherEssentialsJoinBlockLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockLefts/show.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksContentImageBlockLeftId />">ContentImageBlockLefts</a>
	<li><a href="../researcherEssentials/show.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksResearcherEssentialId />">ResearcherEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>ResearcherEssentialId</th>
			<th>ContentImageBlockLeftId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />"><strapi:researcherEssentialsJoinBlockLinksID /></a></td>
				<td><strapi:researcherEssentialsJoinBlockLinksResearcherEssentialId /></td>
				<td><strapi:researcherEssentialsJoinBlockLinksContentImageBlockLeftId /></td>
			</tr>
		</table>
</strapi:researcherEssentialsJoinBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>