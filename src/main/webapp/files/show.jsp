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
<strapi:files ID="${ID}">
	<h2>Files: <strapi:filesID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Name</th>
			<th>AlternativeText</th>
			<th>Caption</th>
			<th>Width</th>
			<th>Height</th>
			<th>Formats</th>
			<th>Hash</th>
			<th>Ext</th>
			<th>Mime</th>
			<th>Size</th>
			<th>Url</th>
			<th>PreviewUrl</th>
			<th>Provider</th>
			<th>ProviderMetadata</th>
			<th>FolderPath</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:filesID />"><strapi:filesID /></a></td>
				<td><strapi:filesName /></td>
				<td><strapi:filesAlternativeText /></td>
				<td><strapi:filesCaption /></td>
				<td><strapi:filesWidth /></td>
				<td><strapi:filesHeight /></td>
				<td><strapi:filesFormats /></td>
				<td><strapi:filesHash /></td>
				<td><strapi:filesExt /></td>
				<td><strapi:filesMime /></td>
				<td><strapi:filesSize /></td>
				<td><strapi:filesUrl /></td>
				<td><strapi:filesPreviewUrl /></td>
				<td><strapi:filesProvider /></td>
				<td><strapi:filesProviderMetadata /></td>
				<td><strapi:filesFolderPath /></td>
				<td><strapi:filesCreatedAt /></td>
				<td><strapi:filesUpdatedAt /></td>
				<td><strapi:filesCreatedById /></td>
				<td><strapi:filesUpdatedById /></td>
			</tr>
		</table>

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

						<h2>FilesRelatedMorphs List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FileId</th>
									<th>RelatedId</th>
									<th>RelatedType</th>
									<th>Field</th>
									<th>Order</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFilesRelatedMorphs var="idIter">
									<strapi:filesRelatedMorphs>
										<tr>
											<td><a href="../filesRelatedMorphs/show.jsp?ID=<strapi:filesRelatedMorphsID />"><strapi:filesRelatedMorphsID /></a></td>
											<td><strapi:filesRelatedMorphsFileId /></td>
											<td><strapi:filesRelatedMorphsRelatedId /></td>
											<td><strapi:filesRelatedMorphsRelatedType /></td>
											<td><strapi:filesRelatedMorphsField /></td>
											<td><strapi:filesRelatedMorphsOrder /></td>
											<td><a href="../filesRelatedMorphs/edit.jsp?ID=<strapi:filesRelatedMorphsID />">edit</a></td>
											<td><a href="../filesRelatedMorphs/delete.jsp?ID=<strapi:filesRelatedMorphsID />">delete</a></td>
										</tr>
									</strapi:filesRelatedMorphs>
								</strapi:foreachFilesRelatedMorphs>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../filesRelatedMorphs/add.jsp?ID=${param.ID}">add FilesRelatedMorphs</a>
						<br/><br/>

		<strapi:foreachFilesRelatedMorphs var="idIter">
			<strapi:filesRelatedMorphs>
						<a href="../../strapi/filesRelatedMorphs/filesRelatedMorphs.jsp?ID=<strapi:filesRelatedMorphsID />"><strapi:filesRelatedMorphsID /></a>
		<strapi:filesRelatedMorphsFileId />
		<strapi:filesRelatedMorphsRelatedId />
		<strapi:filesRelatedMorphsRelatedType />
		<strapi:filesRelatedMorphsField />
		<strapi:filesRelatedMorphsOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:filesRelatedMorphs>
			</strapi:foreachFilesRelatedMorphs>
</strapi:files>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>