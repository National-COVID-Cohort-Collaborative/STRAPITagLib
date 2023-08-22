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

						<h2>Onboardings List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Subheader</th>
									<th>RegistrationHeader</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>Block</th>
									<th>Block2</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachOnboardings var="idIter">
									<strapi:onboardings>
										<tr>
											<td><a href="../onboardings/show.jsp?ID=<strapi:onboardingsID />"><strapi:onboardingsID /></a></td>
											<td><strapi:onboardingsHeader /></td>
											<td><strapi:onboardingsSubheader /></td>
											<td><strapi:onboardingsRegistrationHeader /></td>
											<td><strapi:onboardingsCreatedAt /></td>
											<td><strapi:onboardingsUpdatedAt /></td>
											<td><strapi:onboardingsPublishedAt /></td>
											<td><strapi:onboardingsCreatedById /></td>
											<td><strapi:onboardingsUpdatedById /></td>
											<td><strapi:onboardingsBlock /></td>
											<td><strapi:onboardingsBlock2 /></td>
											<td><a href="../onboardings/edit.jsp?ID=<strapi:onboardingsID />">edit</a></td>
											<td><a href="../onboardings/delete.jsp?ID=<strapi:onboardingsID />">delete</a></td>
										</tr>
									</strapi:onboardings>
								</strapi:foreachOnboardings>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../onboardings/add.jsp">add Onboardings</a>
						<br/><br/>

		<strapi:foreachOnboardings var="idIter">
			<strapi:onboardings>
						<a href="../../strapi/onboardings/onboardings.jsp?ID=<strapi:onboardingsID />"><strapi:onboardingsID /></a>
		<strapi:onboardingsHeader />
		<strapi:onboardingsSubheader />
		<strapi:onboardingsRegistrationHeader />
		<strapi:onboardingsCreatedAt />
		<strapi:onboardingsUpdatedAt />
		<strapi:onboardingsPublishedAt />
		<strapi:onboardingsCreatedById />
		<strapi:onboardingsUpdatedById />
		<strapi:onboardingsBlock />
		<strapi:onboardingsBlock2 />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:onboardings>
			</strapi:foreachOnboardings>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>