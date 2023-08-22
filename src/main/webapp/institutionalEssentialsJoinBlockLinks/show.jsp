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
<strapi:institutionalEssentialsJoinBlockLinks ID="${ID}">
	<h2>InstitutionalEssentialsJoinBlockLinks: <strapi:institutionalEssentialsJoinBlockLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockLefts/show.jsp?ID=<strapi:institutionalEssentialsJoinBlockLinksContentImageBlockLeftId />">ContentImageBlockLefts</a>
	<li><a href="../institutionalEssentials/show.jsp?ID=<strapi:institutionalEssentialsJoinBlockLinksInstitutionalEssentialId />">InstitutionalEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>InstitutionalEssentialId</th>
			<th>ContentImageBlockLeftId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:institutionalEssentialsJoinBlockLinksID />"><strapi:institutionalEssentialsJoinBlockLinksID /></a></td>
				<td><strapi:institutionalEssentialsJoinBlockLinksInstitutionalEssentialId /></td>
				<td><strapi:institutionalEssentialsJoinBlockLinksContentImageBlockLeftId /></td>
			</tr>
		</table>
</strapi:institutionalEssentialsJoinBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>