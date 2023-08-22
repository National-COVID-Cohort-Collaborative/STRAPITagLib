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
<strapi:domainsCrossCuttingTeamsLinks ID="${ID}">
	<h2>DomainsCrossCuttingTeamsLinks: <strapi:domainsCrossCuttingTeamsLinksID /></h2>
<ul>
	<li><a href="../domainTeams/show.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksDomainTeamId />">DomainTeams</a>
	<li><a href="../domains/show.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksDomainId />">Domains</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>DomainId</th>
			<th>DomainTeamId</th>
			<th>DomainTeamOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />"><strapi:domainsCrossCuttingTeamsLinksID /></a></td>
				<td><strapi:domainsCrossCuttingTeamsLinksDomainId /></td>
				<td><strapi:domainsCrossCuttingTeamsLinksDomainTeamId /></td>
				<td><strapi:domainsCrossCuttingTeamsLinksDomainTeamOrder /></td>
			</tr>
		</table>
</strapi:domainsCrossCuttingTeamsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>