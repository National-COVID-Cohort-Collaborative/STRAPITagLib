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

						<h2>AccountChecklists List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Header2</th>
									<th>Checklist</th>
									<th>Trailer</th>
									<th>Intro</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachAccountChecklists var="idIter">
									<strapi:accountChecklists>
										<tr>
											<td><a href="../accountChecklists/show.jsp?ID=<strapi:accountChecklistsID />"><strapi:accountChecklistsID /></a></td>
											<td><strapi:accountChecklistsHeader /></td>
											<td><strapi:accountChecklistsHeader2 /></td>
											<td><strapi:accountChecklistsChecklist /></td>
											<td><strapi:accountChecklistsTrailer /></td>
											<td><strapi:accountChecklistsIntro /></td>
											<td><strapi:accountChecklistsCreatedAt /></td>
											<td><strapi:accountChecklistsUpdatedAt /></td>
											<td><strapi:accountChecklistsPublishedAt /></td>
											<td><strapi:accountChecklistsCreatedById /></td>
											<td><strapi:accountChecklistsUpdatedById /></td>
											<td><a href="../accountChecklists/edit.jsp?ID=<strapi:accountChecklistsID />">edit</a></td>
											<td><a href="../accountChecklists/delete.jsp?ID=<strapi:accountChecklistsID />">delete</a></td>
										</tr>
									</strapi:accountChecklists>
								</strapi:foreachAccountChecklists>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../accountChecklists/add.jsp">add AccountChecklists</a>
						<br/><br/>

		<strapi:foreachAccountChecklists var="idIter">
			<strapi:accountChecklists>
						<a href="../../strapi/accountChecklists/accountChecklists.jsp?ID=<strapi:accountChecklistsID />"><strapi:accountChecklistsID /></a>
		<strapi:accountChecklistsHeader />
		<strapi:accountChecklistsHeader2 />
		<strapi:accountChecklistsChecklist />
		<strapi:accountChecklistsTrailer />
		<strapi:accountChecklistsIntro />
		<strapi:accountChecklistsCreatedAt />
		<strapi:accountChecklistsUpdatedAt />
		<strapi:accountChecklistsPublishedAt />
		<strapi:accountChecklistsCreatedById />
		<strapi:accountChecklistsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:accountChecklists>
			</strapi:foreachAccountChecklists>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>