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
<strapi:leadershipsBioGroupsLinks ID="${ID}">
	<h2>LeadershipsBioGroupsLinks: <strapi:leadershipsBioGroupsLinksID /></h2>
<ul>
	<li><a href="../bioGroups/show.jsp?ID=<strapi:leadershipsBioGroupsLinksBioGroupId />">BioGroups</a>
	<li><a href="../leaderships/show.jsp?ID=<strapi:leadershipsBioGroupsLinksLeadershipId />">Leaderships</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>LeadershipId</th>
			<th>BioGroupId</th>
			<th>BioGroupOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:leadershipsBioGroupsLinksID />"><strapi:leadershipsBioGroupsLinksID /></a></td>
				<td><strapi:leadershipsBioGroupsLinksLeadershipId /></td>
				<td><strapi:leadershipsBioGroupsLinksBioGroupId /></td>
				<td><strapi:leadershipsBioGroupsLinksBioGroupOrder /></td>
			</tr>
		</table>
</strapi:leadershipsBioGroupsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>