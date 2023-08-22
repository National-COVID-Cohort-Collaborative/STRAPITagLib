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

						<h2>InstitutionalEssentialsStepLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>InstitutionalEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachInstitutionalEssentialsStepLinks var="idIter">
									<strapi:institutionalEssentialsStepLinks>
										<tr>
											<td><a href="../institutionalEssentialsStepLinks/show.jsp?ID=<strapi:institutionalEssentialsStepLinksID />"><strapi:institutionalEssentialsStepLinksID /></a></td>
											<td><strapi:institutionalEssentialsStepLinksInstitutionalEssentialId /></td>
											<td><strapi:institutionalEssentialsStepLinksContentImageBlockRightId /></td>
											<td><strapi:institutionalEssentialsStepLinksContentImageBlockRightOrder /></td>
											<td><a href="../institutionalEssentialsStepLinks/edit.jsp?ID=<strapi:institutionalEssentialsStepLinksID />">edit</a></td>
											<td><a href="../institutionalEssentialsStepLinks/delete.jsp?ID=<strapi:institutionalEssentialsStepLinksID />">delete</a></td>
										</tr>
									</strapi:institutionalEssentialsStepLinks>
								</strapi:foreachInstitutionalEssentialsStepLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../institutionalEssentialsStepLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add InstitutionalEssentialsStepLinks</a>
						<br/><br/>

		<strapi:foreachInstitutionalEssentialsStepLinks var="idIter">
			<strapi:institutionalEssentialsStepLinks>
						<a href="../../strapi/institutionalEssentialsStepLinks/institutionalEssentialsStepLinks.jsp?ID=<strapi:institutionalEssentialsStepLinksID />"><strapi:institutionalEssentialsStepLinksID /></a>
		<strapi:institutionalEssentialsStepLinksInstitutionalEssentialId />
		<strapi:institutionalEssentialsStepLinksContentImageBlockRightId />
		<strapi:institutionalEssentialsStepLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:institutionalEssentialsStepLinks>
			</strapi:foreachInstitutionalEssentialsStepLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>