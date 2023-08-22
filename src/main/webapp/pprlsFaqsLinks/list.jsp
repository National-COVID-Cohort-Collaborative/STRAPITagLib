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

						<h2>PprlsFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PprlId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPprlsFaqsLinks var="idIter">
									<strapi:pprlsFaqsLinks>
										<tr>
											<td><a href="../pprlsFaqsLinks/show.jsp?ID=<strapi:pprlsFaqsLinksID />"><strapi:pprlsFaqsLinksID /></a></td>
											<td><strapi:pprlsFaqsLinksPprlId /></td>
											<td><strapi:pprlsFaqsLinksFaqId /></td>
											<td><strapi:pprlsFaqsLinksFaqOrder /></td>
											<td><a href="../pprlsFaqsLinks/edit.jsp?ID=<strapi:pprlsFaqsLinksID />">edit</a></td>
											<td><a href="../pprlsFaqsLinks/delete.jsp?ID=<strapi:pprlsFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:pprlsFaqsLinks>
								</strapi:foreachPprlsFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../pprlsFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PprlsFaqsLinks</a>
						<br/><br/>

		<strapi:foreachPprlsFaqsLinks var="idIter">
			<strapi:pprlsFaqsLinks>
						<a href="../../strapi/pprlsFaqsLinks/pprlsFaqsLinks.jsp?ID=<strapi:pprlsFaqsLinksID />"><strapi:pprlsFaqsLinksID /></a>
		<strapi:pprlsFaqsLinksPprlId />
		<strapi:pprlsFaqsLinksFaqId />
		<strapi:pprlsFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:pprlsFaqsLinks>
			</strapi:foreachPprlsFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>