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
<strapi:newsItems ID="${ID}">
	<h2>NewsItems: <strapi:newsItemsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:newsItemsID />"><strapi:newsItemsID /></a></td>
				<td><strapi:newsItemsCreatedAt /></td>
				<td><strapi:newsItemsUpdatedAt /></td>
				<td><strapi:newsItemsPublishedAt /></td>
				<td><strapi:newsItemsCreatedById /></td>
				<td><strapi:newsItemsUpdatedById /></td>
			</tr>
		</table>

						<h2>NewsItemsPressReleasesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>NewsItemId</th>
									<th>PressReleaseId</th>
									<th>PressReleaseOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachNewsItemsPressReleasesLinks var="idIter">
									<strapi:newsItemsPressReleasesLinks>
										<tr>
											<td><a href="../newsItemsPressReleasesLinks/show.jsp?ID=<strapi:newsItemsPressReleasesLinksID />"><strapi:newsItemsPressReleasesLinksID /></a></td>
											<td><strapi:newsItemsPressReleasesLinksNewsItemId /></td>
											<td><strapi:newsItemsPressReleasesLinksPressReleaseId /></td>
											<td><strapi:newsItemsPressReleasesLinksPressReleaseOrder /></td>
											<td><a href="../newsItemsPressReleasesLinks/edit.jsp?ID=<strapi:newsItemsPressReleasesLinksID />">edit</a></td>
											<td><a href="../newsItemsPressReleasesLinks/delete.jsp?ID=<strapi:newsItemsPressReleasesLinksID />">delete</a></td>
										</tr>
									</strapi:newsItemsPressReleasesLinks>
								</strapi:foreachNewsItemsPressReleasesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../newsItemsPressReleasesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add NewsItemsPressReleasesLinks</a>
						<br/><br/>

		<strapi:foreachNewsItemsPressReleasesLinks var="idIter">
			<strapi:newsItemsPressReleasesLinks>
						<a href="../../strapi/newsItemsPressReleasesLinks/newsItemsPressReleasesLinks.jsp?ID=<strapi:newsItemsPressReleasesLinksID />"><strapi:newsItemsPressReleasesLinksID /></a>
		<strapi:newsItemsPressReleasesLinksNewsItemId />
		<strapi:newsItemsPressReleasesLinksPressReleaseId />
		<strapi:newsItemsPressReleasesLinksPressReleaseOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:newsItemsPressReleasesLinks>
			</strapi:foreachNewsItemsPressReleasesLinks>
</strapi:newsItems>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>