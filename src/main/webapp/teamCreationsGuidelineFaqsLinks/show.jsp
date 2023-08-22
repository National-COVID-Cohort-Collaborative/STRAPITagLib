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
<strapi:teamCreationsGuidelineFaqsLinks ID="${ID}">
	<h2>TeamCreationsGuidelineFaqsLinks: <strapi:teamCreationsGuidelineFaqsLinksID /></h2>
<ul>
	<li><a href="../faqs/show.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksFaqId />">Faqs</a>
	<li><a href="../teamCreations/show.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksTeamCreationId />">TeamCreations</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>TeamCreationId</th>
			<th>FaqId</th>
			<th>FaqOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:teamCreationsGuidelineFaqsLinksID />"><strapi:teamCreationsGuidelineFaqsLinksID /></a></td>
				<td><strapi:teamCreationsGuidelineFaqsLinksTeamCreationId /></td>
				<td><strapi:teamCreationsGuidelineFaqsLinksFaqId /></td>
				<td><strapi:teamCreationsGuidelineFaqsLinksFaqOrder /></td>
			</tr>
		</table>
</strapi:teamCreationsGuidelineFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>