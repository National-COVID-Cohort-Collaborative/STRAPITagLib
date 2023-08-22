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
<strapi:missionsPartnerGroupsLinks ID="${ID}">
	<h2>MissionsPartnerGroupsLinks: <strapi:missionsPartnerGroupsLinksID /></h2>
<ul>
	<li><a href="../missions/show.jsp?ID=<strapi:missionsPartnerGroupsLinksMissionId />">Missions</a>
	<li><a href="../partnerGroups/show.jsp?ID=<strapi:missionsPartnerGroupsLinksPartnerGroupId />">PartnerGroups</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>MissionId</th>
			<th>PartnerGroupId</th>
			<th>PartnerGroupOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:missionsPartnerGroupsLinksID />"><strapi:missionsPartnerGroupsLinksID /></a></td>
				<td><strapi:missionsPartnerGroupsLinksMissionId /></td>
				<td><strapi:missionsPartnerGroupsLinksPartnerGroupId /></td>
				<td><strapi:missionsPartnerGroupsLinksPartnerGroupOrder /></td>
			</tr>
		</table>
</strapi:missionsPartnerGroupsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>