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
<strapi:filesFolderLinks ID="${ID}">
	<h2>FilesFolderLinks: <strapi:filesFolderLinksID /></h2>
<ul>
	<li><a href="../files/show.jsp?ID=<strapi:filesFolderLinksFileId />">Files</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>FileId</th>
			<th>FolderId</th>
			<th>FileOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:filesFolderLinksID />"><strapi:filesFolderLinksID /></a></td>
				<td><strapi:filesFolderLinksFileId /></td>
				<td><strapi:filesFolderLinksFolderId /></td>
				<td><strapi:filesFolderLinksFileOrder /></td>
			</tr>
		</table>
</strapi:filesFolderLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>