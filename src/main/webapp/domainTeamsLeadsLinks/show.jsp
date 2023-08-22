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
<strapi:domainTeamsLeadsLinks ID="${ID}">
	<h2>DomainTeamsLeadsLinks: <strapi:domainTeamsLeadsLinksID /></h2>
<ul>
	<li><a href="../bios/show.jsp?ID=<strapi:domainTeamsLeadsLinksBioId />">Bios</a>
	<li><a href="../domainTeams/show.jsp?ID=<strapi:domainTeamsLeadsLinksDomainTeamId />">DomainTeams</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>DomainTeamId</th>
			<th>BioId</th>
			<th>BioOrder</th>
			<th>DomainTeamOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:domainTeamsLeadsLinksID />"><strapi:domainTeamsLeadsLinksID /></a></td>
				<td><strapi:domainTeamsLeadsLinksDomainTeamId /></td>
				<td><strapi:domainTeamsLeadsLinksBioId /></td>
				<td><strapi:domainTeamsLeadsLinksBioOrder /></td>
				<td><strapi:domainTeamsLeadsLinksDomainTeamOrder /></td>
			</tr>
		</table>
</strapi:domainTeamsLeadsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>