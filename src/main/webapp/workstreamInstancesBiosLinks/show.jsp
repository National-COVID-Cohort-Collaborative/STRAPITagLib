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
<strapi:workstreamInstancesBiosLinks ID="${ID}">
	<h2>WorkstreamInstancesBiosLinks: <strapi:workstreamInstancesBiosLinksID /></h2>
<ul>
	<li><a href="../bios/show.jsp?ID=<strapi:workstreamInstancesBiosLinksBioId />">Bios</a>
	<li><a href="../workstreamInstances/show.jsp?ID=<strapi:workstreamInstancesBiosLinksWorkstreamInstanceId />">WorkstreamInstances</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>WorkstreamInstanceId</th>
			<th>BioId</th>
			<th>BioOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:workstreamInstancesBiosLinksID />"><strapi:workstreamInstancesBiosLinksID /></a></td>
				<td><strapi:workstreamInstancesBiosLinksWorkstreamInstanceId /></td>
				<td><strapi:workstreamInstancesBiosLinksBioId /></td>
				<td><strapi:workstreamInstancesBiosLinksBioOrder /></td>
			</tr>
		</table>
</strapi:workstreamInstancesBiosLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>