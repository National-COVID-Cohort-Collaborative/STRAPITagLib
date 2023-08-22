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
<strapi:researcherEssentialsGovernanceBlockLinks ID="${ID}">
	<h2>ResearcherEssentialsGovernanceBlockLinks: <strapi:researcherEssentialsGovernanceBlockLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksContentImageBlockRightId />">ContentImageBlockRights</a>
	<li><a href="../researcherEssentials/show.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksResearcherEssentialId />">ResearcherEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>ResearcherEssentialId</th>
			<th>ContentImageBlockRightId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />"><strapi:researcherEssentialsGovernanceBlockLinksID /></a></td>
				<td><strapi:researcherEssentialsGovernanceBlockLinksResearcherEssentialId /></td>
				<td><strapi:researcherEssentialsGovernanceBlockLinksContentImageBlockRightId /></td>
			</tr>
		</table>
</strapi:researcherEssentialsGovernanceBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>