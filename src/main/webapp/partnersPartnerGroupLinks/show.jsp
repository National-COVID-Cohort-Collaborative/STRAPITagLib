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
<strapi:partnersPartnerGroupLinks ID="${ID}">
	<h2>PartnersPartnerGroupLinks: <strapi:partnersPartnerGroupLinksID /></h2>
<ul>
	<li><a href="../partnerGroups/show.jsp?ID=<strapi:partnersPartnerGroupLinksPartnerGroupId />">PartnerGroups</a>
	<li><a href="../partners/show.jsp?ID=<strapi:partnersPartnerGroupLinksPartnerId />">Partners</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>PartnerId</th>
			<th>PartnerGroupId</th>
			<th>PartnerOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:partnersPartnerGroupLinksID />"><strapi:partnersPartnerGroupLinksID /></a></td>
				<td><strapi:partnersPartnerGroupLinksPartnerId /></td>
				<td><strapi:partnersPartnerGroupLinksPartnerGroupId /></td>
				<td><strapi:partnersPartnerGroupLinksPartnerOrder /></td>
			</tr>
		</table>
</strapi:partnersPartnerGroupLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>