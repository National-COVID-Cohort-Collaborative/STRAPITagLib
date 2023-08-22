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
<strapi:workstreamInstancesFaqsLinks ID="${ID}">
	<h2>WorkstreamInstancesFaqsLinks: <strapi:workstreamInstancesFaqsLinksID /></h2>
<ul>
	<li><a href="../faqs/show.jsp?ID=<strapi:workstreamInstancesFaqsLinksFaqId />">Faqs</a>
	<li><a href="../workstreamInstances/show.jsp?ID=<strapi:workstreamInstancesFaqsLinksWorkstreamInstanceId />">WorkstreamInstances</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>WorkstreamInstanceId</th>
			<th>FaqId</th>
			<th>FaqOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />"><strapi:workstreamInstancesFaqsLinksID /></a></td>
				<td><strapi:workstreamInstancesFaqsLinksWorkstreamInstanceId /></td>
				<td><strapi:workstreamInstancesFaqsLinksFaqId /></td>
				<td><strapi:workstreamInstancesFaqsLinksFaqOrder /></td>
			</tr>
		</table>
</strapi:workstreamInstancesFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>