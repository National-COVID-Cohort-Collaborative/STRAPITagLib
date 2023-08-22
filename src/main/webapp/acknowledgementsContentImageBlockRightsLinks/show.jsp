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
<strapi:acknowledgementsContentImageBlockRightsLinks ID="${ID}">
	<h2>AcknowledgementsContentImageBlockRightsLinks: <strapi:acknowledgementsContentImageBlockRightsLinksID /></h2>
<ul>
	<li><a href="../acknowledgements/show.jsp?ID=<strapi:acknowledgementsContentImageBlockRightsLinksAcknowledgementId />">Acknowledgements</a>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightId />">ContentImageBlockRights</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>AcknowledgementId</th>
			<th>ContentImageBlockRightId</th>
			<th>ContentImageBlockRightOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:acknowledgementsContentImageBlockRightsLinksID />"><strapi:acknowledgementsContentImageBlockRightsLinksID /></a></td>
				<td><strapi:acknowledgementsContentImageBlockRightsLinksAcknowledgementId /></td>
				<td><strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightId /></td>
				<td><strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightOrder /></td>
			</tr>
		</table>
</strapi:acknowledgementsContentImageBlockRightsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>