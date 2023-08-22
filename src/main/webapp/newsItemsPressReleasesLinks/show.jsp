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
<strapi:newsItemsPressReleasesLinks ID="${ID}">
	<h2>NewsItemsPressReleasesLinks: <strapi:newsItemsPressReleasesLinksID /></h2>
<ul>
	<li><a href="../newsItems/show.jsp?ID=<strapi:newsItemsPressReleasesLinksNewsItemId />">NewsItems</a>
	<li><a href="../pressReleases/show.jsp?ID=<strapi:newsItemsPressReleasesLinksPressReleaseId />">PressReleases</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>NewsItemId</th>
			<th>PressReleaseId</th>
			<th>PressReleaseOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:newsItemsPressReleasesLinksID />"><strapi:newsItemsPressReleasesLinksID /></a></td>
				<td><strapi:newsItemsPressReleasesLinksNewsItemId /></td>
				<td><strapi:newsItemsPressReleasesLinksPressReleaseId /></td>
				<td><strapi:newsItemsPressReleasesLinksPressReleaseOrder /></td>
			</tr>
		</table>
</strapi:newsItemsPressReleasesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>