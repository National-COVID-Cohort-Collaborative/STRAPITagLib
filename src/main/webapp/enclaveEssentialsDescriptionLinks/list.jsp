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

						<h2>EnclaveEssentialsDescriptionLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>EnclaveEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachEnclaveEssentialsDescriptionLinks var="idIter">
									<strapi:enclaveEssentialsDescriptionLinks>
										<tr>
											<td><a href="../enclaveEssentialsDescriptionLinks/show.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />"><strapi:enclaveEssentialsDescriptionLinksID /></a></td>
											<td><strapi:enclaveEssentialsDescriptionLinksEnclaveEssentialId /></td>
											<td><strapi:enclaveEssentialsDescriptionLinksContentImageBlockLeftId /></td>
											<td><a href="../enclaveEssentialsDescriptionLinks/edit.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />">edit</a></td>
											<td><a href="../enclaveEssentialsDescriptionLinks/delete.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />">delete</a></td>
										</tr>
									</strapi:enclaveEssentialsDescriptionLinks>
								</strapi:foreachEnclaveEssentialsDescriptionLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../enclaveEssentialsDescriptionLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add EnclaveEssentialsDescriptionLinks</a>
						<br/><br/>

		<strapi:foreachEnclaveEssentialsDescriptionLinks var="idIter">
			<strapi:enclaveEssentialsDescriptionLinks>
						<a href="../../strapi/enclaveEssentialsDescriptionLinks/enclaveEssentialsDescriptionLinks.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />"><strapi:enclaveEssentialsDescriptionLinksID /></a>
		<strapi:enclaveEssentialsDescriptionLinksEnclaveEssentialId />
		<strapi:enclaveEssentialsDescriptionLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:enclaveEssentialsDescriptionLinks>
			</strapi:foreachEnclaveEssentialsDescriptionLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>