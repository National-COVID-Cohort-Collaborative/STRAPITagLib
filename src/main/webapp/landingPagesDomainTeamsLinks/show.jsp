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
<strapi:landingPagesDomainTeamsLinks ID="${ID}">
	<h2>LandingPagesDomainTeamsLinks: <strapi:landingPagesDomainTeamsLinksID /></h2>
<ul>
	<li><a href="../domainTeams/show.jsp?ID=<strapi:landingPagesDomainTeamsLinksDomainTeamId />">DomainTeams</a>
	<li><a href="../landingPages/show.jsp?ID=<strapi:landingPagesDomainTeamsLinksLandingPageId />">LandingPages</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>LandingPageId</th>
			<th>DomainTeamId</th>
			<th>DomainTeamOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:landingPagesDomainTeamsLinksID />"><strapi:landingPagesDomainTeamsLinksID /></a></td>
				<td><strapi:landingPagesDomainTeamsLinksLandingPageId /></td>
				<td><strapi:landingPagesDomainTeamsLinksDomainTeamId /></td>
				<td><strapi:landingPagesDomainTeamsLinksDomainTeamOrder /></td>
			</tr>
		</table>
</strapi:landingPagesDomainTeamsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>