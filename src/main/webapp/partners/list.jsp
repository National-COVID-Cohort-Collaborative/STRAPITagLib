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

						<h2>Partners List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
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
								<strapi:foreachPartners var="idIter">
									<strapi:partners>
										<tr>
											<td><a href="../partners/show.jsp?ID=<strapi:partnersID />"><strapi:partnersID /></a></td>
											<td><strapi:partnersName /></td>
											<td><strapi:partnersUrl /></td>
											<td><strapi:partnersCreatedAt /></td>
											<td><strapi:partnersUpdatedAt /></td>
											<td><strapi:partnersPublishedAt /></td>
											<td><strapi:partnersCreatedById /></td>
											<td><strapi:partnersUpdatedById /></td>
											<td><a href="../partners/edit.jsp?ID=<strapi:partnersID />">edit</a></td>
											<td><a href="../partners/delete.jsp?ID=<strapi:partnersID />">delete</a></td>
										</tr>
									</strapi:partners>
								</strapi:foreachPartners>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../partners/add.jsp">add Partners</a>
						<br/><br/>

		<strapi:foreachPartners var="idIter">
			<strapi:partners>
						<a href="../../strapi/partners/partners.jsp?ID=<strapi:partnersID />"><strapi:partnersID /></a>
		<strapi:partnersName />
		<strapi:partnersUrl />
		<strapi:partnersCreatedAt />
		<strapi:partnersUpdatedAt />
		<strapi:partnersPublishedAt />
		<strapi:partnersCreatedById />
		<strapi:partnersUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:partners>
			</strapi:foreachPartners>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>