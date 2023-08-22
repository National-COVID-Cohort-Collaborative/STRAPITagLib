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

						<h2>Domains List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Block1</th>
									<th>Block2</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDomains var="idIter">
									<strapi:domains>
										<tr>
											<td><a href="../domains/show.jsp?ID=<strapi:domainsID />"><strapi:domainsID /></a></td>
											<td><strapi:domainsBlock1 /></td>
											<td><strapi:domainsBlock2 /></td>
											<td><strapi:domainsCreatedAt /></td>
											<td><strapi:domainsUpdatedAt /></td>
											<td><strapi:domainsPublishedAt /></td>
											<td><strapi:domainsCreatedById /></td>
											<td><strapi:domainsUpdatedById /></td>
											<td><a href="../domains/edit.jsp?ID=<strapi:domainsID />">edit</a></td>
											<td><a href="../domains/delete.jsp?ID=<strapi:domainsID />">delete</a></td>
										</tr>
									</strapi:domains>
								</strapi:foreachDomains>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domains/add.jsp">add Domains</a>
						<br/><br/>

		<strapi:foreachDomains var="idIter">
			<strapi:domains>
						<a href="../../strapi/domains/domains.jsp?ID=<strapi:domainsID />"><strapi:domainsID /></a>
		<strapi:domainsBlock1 />
		<strapi:domainsBlock2 />
		<strapi:domainsCreatedAt />
		<strapi:domainsUpdatedAt />
		<strapi:domainsPublishedAt />
		<strapi:domainsCreatedById />
		<strapi:domainsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domains>
			</strapi:foreachDomains>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>