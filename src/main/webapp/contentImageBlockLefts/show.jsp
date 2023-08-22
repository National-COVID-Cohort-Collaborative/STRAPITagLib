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
<fmt:parseNumber var="ID" value="${param.ID}" />
<strapi:contentImageBlockLefts ID="${ID}">
	<h2>ContentImageBlockLefts: <strapi:contentImageBlockLeftsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Content</th>
			<th>Header</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			<th>Url</th>
			<th>UrlLabel</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:contentImageBlockLeftsID />"><strapi:contentImageBlockLeftsID /></a></td>
				<td><strapi:contentImageBlockLeftsContent /></td>
				<td><strapi:contentImageBlockLeftsHeader /></td>
				<td><strapi:contentImageBlockLeftsCreatedAt /></td>
				<td><strapi:contentImageBlockLeftsUpdatedAt /></td>
				<td><strapi:contentImageBlockLeftsPublishedAt /></td>
				<td><strapi:contentImageBlockLeftsCreatedById /></td>
				<td><strapi:contentImageBlockLeftsUpdatedById /></td>
				<td><strapi:contentImageBlockLeftsUrl /></td>
				<td><strapi:contentImageBlockLeftsUrlLabel /></td>
			</tr>
		</table>

						<h2>EnclaveEssentialsDescriptionLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>EnclaveEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachEnclaveEssentialsDescriptionLinks var="idIter">
									<strapi:enclaveEssentialsDescriptionLinks>
										<tr>
											<td><a href="../enclaveEssentialsDescriptionLinks/show.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />"><strapi:enclaveEssentialsDescriptionLinksID /></a></td>
											<td><strapi:enclaveEssentialsDescriptionLinksEnclaveEssentialId /></td>
											<td><strapi:enclaveEssentialsDescriptionLinksContentImageBlockLeftId /></td>
											<td><a href="../enclaveEssentialsDescriptionLinks/edit.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />">edit</a></td>
											<td><a href="../enclaveEssentialsDescriptionLinks/delete.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />">delete</a></td>
										</tr>
									</strapi:enclaveEssentialsDescriptionLinks>
								</strapi:foreachEnclaveEssentialsDescriptionLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../enclaveEssentialsDescriptionLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add EnclaveEssentialsDescriptionLinks</a>
						<br/><br/>

		<strapi:foreachEnclaveEssentialsDescriptionLinks var="idIter">
			<strapi:enclaveEssentialsDescriptionLinks>
						<a href="../../strapi/enclaveEssentialsDescriptionLinks/enclaveEssentialsDescriptionLinks.jsp?ID=<strapi:enclaveEssentialsDescriptionLinksID />"><strapi:enclaveEssentialsDescriptionLinksID /></a>
		<strapi:enclaveEssentialsDescriptionLinksEnclaveEssentialId />
		<strapi:enclaveEssentialsDescriptionLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:enclaveEssentialsDescriptionLinks>
			</strapi:foreachEnclaveEssentialsDescriptionLinks>

						<h2>EnclaveEssentialsNavTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>EnclaveEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th>ContentImageBlockLeftOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachEnclaveEssentialsNavTilesLinks var="idIter">
									<strapi:enclaveEssentialsNavTilesLinks>
										<tr>
											<td><a href="../enclaveEssentialsNavTilesLinks/show.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />"><strapi:enclaveEssentialsNavTilesLinksID /></a></td>
											<td><strapi:enclaveEssentialsNavTilesLinksEnclaveEssentialId /></td>
											<td><strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftId /></td>
											<td><strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftOrder /></td>
											<td><a href="../enclaveEssentialsNavTilesLinks/edit.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />">edit</a></td>
											<td><a href="../enclaveEssentialsNavTilesLinks/delete.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />">delete</a></td>
										</tr>
									</strapi:enclaveEssentialsNavTilesLinks>
								</strapi:foreachEnclaveEssentialsNavTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../enclaveEssentialsNavTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add EnclaveEssentialsNavTilesLinks</a>
						<br/><br/>

		<strapi:foreachEnclaveEssentialsNavTilesLinks var="idIter">
			<strapi:enclaveEssentialsNavTilesLinks>
						<a href="../../strapi/enclaveEssentialsNavTilesLinks/enclaveEssentialsNavTilesLinks.jsp?ID=<strapi:enclaveEssentialsNavTilesLinksID />"><strapi:enclaveEssentialsNavTilesLinksID /></a>
		<strapi:enclaveEssentialsNavTilesLinksEnclaveEssentialId />
		<strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftId />
		<strapi:enclaveEssentialsNavTilesLinksContentImageBlockLeftOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:enclaveEssentialsNavTilesLinks>
			</strapi:foreachEnclaveEssentialsNavTilesLinks>

						<h2>EnclaveEssentialsUserTilesLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>EnclaveEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th>ContentImageBlockLeftOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachEnclaveEssentialsUserTilesLinks var="idIter">
									<strapi:enclaveEssentialsUserTilesLinks>
										<tr>
											<td><a href="../enclaveEssentialsUserTilesLinks/show.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />"><strapi:enclaveEssentialsUserTilesLinksID /></a></td>
											<td><strapi:enclaveEssentialsUserTilesLinksEnclaveEssentialId /></td>
											<td><strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftId /></td>
											<td><strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftOrder /></td>
											<td><a href="../enclaveEssentialsUserTilesLinks/edit.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />">edit</a></td>
											<td><a href="../enclaveEssentialsUserTilesLinks/delete.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />">delete</a></td>
										</tr>
									</strapi:enclaveEssentialsUserTilesLinks>
								</strapi:foreachEnclaveEssentialsUserTilesLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../enclaveEssentialsUserTilesLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add EnclaveEssentialsUserTilesLinks</a>
						<br/><br/>

		<strapi:foreachEnclaveEssentialsUserTilesLinks var="idIter">
			<strapi:enclaveEssentialsUserTilesLinks>
						<a href="../../strapi/enclaveEssentialsUserTilesLinks/enclaveEssentialsUserTilesLinks.jsp?ID=<strapi:enclaveEssentialsUserTilesLinksID />"><strapi:enclaveEssentialsUserTilesLinksID /></a>
		<strapi:enclaveEssentialsUserTilesLinksEnclaveEssentialId />
		<strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftId />
		<strapi:enclaveEssentialsUserTilesLinksContentImageBlockLeftOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:enclaveEssentialsUserTilesLinks>
			</strapi:foreachEnclaveEssentialsUserTilesLinks>

						<h2>ExternalDatasetsDescriptionLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ExternalDatasetId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachExternalDatasetsDescriptionLinks var="idIter">
									<strapi:externalDatasetsDescriptionLinks>
										<tr>
											<td><a href="../externalDatasetsDescriptionLinks/show.jsp?ID=<strapi:externalDatasetsDescriptionLinksID />"><strapi:externalDatasetsDescriptionLinksID /></a></td>
											<td><strapi:externalDatasetsDescriptionLinksExternalDatasetId /></td>
											<td><strapi:externalDatasetsDescriptionLinksContentImageBlockLeftId /></td>
											<td><a href="../externalDatasetsDescriptionLinks/edit.jsp?ID=<strapi:externalDatasetsDescriptionLinksID />">edit</a></td>
											<td><a href="../externalDatasetsDescriptionLinks/delete.jsp?ID=<strapi:externalDatasetsDescriptionLinksID />">delete</a></td>
										</tr>
									</strapi:externalDatasetsDescriptionLinks>
								</strapi:foreachExternalDatasetsDescriptionLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../externalDatasetsDescriptionLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ExternalDatasetsDescriptionLinks</a>
						<br/><br/>

		<strapi:foreachExternalDatasetsDescriptionLinks var="idIter">
			<strapi:externalDatasetsDescriptionLinks>
						<a href="../../strapi/externalDatasetsDescriptionLinks/externalDatasetsDescriptionLinks.jsp?ID=<strapi:externalDatasetsDescriptionLinksID />"><strapi:externalDatasetsDescriptionLinksID /></a>
		<strapi:externalDatasetsDescriptionLinksExternalDatasetId />
		<strapi:externalDatasetsDescriptionLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:externalDatasetsDescriptionLinks>
			</strapi:foreachExternalDatasetsDescriptionLinks>

						<h2>ExternalDatasetsSupportLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ExternalDatasetId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachExternalDatasetsSupportLinks var="idIter">
									<strapi:externalDatasetsSupportLinks>
										<tr>
											<td><a href="../externalDatasetsSupportLinks/show.jsp?ID=<strapi:externalDatasetsSupportLinksID />"><strapi:externalDatasetsSupportLinksID /></a></td>
											<td><strapi:externalDatasetsSupportLinksExternalDatasetId /></td>
											<td><strapi:externalDatasetsSupportLinksContentImageBlockLeftId /></td>
											<td><a href="../externalDatasetsSupportLinks/edit.jsp?ID=<strapi:externalDatasetsSupportLinksID />">edit</a></td>
											<td><a href="../externalDatasetsSupportLinks/delete.jsp?ID=<strapi:externalDatasetsSupportLinksID />">delete</a></td>
										</tr>
									</strapi:externalDatasetsSupportLinks>
								</strapi:foreachExternalDatasetsSupportLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../externalDatasetsSupportLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ExternalDatasetsSupportLinks</a>
						<br/><br/>

		<strapi:foreachExternalDatasetsSupportLinks var="idIter">
			<strapi:externalDatasetsSupportLinks>
						<a href="../../strapi/externalDatasetsSupportLinks/externalDatasetsSupportLinks.jsp?ID=<strapi:externalDatasetsSupportLinksID />"><strapi:externalDatasetsSupportLinksID /></a>
		<strapi:externalDatasetsSupportLinksExternalDatasetId />
		<strapi:externalDatasetsSupportLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:externalDatasetsSupportLinks>
			</strapi:foreachExternalDatasetsSupportLinks>

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

						<h2>PublicationReviewsIntroBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>PublicationReviewId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachPublicationReviewsIntroBlockLinks var="idIter">
									<strapi:publicationReviewsIntroBlockLinks>
										<tr>
											<td><a href="../publicationReviewsIntroBlockLinks/show.jsp?ID=<strapi:publicationReviewsIntroBlockLinksID />"><strapi:publicationReviewsIntroBlockLinksID /></a></td>
											<td><strapi:publicationReviewsIntroBlockLinksPublicationReviewId /></td>
											<td><strapi:publicationReviewsIntroBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../publicationReviewsIntroBlockLinks/edit.jsp?ID=<strapi:publicationReviewsIntroBlockLinksID />">edit</a></td>
											<td><a href="../publicationReviewsIntroBlockLinks/delete.jsp?ID=<strapi:publicationReviewsIntroBlockLinksID />">delete</a></td>
										</tr>
									</strapi:publicationReviewsIntroBlockLinks>
								</strapi:foreachPublicationReviewsIntroBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../publicationReviewsIntroBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add PublicationReviewsIntroBlockLinks</a>
						<br/><br/>

		<strapi:foreachPublicationReviewsIntroBlockLinks var="idIter">
			<strapi:publicationReviewsIntroBlockLinks>
						<a href="../../strapi/publicationReviewsIntroBlockLinks/publicationReviewsIntroBlockLinks.jsp?ID=<strapi:publicationReviewsIntroBlockLinksID />"><strapi:publicationReviewsIntroBlockLinksID /></a>
		<strapi:publicationReviewsIntroBlockLinksPublicationReviewId />
		<strapi:publicationReviewsIntroBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:publicationReviewsIntroBlockLinks>
			</strapi:foreachPublicationReviewsIntroBlockLinks>

						<h2>ResearcherEssentialsDomainBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsDomainBlockLinks var="idIter">
									<strapi:researcherEssentialsDomainBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsDomainBlockLinks/show.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />"><strapi:researcherEssentialsDomainBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsDomainBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsDomainBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../researcherEssentialsDomainBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsDomainBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsDomainBlockLinks>
								</strapi:foreachResearcherEssentialsDomainBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsDomainBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsDomainBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsDomainBlockLinks var="idIter">
			<strapi:researcherEssentialsDomainBlockLinks>
						<a href="../../strapi/researcherEssentialsDomainBlockLinks/researcherEssentialsDomainBlockLinks.jsp?ID=<strapi:researcherEssentialsDomainBlockLinksID />"><strapi:researcherEssentialsDomainBlockLinksID /></a>
		<strapi:researcherEssentialsDomainBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsDomainBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsDomainBlockLinks>
			</strapi:foreachResearcherEssentialsDomainBlockLinks>

						<h2>ResearcherEssentialsJoinBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsJoinBlockLinks var="idIter">
									<strapi:researcherEssentialsJoinBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsJoinBlockLinks/show.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />"><strapi:researcherEssentialsJoinBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsJoinBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsJoinBlockLinksContentImageBlockLeftId /></td>
											<td><a href="../researcherEssentialsJoinBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsJoinBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsJoinBlockLinks>
								</strapi:foreachResearcherEssentialsJoinBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsJoinBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsJoinBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsJoinBlockLinks var="idIter">
			<strapi:researcherEssentialsJoinBlockLinks>
						<a href="../../strapi/researcherEssentialsJoinBlockLinks/researcherEssentialsJoinBlockLinks.jsp?ID=<strapi:researcherEssentialsJoinBlockLinksID />"><strapi:researcherEssentialsJoinBlockLinksID /></a>
		<strapi:researcherEssentialsJoinBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsJoinBlockLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsJoinBlockLinks>
			</strapi:foreachResearcherEssentialsJoinBlockLinks>

						<h2>ToolsDescriptionLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ToolId</th>
									<th>ContentImageBlockLeftId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachToolsDescriptionLinks var="idIter">
									<strapi:toolsDescriptionLinks>
										<tr>
											<td><a href="../toolsDescriptionLinks/show.jsp?ID=<strapi:toolsDescriptionLinksID />"><strapi:toolsDescriptionLinksID /></a></td>
											<td><strapi:toolsDescriptionLinksToolId /></td>
											<td><strapi:toolsDescriptionLinksContentImageBlockLeftId /></td>
											<td><a href="../toolsDescriptionLinks/edit.jsp?ID=<strapi:toolsDescriptionLinksID />">edit</a></td>
											<td><a href="../toolsDescriptionLinks/delete.jsp?ID=<strapi:toolsDescriptionLinksID />">delete</a></td>
										</tr>
									</strapi:toolsDescriptionLinks>
								</strapi:foreachToolsDescriptionLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../toolsDescriptionLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ToolsDescriptionLinks</a>
						<br/><br/>

		<strapi:foreachToolsDescriptionLinks var="idIter">
			<strapi:toolsDescriptionLinks>
						<a href="../../strapi/toolsDescriptionLinks/toolsDescriptionLinks.jsp?ID=<strapi:toolsDescriptionLinksID />"><strapi:toolsDescriptionLinksID /></a>
		<strapi:toolsDescriptionLinksToolId />
		<strapi:toolsDescriptionLinksContentImageBlockLeftId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:toolsDescriptionLinks>
			</strapi:foreachToolsDescriptionLinks>
</strapi:contentImageBlockLefts>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>