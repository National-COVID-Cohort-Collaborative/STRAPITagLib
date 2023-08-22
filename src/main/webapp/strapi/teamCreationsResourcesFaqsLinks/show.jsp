<%@ include file="../../_include.jsp"  %>

        <html>
            <jsp:include page="../../head.jsp" />
            <body>
                <div class="container-fluid">
                    <jsp:include page="../../header.jsp" />
                    <div class="row flex-nowrap">
                        <div class="col-xs-3">
                            <jsp:include page="../../menu.jsp" />
                        </div>
                        <div class="col-xs-8">
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:teamCreationsResourcesFaqsLinks ID="${ID}">
	<h2>TeamCreationsResourcesFaqsLinks: <strapi:teamCreationsResourcesFaqsLinksID /></h2>
<ul>
	<li><a href="../faqs/show.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksFaqId />">Faqs</a>
	<li><a href="../teamCreations/show.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksTeamCreationId />">TeamCreations</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TeamCreationId</th>
			<th>FaqId</th>
			<th>FaqOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:teamCreationsResourcesFaqsLinksID />"><strapi:teamCreationsResourcesFaqsLinksID /></a></td>
				<td><strapi:teamCreationsResourcesFaqsLinksTeamCreationId /></td>
				<td><strapi:teamCreationsResourcesFaqsLinksFaqId /></td>
				<td><strapi:teamCreationsResourcesFaqsLinksFaqOrder /></td>
			</tr>
		</table>
</strapi:teamCreationsResourcesFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../../footer.jsp" />
    </body>
</html>