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
<strapi:phastrsFaqsLinks ID="${ID}">
	<h2>PhastrsFaqsLinks: <strapi:phastrsFaqsLinksID /></h2>
<ul>
	<li><a href="../faqs/show.jsp?ID=<strapi:phastrsFaqsLinksFaqId />">Faqs</a>
	<li><a href="../phastrs/show.jsp?ID=<strapi:phastrsFaqsLinksPhastrId />">Phastrs</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>PhastrId</th>
			<th>FaqId</th>
			<th>FaqOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:phastrsFaqsLinksID />"><strapi:phastrsFaqsLinksID /></a></td>
				<td><strapi:phastrsFaqsLinksPhastrId /></td>
				<td><strapi:phastrsFaqsLinksFaqId /></td>
				<td><strapi:phastrsFaqsLinksFaqOrder /></td>
			</tr>
		</table>
</strapi:phastrsFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>