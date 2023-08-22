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

						<h2>ContentImageBlockLefts List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Content</th>
									<th>Header</th>
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
								<strapi:foreachContentImageBlockLefts var="idIter">
									<strapi:contentImageBlockLefts>
										<tr>
											<td><a href="../contentImageBlockLefts/show.jsp?ID=<strapi:contentImageBlockLeftsID />"><strapi:contentImageBlockLeftsID /></a></td>
											<td><strapi:contentImageBlockLeftsContent /></td>
											<td><strapi:contentImageBlockLeftsHeader /></td>
											<td><strapi:contentImageBlockLeftsCreatedAt /></td>
											<td><strapi:contentImageBlockLeftsUpdatedAt /></td>
											<td><strapi:contentImageBlockLeftsPublishedAt /></td>
											<td><strapi:contentImageBlockLeftsCreatedById /></td>
											<td><strapi:contentImageBlockLeftsUpdatedById /></td>
											<td><strapi:contentImageBlockLeftsUrl /></td>
											<td><strapi:contentImageBlockLeftsUrlLabel /></td>
											<td><a href="../contentImageBlockLefts/edit.jsp?ID=<strapi:contentImageBlockLeftsID />">edit</a></td>
											<td><a href="../contentImageBlockLefts/delete.jsp?ID=<strapi:contentImageBlockLeftsID />">delete</a></td>
										</tr>
									</strapi:contentImageBlockLefts>
								</strapi:foreachContentImageBlockLefts>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../contentImageBlockLefts/add.jsp">add ContentImageBlockLefts</a>
						<br/><br/>

		<strapi:foreachContentImageBlockLefts var="idIter">
			<strapi:contentImageBlockLefts>
						<a href="../../strapi/contentImageBlockLefts/contentImageBlockLefts.jsp?ID=<strapi:contentImageBlockLeftsID />"><strapi:contentImageBlockLeftsID /></a>
		<strapi:contentImageBlockLeftsContent />
		<strapi:contentImageBlockLeftsHeader />
		<strapi:contentImageBlockLeftsCreatedAt />
		<strapi:contentImageBlockLeftsUpdatedAt />
		<strapi:contentImageBlockLeftsPublishedAt />
		<strapi:contentImageBlockLeftsCreatedById />
		<strapi:contentImageBlockLeftsUpdatedById />
		<strapi:contentImageBlockLeftsUrl />
		<strapi:contentImageBlockLeftsUrlLabel />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:contentImageBlockLefts>
			</strapi:foreachContentImageBlockLefts>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>