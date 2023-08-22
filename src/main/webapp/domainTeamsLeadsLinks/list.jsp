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

						<h2>DomainTeamsLeadsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>DomainTeamId</th>
									<th>BioId</th>
									<th>BioOrder</th>
									<th>DomainTeamOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachDomainTeamsLeadsLinks var="idIter">
									<strapi:domainTeamsLeadsLinks>
										<tr>
											<td><a href="../domainTeamsLeadsLinks/show.jsp?ID=<strapi:domainTeamsLeadsLinksID />"><strapi:domainTeamsLeadsLinksID /></a></td>
											<td><strapi:domainTeamsLeadsLinksDomainTeamId /></td>
											<td><strapi:domainTeamsLeadsLinksBioId /></td>
											<td><strapi:domainTeamsLeadsLinksBioOrder /></td>
											<td><strapi:domainTeamsLeadsLinksDomainTeamOrder /></td>
											<td><a href="../domainTeamsLeadsLinks/edit.jsp?ID=<strapi:domainTeamsLeadsLinksID />">edit</a></td>
											<td><a href="../domainTeamsLeadsLinks/delete.jsp?ID=<strapi:domainTeamsLeadsLinksID />">delete</a></td>
										</tr>
									</strapi:domainTeamsLeadsLinks>
								</strapi:foreachDomainTeamsLeadsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../domainTeamsLeadsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add DomainTeamsLeadsLinks</a>
						<br/><br/>

		<strapi:foreachDomainTeamsLeadsLinks var="idIter">
			<strapi:domainTeamsLeadsLinks>
						<a href="../../strapi/domainTeamsLeadsLinks/domainTeamsLeadsLinks.jsp?ID=<strapi:domainTeamsLeadsLinksID />"><strapi:domainTeamsLeadsLinksID /></a>
		<strapi:domainTeamsLeadsLinksDomainTeamId />
		<strapi:domainTeamsLeadsLinksBioId />
		<strapi:domainTeamsLeadsLinksBioOrder />
		<strapi:domainTeamsLeadsLinksDomainTeamOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:domainTeamsLeadsLinks>
			</strapi:foreachDomainTeamsLeadsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>