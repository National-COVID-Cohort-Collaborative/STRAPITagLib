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

						<h2>WorkstreamsIntroLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamsIntroLinks var="idIter">
									<strapi:workstreamsIntroLinks>
										<tr>
											<td><a href="../workstreamsIntroLinks/show.jsp?ID=<strapi:workstreamsIntroLinksID />"><strapi:workstreamsIntroLinksID /></a></td>
											<td><strapi:workstreamsIntroLinksWorkstreamId /></td>
											<td><strapi:workstreamsIntroLinksContentImageBlockRightId /></td>
											<td><a href="../workstreamsIntroLinks/edit.jsp?ID=<strapi:workstreamsIntroLinksID />">edit</a></td>
											<td><a href="../workstreamsIntroLinks/delete.jsp?ID=<strapi:workstreamsIntroLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamsIntroLinks>
								</strapi:foreachWorkstreamsIntroLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamsIntroLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamsIntroLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamsIntroLinks var="idIter">
			<strapi:workstreamsIntroLinks>
						<a href="../../strapi/workstreamsIntroLinks/workstreamsIntroLinks.jsp?ID=<strapi:workstreamsIntroLinksID />"><strapi:workstreamsIntroLinksID /></a>
		<strapi:workstreamsIntroLinksWorkstreamId />
		<strapi:workstreamsIntroLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamsIntroLinks>
			</strapi:foreachWorkstreamsIntroLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>