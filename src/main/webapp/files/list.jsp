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

						<h2>Files List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
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
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFiles var="idIter">
									<strapi:files>
										<tr>
											<td><a href="../files/show.jsp?ID=<strapi:filesID />"><strapi:filesID /></a></td>
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
											<td><a href="../files/edit.jsp?ID=<strapi:filesID />">edit</a></td>
											<td><a href="../files/delete.jsp?ID=<strapi:filesID />">delete</a></td>
										</tr>
									</strapi:files>
								</strapi:foreachFiles>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../files/add.jsp">add Files</a>
						<br/><br/>

		<strapi:foreachFiles var="idIter">
			<strapi:files>
						<a href="../../strapi/files/files.jsp?ID=<strapi:filesID />"><strapi:filesID /></a>
		<strapi:filesName />
		<strapi:filesAlternativeText />
		<strapi:filesCaption />
		<strapi:filesWidth />
		<strapi:filesHeight />
		<strapi:filesFormats />
		<strapi:filesHash />
		<strapi:filesExt />
		<strapi:filesMime />
		<strapi:filesSize />
		<strapi:filesUrl />
		<strapi:filesPreviewUrl />
		<strapi:filesProvider />
		<strapi:filesProviderMetadata />
		<strapi:filesFolderPath />
		<strapi:filesCreatedAt />
		<strapi:filesUpdatedAt />
		<strapi:filesCreatedById />
		<strapi:filesUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:files>
			</strapi:foreachFiles>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>