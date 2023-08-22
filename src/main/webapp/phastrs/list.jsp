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

						<h2>Phastrs List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>About</th>
									<th>Eligibility</th>
									<th>Submission</th>
									<th>QuickStart</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPhastrs var="idIter">
									<strapi:phastrs>
										<tr>
											<td><a href="../phastrs/show.jsp?ID=<strapi:phastrsID />"><strapi:phastrsID /></a></td>
											<td><strapi:phastrsAbout /></td>
											<td><strapi:phastrsEligibility /></td>
											<td><strapi:phastrsSubmission /></td>
											<td><strapi:phastrsQuickStart /></td>
											<td><strapi:phastrsCreatedAt /></td>
											<td><strapi:phastrsUpdatedAt /></td>
											<td><strapi:phastrsPublishedAt /></td>
											<td><strapi:phastrsCreatedById /></td>
											<td><strapi:phastrsUpdatedById /></td>
											<td><a href="../phastrs/edit.jsp?ID=<strapi:phastrsID />">edit</a></td>
											<td><a href="../phastrs/delete.jsp?ID=<strapi:phastrsID />">delete</a></td>
										</tr>
									</strapi:phastrs>
								</strapi:foreachPhastrs>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../phastrs/add.jsp">add Phastrs</a>
						<br/><br/>

		<strapi:foreachPhastrs var="idIter">
			<strapi:phastrs>
						<a href="../../strapi/phastrs/phastrs.jsp?ID=<strapi:phastrsID />"><strapi:phastrsID /></a>
		<strapi:phastrsAbout />
		<strapi:phastrsEligibility />
		<strapi:phastrsSubmission />
		<strapi:phastrsQuickStart />
		<strapi:phastrsCreatedAt />
		<strapi:phastrsUpdatedAt />
		<strapi:phastrsPublishedAt />
		<strapi:phastrsCreatedById />
		<strapi:phastrsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:phastrs>
			</strapi:foreachPhastrs>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>