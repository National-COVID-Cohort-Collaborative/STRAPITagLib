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

						<h2>Forms List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Subheader</th>
									<th>Block</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachForms var="idIter">
									<strapi:forms>
										<tr>
											<td><a href="../forms/show.jsp?ID=<strapi:formsID />"><strapi:formsID /></a></td>
											<td><strapi:formsHeader /></td>
											<td><strapi:formsSubheader /></td>
											<td><strapi:formsBlock /></td>
											<td><strapi:formsCreatedAt /></td>
											<td><strapi:formsUpdatedAt /></td>
											<td><strapi:formsPublishedAt /></td>
											<td><strapi:formsCreatedById /></td>
											<td><strapi:formsUpdatedById /></td>
											<td><a href="../forms/edit.jsp?ID=<strapi:formsID />">edit</a></td>
											<td><a href="../forms/delete.jsp?ID=<strapi:formsID />">delete</a></td>
										</tr>
									</strapi:forms>
								</strapi:foreachForms>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../forms/add.jsp">add Forms</a>
						<br/><br/>

		<strapi:foreachForms var="idIter">
			<strapi:forms>
						<a href="../../strapi/forms/forms.jsp?ID=<strapi:formsID />"><strapi:formsID /></a>
		<strapi:formsHeader />
		<strapi:formsSubheader />
		<strapi:formsBlock />
		<strapi:formsCreatedAt />
		<strapi:formsUpdatedAt />
		<strapi:formsPublishedAt />
		<strapi:formsCreatedById />
		<strapi:formsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:forms>
			</strapi:foreachForms>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>