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

						<h2>LandingPages List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Welcome</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>Introduction</th>
									<th>Researchers</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachLandingPages var="idIter">
									<strapi:landingPages>
										<tr>
											<td><a href="../landingPages/show.jsp?ID=<strapi:landingPagesID />"><strapi:landingPagesID /></a></td>
											<td><strapi:landingPagesWelcome /></td>
											<td><strapi:landingPagesCreatedAt /></td>
											<td><strapi:landingPagesUpdatedAt /></td>
											<td><strapi:landingPagesPublishedAt /></td>
											<td><strapi:landingPagesCreatedById /></td>
											<td><strapi:landingPagesUpdatedById /></td>
											<td><strapi:landingPagesIntroduction /></td>
											<td><strapi:landingPagesResearchers /></td>
											<td><a href="../landingPages/edit.jsp?ID=<strapi:landingPagesID />">edit</a></td>
											<td><a href="../landingPages/delete.jsp?ID=<strapi:landingPagesID />">delete</a></td>
										</tr>
									</strapi:landingPages>
								</strapi:foreachLandingPages>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../landingPages/add.jsp">add LandingPages</a>
						<br/><br/>

		<strapi:foreachLandingPages var="idIter">
			<strapi:landingPages>
						<a href="../../strapi/landingPages/landingPages.jsp?ID=<strapi:landingPagesID />"><strapi:landingPagesID /></a>
		<strapi:landingPagesWelcome />
		<strapi:landingPagesCreatedAt />
		<strapi:landingPagesUpdatedAt />
		<strapi:landingPagesPublishedAt />
		<strapi:landingPagesCreatedById />
		<strapi:landingPagesUpdatedById />
		<strapi:landingPagesIntroduction />
		<strapi:landingPagesResearchers />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:landingPages>
			</strapi:foreachLandingPages>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>