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
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>