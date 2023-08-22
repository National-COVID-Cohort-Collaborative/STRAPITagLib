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
<strapi:teamCreationsResponsibilityFaqsLinks ID="${ID}">
	<h2>TeamCreationsResponsibilityFaqsLinks: <strapi:teamCreationsResponsibilityFaqsLinksID /></h2>
<ul>
	<li><a href="../faqs/show.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksFaqId />">Faqs</a>
	<li><a href="../teamCreations/show.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksTeamCreationId />">TeamCreations</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TeamCreationId</th>
			<th>FaqId</th>
			<th>FaqOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:teamCreationsResponsibilityFaqsLinksID />"><strapi:teamCreationsResponsibilityFaqsLinksID /></a></td>
				<td><strapi:teamCreationsResponsibilityFaqsLinksTeamCreationId /></td>
				<td><strapi:teamCreationsResponsibilityFaqsLinksFaqId /></td>
				<td><strapi:teamCreationsResponsibilityFaqsLinksFaqOrder /></td>
			</tr>
		</table>
</strapi:teamCreationsResponsibilityFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../../footer.jsp" />
    </body>
</html>