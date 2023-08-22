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
<strapi:forms ID="${ID}">
	<h2>Forms: <strapi:formsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Subheader</th>
			<th>Block</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:formsID />"><strapi:formsID /></a></td>
				<td><strapi:formsHeader /></td>
				<td><strapi:formsSubheader /></td>
				<td><strapi:formsBlock /></td>
				<td><strapi:formsCreatedAt /></td>
				<td><strapi:formsUpdatedAt /></td>
				<td><strapi:formsPublishedAt /></td>
				<td><strapi:formsCreatedById /></td>
				<td><strapi:formsUpdatedById /></td>
			</tr>
		</table>

						<h2>FormsContentImageBlockRightsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FormId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFormsContentImageBlockRightsLinks var="idIter">
									<strapi:formsContentImageBlockRightsLinks>
										<tr>
											<td><a href="../formsContentImageBlockRightsLinks/show.jsp?ID=<strapi:formsContentImageBlockRightsLinksID />"><strapi:formsContentImageBlockRightsLinksID /></a></td>
											<td><strapi:formsContentImageBlockRightsLinksFormId /></td>
											<td><strapi:formsContentImageBlockRightsLinksContentImageBlockRightId /></td>
											<td><strapi:formsContentImageBlockRightsLinksContentImageBlockRightOrder /></td>
											<td><a href="../formsContentImageBlockRightsLinks/edit.jsp?ID=<strapi:formsContentImageBlockRightsLinksID />">edit</a></td>
											<td><a href="../formsContentImageBlockRightsLinks/delete.jsp?ID=<strapi:formsContentImageBlockRightsLinksID />">delete</a></td>
										</tr>
									</strapi:formsContentImageBlockRightsLinks>
								</strapi:foreachFormsContentImageBlockRightsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../formsContentImageBlockRightsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FormsContentImageBlockRightsLinks</a>
						<br/><br/>

		<strapi:foreachFormsContentImageBlockRightsLinks var="idIter">
			<strapi:formsContentImageBlockRightsLinks>
						<a href="../../strapi/formsContentImageBlockRightsLinks/formsContentImageBlockRightsLinks.jsp?ID=<strapi:formsContentImageBlockRightsLinksID />"><strapi:formsContentImageBlockRightsLinksID /></a>
		<strapi:formsContentImageBlockRightsLinksFormId />
		<strapi:formsContentImageBlockRightsLinksContentImageBlockRightId />
		<strapi:formsContentImageBlockRightsLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:formsContentImageBlockRightsLinks>
			</strapi:foreachFormsContentImageBlockRightsLinks>
</strapi:forms>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>