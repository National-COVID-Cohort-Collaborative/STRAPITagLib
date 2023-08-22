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
<strapi:filesRelatedMorphs ID="${ID}">
	<h2>FilesRelatedMorphs: <strapi:filesRelatedMorphsID /></h2>
<ul>
	<li><a href="../files/show.jsp?ID=<strapi:filesRelatedMorphsFileId />">Files</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>FileId</th>
			<th>RelatedId</th>
			<th>RelatedType</th>
			<th>Field</th>
			<th>Order</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:filesRelatedMorphsID />"><strapi:filesRelatedMorphsID /></a></td>
				<td><strapi:filesRelatedMorphsFileId /></td>
				<td><strapi:filesRelatedMorphsRelatedId /></td>
				<td><strapi:filesRelatedMorphsRelatedType /></td>
				<td><strapi:filesRelatedMorphsField /></td>
				<td><strapi:filesRelatedMorphsOrder /></td>
			</tr>
		</table>
</strapi:filesRelatedMorphs>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>