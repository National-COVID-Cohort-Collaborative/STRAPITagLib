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

						<h2>WorkstreamInstancesBiosLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamInstanceId</th>
									<th>BioId</th>
									<th>BioOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamInstancesBiosLinks var="idIter">
									<strapi:workstreamInstancesBiosLinks>
										<tr>
											<td><a href="../workstreamInstancesBiosLinks/show.jsp?ID=<strapi:workstreamInstancesBiosLinksID />"><strapi:workstreamInstancesBiosLinksID /></a></td>
											<td><strapi:workstreamInstancesBiosLinksWorkstreamInstanceId /></td>
											<td><strapi:workstreamInstancesBiosLinksBioId /></td>
											<td><strapi:workstreamInstancesBiosLinksBioOrder /></td>
											<td><a href="../workstreamInstancesBiosLinks/edit.jsp?ID=<strapi:workstreamInstancesBiosLinksID />">edit</a></td>
											<td><a href="../workstreamInstancesBiosLinks/delete.jsp?ID=<strapi:workstreamInstancesBiosLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamInstancesBiosLinks>
								</strapi:foreachWorkstreamInstancesBiosLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamInstancesBiosLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamInstancesBiosLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamInstancesBiosLinks var="idIter">
			<strapi:workstreamInstancesBiosLinks>
						<a href="../../strapi/workstreamInstancesBiosLinks/workstreamInstancesBiosLinks.jsp?ID=<strapi:workstreamInstancesBiosLinksID />"><strapi:workstreamInstancesBiosLinksID /></a>
		<strapi:workstreamInstancesBiosLinksWorkstreamInstanceId />
		<strapi:workstreamInstancesBiosLinksBioId />
		<strapi:workstreamInstancesBiosLinksBioOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamInstancesBiosLinks>
			</strapi:foreachWorkstreamInstancesBiosLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>