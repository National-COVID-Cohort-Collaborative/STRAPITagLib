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

						<h2>DomainsCrossCuttingTeamsLinks List</h2>
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
								<strapi:foreachDomainsCrossCuttingTeamsLinks var="idIter">
									<strapi:domainsCrossCuttingTeamsLinks>
										<tr>
											<td><a href="../domainsCrossCuttingTeamsLinks/show.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />"><strapi:domainsCrossCuttingTeamsLinksID /></a></td>
											<td><strapi:domainsCrossCuttingTeamsLinksDomainId /></td>
											<td><strapi:domainsCrossCuttingTeamsLinksDomainTeamId /></td>
											<td><strapi:domainsCrossCuttingTeamsLinksDomainTeamOrder /></td>
											<td><a href="../domainsCrossCuttingTeamsLinks/edit.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />">edit</a></td>
											<td><a href="../domainsCrossCuttingTeamsLinks/delete.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />">delete</a></td>
										</tr>
									</strapi:domainsCrossCuttingTeamsLinks>
								</strapi:foreachDomainsCrossCuttingTeamsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domainsCrossCuttingTeamsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add DomainsCrossCuttingTeamsLinks</a>
						<br/><br/>

		<strapi:foreachDomainsCrossCuttingTeamsLinks var="idIter">
			<strapi:domainsCrossCuttingTeamsLinks>
						<a href="../../strapi/domainsCrossCuttingTeamsLinks/domainsCrossCuttingTeamsLinks.jsp?ID=<strapi:domainsCrossCuttingTeamsLinksID />"><strapi:domainsCrossCuttingTeamsLinksID /></a>
		<strapi:domainsCrossCuttingTeamsLinksDomainId />
		<strapi:domainsCrossCuttingTeamsLinksDomainTeamId />
		<strapi:domainsCrossCuttingTeamsLinksDomainTeamOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domainsCrossCuttingTeamsLinks>
			</strapi:foreachDomainsCrossCuttingTeamsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>