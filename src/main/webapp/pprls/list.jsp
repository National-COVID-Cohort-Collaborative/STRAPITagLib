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

						<h2>Pprls List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Subheader</th>
									<th>Start</th>
									<th>IntroHeader</th>
									<th>IntroBlock</th>
									<th>ParticipationHeader</th>
									<th>ParticipationBlock1</th>
									<th>ParticipationBlock2</th>
									<th>ParticipationBlock3</th>
									<th>ParticipationBlock4</th>
									<th>ParticipationBlock5</th>
									<th>GovernanceHeader</th>
									<th>GovernanceBlock1</th>
									<th>GovernanceBlock2</th>
									<th>GovernanceBlock3</th>
									<th>FaqHeader</th>
									<th>GlossaryHeader</th>
									<th>GlossaryBlock</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th>FaqBlock</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPprls var="idIter">
									<strapi:pprls>
										<tr>
											<td><a href="../pprls/show.jsp?ID=<strapi:pprlsID />"><strapi:pprlsID /></a></td>
											<td><strapi:pprlsHeader /></td>
											<td><strapi:pprlsSubheader /></td>
											<td><strapi:pprlsStart /></td>
											<td><strapi:pprlsIntroHeader /></td>
											<td><strapi:pprlsIntroBlock /></td>
											<td><strapi:pprlsParticipationHeader /></td>
											<td><strapi:pprlsParticipationBlock1 /></td>
											<td><strapi:pprlsParticipationBlock2 /></td>
											<td><strapi:pprlsParticipationBlock3 /></td>
											<td><strapi:pprlsParticipationBlock4 /></td>
											<td><strapi:pprlsParticipationBlock5 /></td>
											<td><strapi:pprlsGovernanceHeader /></td>
											<td><strapi:pprlsGovernanceBlock1 /></td>
											<td><strapi:pprlsGovernanceBlock2 /></td>
											<td><strapi:pprlsGovernanceBlock3 /></td>
											<td><strapi:pprlsFaqHeader /></td>
											<td><strapi:pprlsGlossaryHeader /></td>
											<td><strapi:pprlsGlossaryBlock /></td>
											<td><strapi:pprlsCreatedAt /></td>
											<td><strapi:pprlsUpdatedAt /></td>
											<td><strapi:pprlsPublishedAt /></td>
											<td><strapi:pprlsCreatedById /></td>
											<td><strapi:pprlsUpdatedById /></td>
											<td><strapi:pprlsFaqBlock /></td>
											<td><a href="../pprls/edit.jsp?ID=<strapi:pprlsID />">edit</a></td>
											<td><a href="../pprls/delete.jsp?ID=<strapi:pprlsID />">delete</a></td>
										</tr>
									</strapi:pprls>
								</strapi:foreachPprls>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../pprls/add.jsp">add Pprls</a>
						<br/><br/>

		<strapi:foreachPprls var="idIter">
			<strapi:pprls>
						<a href="../../strapi/pprls/pprls.jsp?ID=<strapi:pprlsID />"><strapi:pprlsID /></a>
		<strapi:pprlsHeader />
		<strapi:pprlsSubheader />
		<strapi:pprlsStart />
		<strapi:pprlsIntroHeader />
		<strapi:pprlsIntroBlock />
		<strapi:pprlsParticipationHeader />
		<strapi:pprlsParticipationBlock1 />
		<strapi:pprlsParticipationBlock2 />
		<strapi:pprlsParticipationBlock3 />
		<strapi:pprlsParticipationBlock4 />
		<strapi:pprlsParticipationBlock5 />
		<strapi:pprlsGovernanceHeader />
		<strapi:pprlsGovernanceBlock1 />
		<strapi:pprlsGovernanceBlock2 />
		<strapi:pprlsGovernanceBlock3 />
		<strapi:pprlsFaqHeader />
		<strapi:pprlsGlossaryHeader />
		<strapi:pprlsGlossaryBlock />
		<strapi:pprlsCreatedAt />
		<strapi:pprlsUpdatedAt />
		<strapi:pprlsPublishedAt />
		<strapi:pprlsCreatedById />
		<strapi:pprlsUpdatedById />
		<strapi:pprlsFaqBlock />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:pprls>
			</strapi:foreachPprls>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>