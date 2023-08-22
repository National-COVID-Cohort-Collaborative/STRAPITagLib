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
<strapi:teamCreationsReadyFaqsLinks ID="${ID}">
	<h2>TeamCreationsReadyFaqsLinks: <strapi:teamCreationsReadyFaqsLinksID /></h2>
<ul>
	<li><a href="../faqs/show.jsp?ID=<strapi:teamCreationsReadyFaqsLinksFaqId />">Faqs</a>
	<li><a href="../teamCreations/show.jsp?ID=<strapi:teamCreationsReadyFaqsLinksTeamCreationId />">TeamCreations</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TeamCreationId</th>
			<th>FaqId</th>
			<th>FaqOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:teamCreationsReadyFaqsLinksID />"><strapi:teamCreationsReadyFaqsLinksID /></a></td>
				<td><strapi:teamCreationsReadyFaqsLinksTeamCreationId /></td>
				<td><strapi:teamCreationsReadyFaqsLinksFaqId /></td>
				<td><strapi:teamCreationsReadyFaqsLinksFaqOrder /></td>
			</tr>
		</table>
</strapi:teamCreationsReadyFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../../footer.jsp" />
    </body>
</html>