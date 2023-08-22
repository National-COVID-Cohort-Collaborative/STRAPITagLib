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

						<h2>InstitutionalEssentialsJoinBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>InstitutionalEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachInstitutionalEssentialsJoinBlockLinks var="idIter">
									<strapi:institutionalEssentialsJoinBlockLinks>
										<tr>
											<td><a href="../institutionalEssentialsJoinBlockLinks/show.jsp?ID=<strapi:institutionalEssentialsJoinBlockLinksID />"><strapi:institutionalEssentialsJoinBlockLinksID /></a></td>
											<td><strapi:institutionalEssentialsJoinBlockLinksInstitutionalEssentialId /></td>
											<td><strapi:institutionalEssentialsJoinBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../institutionalEssentialsJoinBlockLinks/edit.jsp?ID=<strapi:institutionalEssentialsJoinBlockLinksID />">edit</a></td>
											<td><a href="../institutionalEssentialsJoinBlockLinks/delete.jsp?ID=<strapi:institutionalEssentialsJoinBlockLinksID />">delete</a></td>
										</tr>
									</strapi:institutionalEssentialsJoinBlockLinks>
								</strapi:foreachInstitutionalEssentialsJoinBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../institutionalEssentialsJoinBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add InstitutionalEssentialsJoinBlockLinks</a>
						<br/><br/>

		<strapi:foreachInstitutionalEssentialsJoinBlockLinks var="idIter">
			<strapi:institutionalEssentialsJoinBlockLinks>
						<a href="../../strapi/institutionalEssentialsJoinBlockLinks/institutionalEssentialsJoinBlockLinks.jsp?ID=<strapi:institutionalEssentialsJoinBlockLinksID />"><strapi:institutionalEssentialsJoinBlockLinksID /></a>
		<strapi:institutionalEssentialsJoinBlockLinksInstitutionalEssentialId />
		<strapi:institutionalEssentialsJoinBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:institutionalEssentialsJoinBlockLinks>
			</strapi:foreachInstitutionalEssentialsJoinBlockLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>