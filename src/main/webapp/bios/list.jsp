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

						<h2>Bios List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FirstName</th>
									<th>LastName</th>
									<th>Title</th>
									<th>Organization</th>
									<th>OrganizationUrl</th>
									<th>Website</th>
									<th>Orcid</th>
									<th>Email</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachBios var="idIter">
									<strapi:bios>
										<tr>
											<td><a href="../bios/show.jsp?ID=<strapi:biosID />"><strapi:biosID /></a></td>
											<td><strapi:biosFirstName /></td>
											<td><strapi:biosLastName /></td>
											<td><strapi:biosTitle /></td>
											<td><strapi:biosOrganization /></td>
											<td><strapi:biosOrganizationUrl /></td>
											<td><strapi:biosWebsite /></td>
											<td><strapi:biosOrcid /></td>
											<td><strapi:biosEmail /></td>
											<td><strapi:biosCreatedAt /></td>
											<td><strapi:biosUpdatedAt /></td>
											<td><strapi:biosPublishedAt /></td>
											<td><strapi:biosCreatedById /></td>
											<td><strapi:biosUpdatedById /></td>
											<td><a href="../bios/edit.jsp?ID=<strapi:biosID />">edit</a></td>
											<td><a href="../bios/delete.jsp?ID=<strapi:biosID />">delete</a></td>
										</tr>
									</strapi:bios>
								</strapi:foreachBios>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../bios/add.jsp">add Bios</a>
						<br/><br/>

		<strapi:foreachBios var="idIter">
			<strapi:bios>
						<a href="../../strapi/bios/bios.jsp?ID=<strapi:biosID />"><strapi:biosID /></a>
		<strapi:biosFirstName />
		<strapi:biosLastName />
		<strapi:biosTitle />
		<strapi:biosOrganization />
		<strapi:biosOrganizationUrl />
		<strapi:biosWebsite />
		<strapi:biosOrcid />
		<strapi:biosEmail />
		<strapi:biosCreatedAt />
		<strapi:biosUpdatedAt />
		<strapi:biosPublishedAt />
		<strapi:biosCreatedById />
		<strapi:biosUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:bios>
			</strapi:foreachBios>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>