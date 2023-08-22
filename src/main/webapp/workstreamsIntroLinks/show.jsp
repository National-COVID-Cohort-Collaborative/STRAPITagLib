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
<strapi:workstreamsIntroLinks ID="${ID}">
	<h2>WorkstreamsIntroLinks: <strapi:workstreamsIntroLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:workstreamsIntroLinksContentImageBlockRightId />">ContentImageBlockRights</a>
	<li><a href="../workstreams/show.jsp?ID=<strapi:workstreamsIntroLinksWorkstreamId />">Workstreams</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>WorkstreamId</th>
			<th>ContentImageBlockRightId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:workstreamsIntroLinksID />"><strapi:workstreamsIntroLinksID /></a></td>
				<td><strapi:workstreamsIntroLinksWorkstreamId /></td>
				<td><strapi:workstreamsIntroLinksContentImageBlockRightId /></td>
			</tr>
		</table>
</strapi:workstreamsIntroLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>