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
<strapi:onboardingsNavTilesLinks ID="${ID}">
	<h2>OnboardingsNavTilesLinks: <strapi:onboardingsNavTilesLinksID /></h2>
<ul>
	<li><a href="../navTiles/show.jsp?ID=<strapi:onboardingsNavTilesLinksNavTileId />">NavTiles</a>
	<li><a href="../onboardings/show.jsp?ID=<strapi:onboardingsNavTilesLinksOnboardingId />">Onboardings</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>OnboardingId</th>
			<th>NavTileId</th>
			<th>NavTileOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:onboardingsNavTilesLinksID />"><strapi:onboardingsNavTilesLinksID /></a></td>
				<td><strapi:onboardingsNavTilesLinksOnboardingId /></td>
				<td><strapi:onboardingsNavTilesLinksNavTileId /></td>
				<td><strapi:onboardingsNavTilesLinksNavTileOrder /></td>
			</tr>
		</table>
</strapi:onboardingsNavTilesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>