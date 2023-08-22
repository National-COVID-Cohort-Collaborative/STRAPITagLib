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
<strapi:policiesUserResourcesLinks ID="${ID}">
	<h2>PoliciesUserResourcesLinks: <strapi:policiesUserResourcesLinksID /></h2>
<ul>
	<li><a href="../policies/show.jsp?ID=<strapi:policiesUserResourcesLinksPolicyId />">Policies</a>
	<li><a href="../resources/show.jsp?ID=<strapi:policiesUserResourcesLinksResourceId />">Resources</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>PolicyId</th>
			<th>ResourceId</th>
			<th>ResourceOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:policiesUserResourcesLinksID />"><strapi:policiesUserResourcesLinksID /></a></td>
				<td><strapi:policiesUserResourcesLinksPolicyId /></td>
				<td><strapi:policiesUserResourcesLinksResourceId /></td>
				<td><strapi:policiesUserResourcesLinksResourceOrder /></td>
			</tr>
		</table>
</strapi:policiesUserResourcesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>