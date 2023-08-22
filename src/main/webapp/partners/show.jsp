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
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:partners ID="${ID}">
	<h2>Partners: <strapi:partnersID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Url</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:partnersID />"><strapi:partnersID /></a></td>
				<td><strapi:partnersName /></td>
				<td><strapi:partnersUrl /></td>
				<td><strapi:partnersCreatedAt /></td>
				<td><strapi:partnersUpdatedAt /></td>
				<td><strapi:partnersPublishedAt /></td>
				<td><strapi:partnersCreatedById /></td>
				<td><strapi:partnersUpdatedById /></td>
			</tr>
		</table>

						<h2>PartnersPartnerGroupLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PartnerId</th>
									<th>PartnerGroupId</th>
									<th>PartnerOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPartnersPartnerGroupLinks var="idIter">
									<strapi:partnersPartnerGroupLinks>
										<tr>
											<td><a href="../partnersPartnerGroupLinks/show.jsp?ID=<strapi:partnersPartnerGroupLinksID />"><strapi:partnersPartnerGroupLinksID /></a></td>
											<td><strapi:partnersPartnerGroupLinksPartnerId /></td>
											<td><strapi:partnersPartnerGroupLinksPartnerGroupId /></td>
											<td><strapi:partnersPartnerGroupLinksPartnerOrder /></td>
											<td><a href="../partnersPartnerGroupLinks/edit.jsp?ID=<strapi:partnersPartnerGroupLinksID />">edit</a></td>
											<td><a href="../partnersPartnerGroupLinks/delete.jsp?ID=<strapi:partnersPartnerGroupLinksID />">delete</a></td>
										</tr>
									</strapi:partnersPartnerGroupLinks>
								</strapi:foreachPartnersPartnerGroupLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../partnersPartnerGroupLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PartnersPartnerGroupLinks</a>
						<br/><br/>

		<strapi:foreachPartnersPartnerGroupLinks var="idIter">
			<strapi:partnersPartnerGroupLinks>
						<a href="../../strapi/partnersPartnerGroupLinks/partnersPartnerGroupLinks.jsp?ID=<strapi:partnersPartnerGroupLinksID />"><strapi:partnersPartnerGroupLinksID /></a>
		<strapi:partnersPartnerGroupLinksPartnerId />
		<strapi:partnersPartnerGroupLinksPartnerGroupId />
		<strapi:partnersPartnerGroupLinksPartnerOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:partnersPartnerGroupLinks>
			</strapi:foreachPartnersPartnerGroupLinks>
</strapi:partners>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>