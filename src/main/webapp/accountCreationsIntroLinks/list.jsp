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

						<h2>AccountCreationsIntroLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>AccountCreationId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachAccountCreationsIntroLinks var="idIter">
									<strapi:accountCreationsIntroLinks>
										<tr>
											<td><a href="../accountCreationsIntroLinks/show.jsp?ID=<strapi:accountCreationsIntroLinksID />"><strapi:accountCreationsIntroLinksID /></a></td>
											<td><strapi:accountCreationsIntroLinksAccountCreationId /></td>
											<td><strapi:accountCreationsIntroLinksContentImageBlockRightId /></td>
											<td><a href="../accountCreationsIntroLinks/edit.jsp?ID=<strapi:accountCreationsIntroLinksID />">edit</a></td>
											<td><a href="../accountCreationsIntroLinks/delete.jsp?ID=<strapi:accountCreationsIntroLinksID />">delete</a></td>
										</tr>
									</strapi:accountCreationsIntroLinks>
								</strapi:foreachAccountCreationsIntroLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../accountCreationsIntroLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add AccountCreationsIntroLinks</a>
						<br/><br/>

		<strapi:foreachAccountCreationsIntroLinks var="idIter">
			<strapi:accountCreationsIntroLinks>
						<a href="../../strapi/accountCreationsIntroLinks/accountCreationsIntroLinks.jsp?ID=<strapi:accountCreationsIntroLinksID />"><strapi:accountCreationsIntroLinksID /></a>
		<strapi:accountCreationsIntroLinksAccountCreationId />
		<strapi:accountCreationsIntroLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:accountCreationsIntroLinks>
			</strapi:foreachAccountCreationsIntroLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>