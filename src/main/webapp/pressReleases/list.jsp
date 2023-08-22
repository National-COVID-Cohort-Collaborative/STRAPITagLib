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

						<h2>PressReleases List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Title</th>
									<th>Description</th>
									<th>Date</th>
									<th>Url</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPressReleases var="idIter">
									<strapi:pressReleases>
										<tr>
											<td><a href="../pressReleases/show.jsp?ID=<strapi:pressReleasesID />"><strapi:pressReleasesID /></a></td>
											<td><strapi:pressReleasesTitle /></td>
											<td><strapi:pressReleasesDescription /></td>
											<td><strapi:pressReleasesDate /></td>
											<td><strapi:pressReleasesUrl /></td>
											<td><strapi:pressReleasesCreatedAt /></td>
											<td><strapi:pressReleasesUpdatedAt /></td>
											<td><strapi:pressReleasesPublishedAt /></td>
											<td><strapi:pressReleasesCreatedById /></td>
											<td><strapi:pressReleasesUpdatedById /></td>
											<td><a href="../pressReleases/edit.jsp?ID=<strapi:pressReleasesID />">edit</a></td>
											<td><a href="../pressReleases/delete.jsp?ID=<strapi:pressReleasesID />">delete</a></td>
										</tr>
									</strapi:pressReleases>
								</strapi:foreachPressReleases>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../pressReleases/add.jsp">add PressReleases</a>
						<br/><br/>

		<strapi:foreachPressReleases var="idIter">
			<strapi:pressReleases>
						<a href="../../strapi/pressReleases/pressReleases.jsp?ID=<strapi:pressReleasesID />"><strapi:pressReleasesID /></a>
		<strapi:pressReleasesTitle />
		<strapi:pressReleasesDescription />
		<strapi:pressReleasesDate />
		<strapi:pressReleasesUrl />
		<strapi:pressReleasesCreatedAt />
		<strapi:pressReleasesUpdatedAt />
		<strapi:pressReleasesPublishedAt />
		<strapi:pressReleasesCreatedById />
		<strapi:pressReleasesUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:pressReleases>
			</strapi:foreachPressReleases>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>