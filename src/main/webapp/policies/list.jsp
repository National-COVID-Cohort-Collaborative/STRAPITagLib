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

						<h2>Policies List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>IntroBlock</th>
									<th>ResourceHeader</th>
									<th>InstitutionHeader</th>
									<th>UserHeader</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPolicies var="idIter">
									<strapi:policies>
										<tr>
											<td><a href="../policies/show.jsp?ID=<strapi:policiesID />"><strapi:policiesID /></a></td>
											<td><strapi:policiesHeader /></td>
											<td><strapi:policiesIntroBlock /></td>
											<td><strapi:policiesResourceHeader /></td>
											<td><strapi:policiesInstitutionHeader /></td>
											<td><strapi:policiesUserHeader /></td>
											<td><strapi:policiesCreatedAt /></td>
											<td><strapi:policiesUpdatedAt /></td>
											<td><strapi:policiesPublishedAt /></td>
											<td><strapi:policiesCreatedById /></td>
											<td><strapi:policiesUpdatedById /></td>
											<td><a href="../policies/edit.jsp?ID=<strapi:policiesID />">edit</a></td>
											<td><a href="../policies/delete.jsp?ID=<strapi:policiesID />">delete</a></td>
										</tr>
									</strapi:policies>
								</strapi:foreachPolicies>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../policies/add.jsp">add Policies</a>
						<br/><br/>

		<strapi:foreachPolicies var="idIter">
			<strapi:policies>
						<a href="../../strapi/policies/policies.jsp?ID=<strapi:policiesID />"><strapi:policiesID /></a>
		<strapi:policiesHeader />
		<strapi:policiesIntroBlock />
		<strapi:policiesResourceHeader />
		<strapi:policiesInstitutionHeader />
		<strapi:policiesUserHeader />
		<strapi:policiesCreatedAt />
		<strapi:policiesUpdatedAt />
		<strapi:policiesPublishedAt />
		<strapi:policiesCreatedById />
		<strapi:policiesUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:policies>
			</strapi:foreachPolicies>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>