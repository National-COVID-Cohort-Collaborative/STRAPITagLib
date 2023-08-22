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

						<h2>DomainsDomainTeamsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>DomainId</th>
									<th>DomainTeamId</th>
									<th>DomainTeamOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDomainsDomainTeamsLinks var="idIter">
									<strapi:domainsDomainTeamsLinks>
										<tr>
											<td><a href="../domainsDomainTeamsLinks/show.jsp?ID=<strapi:domainsDomainTeamsLinksID />"><strapi:domainsDomainTeamsLinksID /></a></td>
											<td><strapi:domainsDomainTeamsLinksDomainId /></td>
											<td><strapi:domainsDomainTeamsLinksDomainTeamId /></td>
											<td><strapi:domainsDomainTeamsLinksDomainTeamOrder /></td>
											<td><a href="../domainsDomainTeamsLinks/edit.jsp?ID=<strapi:domainsDomainTeamsLinksID />">edit</a></td>
											<td><a href="../domainsDomainTeamsLinks/delete.jsp?ID=<strapi:domainsDomainTeamsLinksID />">delete</a></td>
										</tr>
									</strapi:domainsDomainTeamsLinks>
								</strapi:foreachDomainsDomainTeamsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domainsDomainTeamsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add DomainsDomainTeamsLinks</a>
						<br/><br/>

		<strapi:foreachDomainsDomainTeamsLinks var="idIter">
			<strapi:domainsDomainTeamsLinks>
						<a href="../../strapi/domainsDomainTeamsLinks/domainsDomainTeamsLinks.jsp?ID=<strapi:domainsDomainTeamsLinksID />"><strapi:domainsDomainTeamsLinksID /></a>
		<strapi:domainsDomainTeamsLinksDomainId />
		<strapi:domainsDomainTeamsLinksDomainTeamId />
		<strapi:domainsDomainTeamsLinksDomainTeamOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domainsDomainTeamsLinks>
			</strapi:foreachDomainsDomainTeamsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>