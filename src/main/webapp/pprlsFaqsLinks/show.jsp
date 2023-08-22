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
<strapi:pprlsFaqsLinks ID="${ID}">
	<h2>PprlsFaqsLinks: <strapi:pprlsFaqsLinksID /></h2>
<ul>
	<li><a href="../faqs/show.jsp?ID=<strapi:pprlsFaqsLinksFaqId />">Faqs</a>
	<li><a href="../pprls/show.jsp?ID=<strapi:pprlsFaqsLinksPprlId />">Pprls</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>PprlId</th>
			<th>FaqId</th>
			<th>FaqOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:pprlsFaqsLinksID />"><strapi:pprlsFaqsLinksID /></a></td>
				<td><strapi:pprlsFaqsLinksPprlId /></td>
				<td><strapi:pprlsFaqsLinksFaqId /></td>
				<td><strapi:pprlsFaqsLinksFaqOrder /></td>
			</tr>
		</table>
</strapi:pprlsFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>