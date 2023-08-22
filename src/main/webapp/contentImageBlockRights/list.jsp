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

						<h2>ContentImageBlockRights List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Content</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>Url</th>
									<th>UrlLabel</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachContentImageBlockRights var="idIter">
									<strapi:contentImageBlockRights>
										<tr>
											<td><a href="../contentImageBlockRights/show.jsp?ID=<strapi:contentImageBlockRightsID />"><strapi:contentImageBlockRightsID /></a></td>
											<td><strapi:contentImageBlockRightsHeader /></td>
											<td><strapi:contentImageBlockRightsContent /></td>
											<td><strapi:contentImageBlockRightsCreatedAt /></td>
											<td><strapi:contentImageBlockRightsUpdatedAt /></td>
											<td><strapi:contentImageBlockRightsPublishedAt /></td>
											<td><strapi:contentImageBlockRightsCreatedById /></td>
											<td><strapi:contentImageBlockRightsUpdatedById /></td>
											<td><strapi:contentImageBlockRightsUrl /></td>
											<td><strapi:contentImageBlockRightsUrlLabel /></td>
											<td><a href="../contentImageBlockRights/edit.jsp?ID=<strapi:contentImageBlockRightsID />">edit</a></td>
											<td><a href="../contentImageBlockRights/delete.jsp?ID=<strapi:contentImageBlockRightsID />">delete</a></td>
										</tr>
									</strapi:contentImageBlockRights>
								</strapi:foreachContentImageBlockRights>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../contentImageBlockRights/add.jsp">add ContentImageBlockRights</a>
						<br/><br/>

		<strapi:foreachContentImageBlockRights var="idIter">
			<strapi:contentImageBlockRights>
						<a href="../../strapi/contentImageBlockRights/contentImageBlockRights.jsp?ID=<strapi:contentImageBlockRightsID />"><strapi:contentImageBlockRightsID /></a>
		<strapi:contentImageBlockRightsHeader />
		<strapi:contentImageBlockRightsContent />
		<strapi:contentImageBlockRightsCreatedAt />
		<strapi:contentImageBlockRightsUpdatedAt />
		<strapi:contentImageBlockRightsPublishedAt />
		<strapi:contentImageBlockRightsCreatedById />
		<strapi:contentImageBlockRightsUpdatedById />
		<strapi:contentImageBlockRightsUrl />
		<strapi:contentImageBlockRightsUrlLabel />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:contentImageBlockRights>
			</strapi:foreachContentImageBlockRights>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>