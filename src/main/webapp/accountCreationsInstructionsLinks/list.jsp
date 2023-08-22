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

						<h2>AccountCreationsInstructionsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>AccountCreationId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachAccountCreationsInstructionsLinks var="idIter">
									<strapi:accountCreationsInstructionsLinks>
										<tr>
											<td><a href="../accountCreationsInstructionsLinks/show.jsp?ID=<strapi:accountCreationsInstructionsLinksID />"><strapi:accountCreationsInstructionsLinksID /></a></td>
											<td><strapi:accountCreationsInstructionsLinksAccountCreationId /></td>
											<td><strapi:accountCreationsInstructionsLinksContentImageBlockRightId /></td>
											<td><strapi:accountCreationsInstructionsLinksContentImageBlockRightOrder /></td>
											<td><a href="../accountCreationsInstructionsLinks/edit.jsp?ID=<strapi:accountCreationsInstructionsLinksID />">edit</a></td>
											<td><a href="../accountCreationsInstructionsLinks/delete.jsp?ID=<strapi:accountCreationsInstructionsLinksID />">delete</a></td>
										</tr>
									</strapi:accountCreationsInstructionsLinks>
								</strapi:foreachAccountCreationsInstructionsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../accountCreationsInstructionsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add AccountCreationsInstructionsLinks</a>
						<br/><br/>

		<strapi:foreachAccountCreationsInstructionsLinks var="idIter">
			<strapi:accountCreationsInstructionsLinks>
						<a href="../../strapi/accountCreationsInstructionsLinks/accountCreationsInstructionsLinks.jsp?ID=<strapi:accountCreationsInstructionsLinksID />"><strapi:accountCreationsInstructionsLinksID /></a>
		<strapi:accountCreationsInstructionsLinksAccountCreationId />
		<strapi:accountCreationsInstructionsLinksContentImageBlockRightId />
		<strapi:accountCreationsInstructionsLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:accountCreationsInstructionsLinks>
			</strapi:foreachAccountCreationsInstructionsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>