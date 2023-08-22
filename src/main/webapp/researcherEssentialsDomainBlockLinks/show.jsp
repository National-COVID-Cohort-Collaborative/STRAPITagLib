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
<strapi:researcherEssentialsDomainBlockLinks ID="${ID}">
	<h2>ResearcherEssentialsDomainBlockLinks: <strapi:researcherEssentialsDomainBlockLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockLefts/show.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksContentImageBlockLeftId />">ContentImageBlockLefts</a>
	<li><a href="../researcherEssentials/show.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksResearcherEssentialId />">ResearcherEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>ResearcherEssentialId</th>
			<th>ContentImageBlockLeftId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />"><strapi:researcherEssentialsDomainBlockLinksID /></a></td>
				<td><strapi:researcherEssentialsDomainBlockLinksResearcherEssentialId /></td>
				<td><strapi:researcherEssentialsDomainBlockLinksContentImageBlockLeftId /></td>
			</tr>
		</table>
</strapi:researcherEssentialsDomainBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>