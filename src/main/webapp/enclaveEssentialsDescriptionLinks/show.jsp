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
<strapi:enclaveEssentialsDescriptionLinks ID="${ID}">
	<h2>EnclaveEssentialsDescriptionLinks: <strapi:enclaveEssentialsDescriptionLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockLefts/show.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksContentImageBlockLeftId />">ContentImageBlockLefts</a>
	<li><a href="../enclaveEssentials/show.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksEnclaveEssentialId />">EnclaveEssentials</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>EnclaveEssentialId</th>
			<th>ContentImageBlockLeftId</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />"><strapi:enclaveEssentialsDescriptionLinksID /></a></td>
				<td><strapi:enclaveEssentialsDescriptionLinksEnclaveEssentialId /></td>
				<td><strapi:enclaveEssentialsDescriptionLinksContentImageBlockLeftId /></td>
			</tr>
		</table>
</strapi:enclaveEssentialsDescriptionLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>