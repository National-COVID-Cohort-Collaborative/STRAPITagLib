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
<strapi:acknowledgements ID="${ID}">
	<h2>Acknowledgements: <strapi:acknowledgementsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Block</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:acknowledgementsID />"><strapi:acknowledgementsID /></a></td>
				<td><strapi:acknowledgementsHeader /></td>
				<td><strapi:acknowledgementsBlock /></td>
				<td><strapi:acknowledgementsCreatedAt /></td>
				<td><strapi:acknowledgementsUpdatedAt /></td>
				<td><strapi:acknowledgementsPublishedAt /></td>
				<td><strapi:acknowledgementsCreatedById /></td>
				<td><strapi:acknowledgementsUpdatedById /></td>
			</tr>
		</table>

						<h2>AcknowledgementsContentImageBlockRightsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>AcknowledgementId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachAcknowledgementsContentImageBlockRightsLinks var="idIter">
									<strapi:acknowledgementsContentImageBlockRightsLinks>
										<tr>
											<td><a href="../acknowledgementsContentImageBlockRightsLinks/show.jsp?ID=<strapi:acknowledgementsContentImageBlockRightsLinksID />"><strapi:acknowledgementsContentImageBlockRightsLinksID /></a></td>
											<td><strapi:acknowledgementsContentImageBlockRightsLinksAcknowledgementId /></td>
											<td><strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightId /></td>
											<td><strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightOrder /></td>
											<td><a href="../acknowledgementsContentImageBlockRightsLinks/edit.jsp?ID=<strapi:acknowledgementsContentImageBlockRightsLinksID />">edit</a></td>
											<td><a href="../acknowledgementsContentImageBlockRightsLinks/delete.jsp?ID=<strapi:acknowledgementsContentImageBlockRightsLinksID />">delete</a></td>
										</tr>
									</strapi:acknowledgementsContentImageBlockRightsLinks>
								</strapi:foreachAcknowledgementsContentImageBlockRightsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../acknowledgementsContentImageBlockRightsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add AcknowledgementsContentImageBlockRightsLinks</a>
						<br/><br/>

		<strapi:foreachAcknowledgementsContentImageBlockRightsLinks var="idIter">
			<strapi:acknowledgementsContentImageBlockRightsLinks>
						<a href="../../strapi/acknowledgementsContentImageBlockRightsLinks/acknowledgementsContentImageBlockRightsLinks.jsp?ID=<strapi:acknowledgementsContentImageBlockRightsLinksID />"><strapi:acknowledgementsContentImageBlockRightsLinksID /></a>
		<strapi:acknowledgementsContentImageBlockRightsLinksAcknowledgementId />
		<strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightId />
		<strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:acknowledgementsContentImageBlockRightsLinks>
			</strapi:foreachAcknowledgementsContentImageBlockRightsLinks>
</strapi:acknowledgements>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>