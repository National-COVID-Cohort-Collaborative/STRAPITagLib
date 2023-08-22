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

						<h2>FilesFolderLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FileId</th>
									<th>FolderId</th>
									<th>FileOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFilesFolderLinks var="idIter">
									<strapi:filesFolderLinks>
										<tr>
											<td><a href="../filesFolderLinks/show.jsp?ID=<strapi:filesFolderLinksID />"><strapi:filesFolderLinksID /></a></td>
											<td><strapi:filesFolderLinksFileId /></td>
											<td><strapi:filesFolderLinksFolderId /></td>
											<td><strapi:filesFolderLinksFileOrder /></td>
											<td><a href="../filesFolderLinks/edit.jsp?ID=<strapi:filesFolderLinksID />">edit</a></td>
											<td><a href="../filesFolderLinks/delete.jsp?ID=<strapi:filesFolderLinksID />">delete</a></td>
										</tr>
									</strapi:filesFolderLinks>
								</strapi:foreachFilesFolderLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../filesFolderLinks/add.jsp?ID=${param.ID}">add FilesFolderLinks</a>
						<br/><br/>

		<strapi:foreachFilesFolderLinks var="idIter">
			<strapi:filesFolderLinks>
						<a href="../../strapi/filesFolderLinks/filesFolderLinks.jsp?ID=<strapi:filesFolderLinksID />"><strapi:filesFolderLinksID /></a>
		<strapi:filesFolderLinksFileId />
		<strapi:filesFolderLinksFolderId />
		<strapi:filesFolderLinksFileOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:filesFolderLinks>
			</strapi:foreachFilesFolderLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>