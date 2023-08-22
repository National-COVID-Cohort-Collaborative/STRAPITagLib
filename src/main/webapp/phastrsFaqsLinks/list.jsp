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

						<h2>PhastrsFaqsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PhastrId</th>
									<th>FaqId</th>
									<th>FaqOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPhastrsFaqsLinks var="idIter">
									<strapi:phastrsFaqsLinks>
										<tr>
											<td><a href="../phastrsFaqsLinks/show.jsp?ID=<strapi:phastrsFaqsLinksID />"><strapi:phastrsFaqsLinksID /></a></td>
											<td><strapi:phastrsFaqsLinksPhastrId /></td>
											<td><strapi:phastrsFaqsLinksFaqId /></td>
											<td><strapi:phastrsFaqsLinksFaqOrder /></td>
											<td><a href="../phastrsFaqsLinks/edit.jsp?ID=<strapi:phastrsFaqsLinksID />">edit</a></td>
											<td><a href="../phastrsFaqsLinks/delete.jsp?ID=<strapi:phastrsFaqsLinksID />">delete</a></td>
										</tr>
									</strapi:phastrsFaqsLinks>
								</strapi:foreachPhastrsFaqsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../phastrsFaqsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PhastrsFaqsLinks</a>
						<br/><br/>

		<strapi:foreachPhastrsFaqsLinks var="idIter">
			<strapi:phastrsFaqsLinks>
						<a href="../../strapi/phastrsFaqsLinks/phastrsFaqsLinks.jsp?ID=<strapi:phastrsFaqsLinksID />"><strapi:phastrsFaqsLinksID /></a>
		<strapi:phastrsFaqsLinksPhastrId />
		<strapi:phastrsFaqsLinksFaqId />
		<strapi:phastrsFaqsLinksFaqOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:phastrsFaqsLinks>
			</strapi:foreachPhastrsFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>