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

						<h2>PartnerGroups List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPartnerGroups var="idIter">
									<strapi:partnerGroups>
										<tr>
											<td><a href="../partnerGroups/show.jsp?ID=<strapi:partnerGroupsID />"><strapi:partnerGroupsID /></a></td>
											<td><strapi:partnerGroupsName /></td>
											<td><strapi:partnerGroupsCreatedAt /></td>
											<td><strapi:partnerGroupsUpdatedAt /></td>
											<td><strapi:partnerGroupsPublishedAt /></td>
											<td><strapi:partnerGroupsCreatedById /></td>
											<td><strapi:partnerGroupsUpdatedById /></td>
											<td><a href="../partnerGroups/edit.jsp?ID=<strapi:partnerGroupsID />">edit</a></td>
											<td><a href="../partnerGroups/delete.jsp?ID=<strapi:partnerGroupsID />">delete</a></td>
										</tr>
									</strapi:partnerGroups>
								</strapi:foreachPartnerGroups>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../partnerGroups/add.jsp">add PartnerGroups</a>
						<br/><br/>

		<strapi:foreachPartnerGroups var="idIter">
			<strapi:partnerGroups>
						<a href="../../strapi/partnerGroups/partnerGroups.jsp?ID=<strapi:partnerGroupsID />"><strapi:partnerGroupsID /></a>
		<strapi:partnerGroupsName />
		<strapi:partnerGroupsCreatedAt />
		<strapi:partnerGroupsUpdatedAt />
		<strapi:partnerGroupsPublishedAt />
		<strapi:partnerGroupsCreatedById />
		<strapi:partnerGroupsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:partnerGroups>
			</strapi:foreachPartnerGroups>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>