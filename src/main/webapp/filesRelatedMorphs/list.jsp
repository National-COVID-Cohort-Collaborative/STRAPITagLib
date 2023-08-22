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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>