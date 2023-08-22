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

						<h2>WorkstreamInstancesFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>WorkstreamInstanceId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachWorkstreamInstancesFaqsLinks var="idIter">
									<strapi:workstreamInstancesFaqsLinks>
										<tr>
											<td><a href="../workstreamInstancesFaqsLinks/show.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />"><strapi:workstreamInstancesFaqsLinksID /></a></td>
											<td><strapi:workstreamInstancesFaqsLinksWorkstreamInstanceId /></td>
											<td><strapi:workstreamInstancesFaqsLinksFaqId /></td>
											<td><strapi:workstreamInstancesFaqsLinksFaqOrder /></td>
											<td><a href="../workstreamInstancesFaqsLinks/edit.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />">edit</a></td>
											<td><a href="../workstreamInstancesFaqsLinks/delete.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:workstreamInstancesFaqsLinks>
								</strapi:foreachWorkstreamInstancesFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../workstreamInstancesFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add WorkstreamInstancesFaqsLinks</a>
						<br/><br/>

		<strapi:foreachWorkstreamInstancesFaqsLinks var="idIter">
			<strapi:workstreamInstancesFaqsLinks>
						<a href="../../strapi/workstreamInstancesFaqsLinks/workstreamInstancesFaqsLinks.jsp?ID=<strapi:workstreamInstancesFaqsLinksID />"><strapi:workstreamInstancesFaqsLinksID /></a>
		<strapi:workstreamInstancesFaqsLinksWorkstreamInstanceId />
		<strapi:workstreamInstancesFaqsLinksFaqId />
		<strapi:workstreamInstancesFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:workstreamInstancesFaqsLinks>
			</strapi:foreachWorkstreamInstancesFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>