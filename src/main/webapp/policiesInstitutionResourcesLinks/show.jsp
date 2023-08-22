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
<strapi:policiesInstitutionResourcesLinks ID="${ID}">
	<h2>PoliciesInstitutionResourcesLinks: <strapi:policiesInstitutionResourcesLinksID /></h2>
<ul>
	<li><a href="../policies/show.jsp?ID=<strapi:policiesInstitutionResourcesLinksPolicyId />">Policies</a>
	<li><a href="../resources/show.jsp?ID=<strapi:policiesInstitutionResourcesLinksResourceId />">Resources</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>PolicyId</th>
			<th>ResourceId</th>
			<th>ResourceOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:policiesInstitutionResourcesLinksID />"><strapi:policiesInstitutionResourcesLinksID /></a></td>
				<td><strapi:policiesInstitutionResourcesLinksPolicyId /></td>
				<td><strapi:policiesInstitutionResourcesLinksResourceId /></td>
				<td><strapi:policiesInstitutionResourcesLinksResourceOrder /></td>
			</tr>
		</table>
</strapi:policiesInstitutionResourcesLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>