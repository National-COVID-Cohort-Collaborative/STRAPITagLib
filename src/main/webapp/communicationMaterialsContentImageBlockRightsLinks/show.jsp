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
<strapi:communicationMaterialsContentImageBlockRightsLinks ID="${ID}">
	<h2>CommunicationMaterialsContentImageBlockRightsLinks: <strapi:communicationMaterialsContentImageBlockRightsLinksID /></h2>
<ul>
	<li><a href="../communicationMaterials/show.jsp?ID=<strapi:communicationMaterialsContentImageBlockRightsLinksCommunicationMaterialId />">CommunicationMaterials</a>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightId />">ContentImageBlockRights</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>CommunicationMaterialId</th>
			<th>ContentImageBlockRightId</th>
			<th>ContentImageBlockRightOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:communicationMaterialsContentImageBlockRightsLinksID />"><strapi:communicationMaterialsContentImageBlockRightsLinksID /></a></td>
				<td><strapi:communicationMaterialsContentImageBlockRightsLinksCommunicationMaterialId /></td>
				<td><strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightId /></td>
				<td><strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightOrder /></td>
			</tr>
		</table>
</strapi:communicationMaterialsContentImageBlockRightsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>