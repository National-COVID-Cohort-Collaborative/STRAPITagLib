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

						<h2>Footers List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>GrantCite</th>
									<th>Credits</th>
									<th>Signup</th>
									<th>Social</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFooters var="idIter">
									<strapi:footers>
										<tr>
											<td><a href="../footers/show.jsp?ID=<strapi:footersID />"><strapi:footersID /></a></td>
											<td><strapi:footersGrantCite /></td>
											<td><strapi:footersCredits /></td>
											<td><strapi:footersSignup /></td>
											<td><strapi:footersSocial /></td>
											<td><strapi:footersCreatedAt /></td>
											<td><strapi:footersUpdatedAt /></td>
											<td><strapi:footersPublishedAt /></td>
											<td><strapi:footersCreatedById /></td>
											<td><strapi:footersUpdatedById /></td>
											<td><a href="../footers/edit.jsp?ID=<strapi:footersID />">edit</a></td>
											<td><a href="../footers/delete.jsp?ID=<strapi:footersID />">delete</a></td>
										</tr>
									</strapi:footers>
								</strapi:foreachFooters>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../footers/add.jsp">add Footers</a>
						<br/><br/>

		<strapi:foreachFooters var="idIter">
			<strapi:footers>
						<a href="../../strapi/footers/footers.jsp?ID=<strapi:footersID />"><strapi:footersID /></a>
		<strapi:footersGrantCite />
		<strapi:footersCredits />
		<strapi:footersSignup />
		<strapi:footersSocial />
		<strapi:footersCreatedAt />
		<strapi:footersUpdatedAt />
		<strapi:footersPublishedAt />
		<strapi:footersCreatedById />
		<strapi:footersUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:footers>
			</strapi:foreachFooters>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>