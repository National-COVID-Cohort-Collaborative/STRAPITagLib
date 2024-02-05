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
<strapi:contentImageBlockRights ID="${ID}">
	<h2>ContentImageBlockRights: <strapi:contentImageBlockRightsID /></h2>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>Header</th>
			<th>Content</th>
			<th>CreatedAt</th>
			<th>UpdatedAt</th>
			<th>PublishedAt</th>
			<th>CreatedById</th>
			<th>UpdatedById</th>
			<th>Url</th>
			<th>UrlLabel</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:contentImageBlockRightsID />"><strapi:contentImageBlockRightsID /></a></td>
				<td><strapi:contentImageBlockRightsHeader /></td>
				<td><strapi:contentImageBlockRightsContent /></td>
				<td><strapi:contentImageBlockRightsCreatedAt /></td>
				<td><strapi:contentImageBlockRightsUpdatedAt /></td>
				<td><strapi:contentImageBlockRightsPublishedAt /></td>
				<td><strapi:contentImageBlockRightsCreatedById /></td>
				<td><strapi:contentImageBlockRightsUpdatedById /></td>
				<td><strapi:contentImageBlockRightsUrl /></td>
				<td><strapi:contentImageBlockRightsUrlLabel /></td>
			</tr>
		</table>

						<h2>AccountCreationsInstructionsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>AccountCreationId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachAccountCreationsInstructionsLinks var="idIter">
									<strapi:accountCreationsInstructionsLinks>
										<tr>
											<td><a href="../accountCreationsInstructionsLinks/show.jsp?ID=<strapi:accountCreationsInstructionsLinksID />"><strapi:accountCreationsInstructionsLinksID /></a></td>
											<td><strapi:accountCreationsInstructionsLinksAccountCreationId /></td>
											<td><strapi:accountCreationsInstructionsLinksContentImageBlockRightId /></td>
											<td><strapi:accountCreationsInstructionsLinksContentImageBlockRightOrder /></td>
											<td><a href="../accountCreationsInstructionsLinks/edit.jsp?ID=<strapi:accountCreationsInstructionsLinksID />">edit</a></td>
											<td><a href="../accountCreationsInstructionsLinks/delete.jsp?ID=<strapi:accountCreationsInstructionsLinksID />">delete</a></td>
										</tr>
									</strapi:accountCreationsInstructionsLinks>
								</strapi:foreachAccountCreationsInstructionsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../accountCreationsInstructionsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add AccountCreationsInstructionsLinks</a>
						<br/><br/>

		<strapi:foreachAccountCreationsInstructionsLinks var="idIter">
			<strapi:accountCreationsInstructionsLinks>
						<a href="../../strapi/accountCreationsInstructionsLinks/accountCreationsInstructionsLinks.jsp?ID=<strapi:accountCreationsInstructionsLinksID />"><strapi:accountCreationsInstructionsLinksID /></a>
		<strapi:accountCreationsInstructionsLinksAccountCreationId />
		<strapi:accountCreationsInstructionsLinksContentImageBlockRightId />
		<strapi:accountCreationsInstructionsLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:accountCreationsInstructionsLinks>
			</strapi:foreachAccountCreationsInstructionsLinks>

						<h2>AccountCreationsIntroLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>AccountCreationId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachAccountCreationsIntroLinks var="idIter">
									<strapi:accountCreationsIntroLinks>
										<tr>
											<td><a href="../accountCreationsIntroLinks/show.jsp?ID=<strapi:accountCreationsIntroLinksID />"><strapi:accountCreationsIntroLinksID /></a></td>
											<td><strapi:accountCreationsIntroLinksAccountCreationId /></td>
											<td><strapi:accountCreationsIntroLinksContentImageBlockRightId /></td>
											<td><a href="../accountCreationsIntroLinks/edit.jsp?ID=<strapi:accountCreationsIntroLinksID />">edit</a></td>
											<td><a href="../accountCreationsIntroLinks/delete.jsp?ID=<strapi:accountCreationsIntroLinksID />">delete</a></td>
										</tr>
									</strapi:accountCreationsIntroLinks>
								</strapi:foreachAccountCreationsIntroLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../accountCreationsIntroLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add AccountCreationsIntroLinks</a>
						<br/><br/>

		<strapi:foreachAccountCreationsIntroLinks var="idIter">
			<strapi:accountCreationsIntroLinks>
						<a href="../../strapi/accountCreationsIntroLinks/accountCreationsIntroLinks.jsp?ID=<strapi:accountCreationsIntroLinksID />"><strapi:accountCreationsIntroLinksID /></a>
		<strapi:accountCreationsIntroLinksAccountCreationId />
		<strapi:accountCreationsIntroLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:accountCreationsIntroLinks>
			</strapi:foreachAccountCreationsIntroLinks>

						<h2>AcknowledgementsContentImageBlockRightsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>AcknowledgementId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachAcknowledgementsContentImageBlockRightsLinks var="idIter">
									<strapi:acknowledgementsContentImageBlockRightsLinks>
										<tr>
											<td><a href="../acknowledgementsContentImageBlockRightsLinks/show.jsp?ID=<strapi:acknowledgementsContentImageBlockRightsLinksID />"><strapi:acknowledgementsContentImageBlockRightsLinksID /></a></td>
											<td><strapi:acknowledgementsContentImageBlockRightsLinksAcknowledgementId /></td>
											<td><strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightId /></td>
											<td><strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightOrder /></td>
											<td><a href="../acknowledgementsContentImageBlockRightsLinks/edit.jsp?ID=<strapi:acknowledgementsContentImageBlockRightsLinksID />">edit</a></td>
											<td><a href="../acknowledgementsContentImageBlockRightsLinks/delete.jsp?ID=<strapi:acknowledgementsContentImageBlockRightsLinksID />">delete</a></td>
										</tr>
									</strapi:acknowledgementsContentImageBlockRightsLinks>
								</strapi:foreachAcknowledgementsContentImageBlockRightsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../acknowledgementsContentImageBlockRightsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add AcknowledgementsContentImageBlockRightsLinks</a>
						<br/><br/>

		<strapi:foreachAcknowledgementsContentImageBlockRightsLinks var="idIter">
			<strapi:acknowledgementsContentImageBlockRightsLinks>
						<a href="../../strapi/acknowledgementsContentImageBlockRightsLinks/acknowledgementsContentImageBlockRightsLinks.jsp?ID=<strapi:acknowledgementsContentImageBlockRightsLinksID />"><strapi:acknowledgementsContentImageBlockRightsLinksID /></a>
		<strapi:acknowledgementsContentImageBlockRightsLinksAcknowledgementId />
		<strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightId />
		<strapi:acknowledgementsContentImageBlockRightsLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:acknowledgementsContentImageBlockRightsLinks>
			</strapi:foreachAcknowledgementsContentImageBlockRightsLinks>

						<h2>CommunicationMaterialsContentImageBlockRightsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>CommunicationMaterialId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachCommunicationMaterialsContentImageBlockRightsLinks var="idIter">
									<strapi:communicationMaterialsContentImageBlockRightsLinks>
										<tr>
											<td><a href="../communicationMaterialsContentImageBlockRightsLinks/show.jsp?ID=<strapi:communicationMaterialsContentImageBlockRightsLinksID />"><strapi:communicationMaterialsContentImageBlockRightsLinksID /></a></td>
											<td><strapi:communicationMaterialsContentImageBlockRightsLinksCommunicationMaterialId /></td>
											<td><strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightId /></td>
											<td><strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightOrder /></td>
											<td><a href="../communicationMaterialsContentImageBlockRightsLinks/edit.jsp?ID=<strapi:communicationMaterialsContentImageBlockRightsLinksID />">edit</a></td>
											<td><a href="../communicationMaterialsContentImageBlockRightsLinks/delete.jsp?ID=<strapi:communicationMaterialsContentImageBlockRightsLinksID />">delete</a></td>
										</tr>
									</strapi:communicationMaterialsContentImageBlockRightsLinks>
								</strapi:foreachCommunicationMaterialsContentImageBlockRightsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../communicationMaterialsContentImageBlockRightsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add CommunicationMaterialsContentImageBlockRightsLinks</a>
						<br/><br/>

		<strapi:foreachCommunicationMaterialsContentImageBlockRightsLinks var="idIter">
			<strapi:communicationMaterialsContentImageBlockRightsLinks>
						<a href="../../strapi/communicationMaterialsContentImageBlockRightsLinks/communicationMaterialsContentImageBlockRightsLinks.jsp?ID=<strapi:communicationMaterialsContentImageBlockRightsLinksID />"><strapi:communicationMaterialsContentImageBlockRightsLinksID /></a>
		<strapi:communicationMaterialsContentImageBlockRightsLinksCommunicationMaterialId />
		<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightId />
		<strapi:communicationMaterialsContentImageBlockRightsLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:communicationMaterialsContentImageBlockRightsLinks>
			</strapi:foreachCommunicationMaterialsContentImageBlockRightsLinks>

						<h2>ExternalDatasetsIngestionLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ExternalDatasetId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachExternalDatasetsIngestionLinks var="idIter">
									<strapi:externalDatasetsIngestionLinks>
										<tr>
											<td><a href="../externalDatasetsIngestionLinks/show.jsp?ID=<strapi:externalDatasetsIngestionLinksID />"><strapi:externalDatasetsIngestionLinksID /></a></td>
											<td><strapi:externalDatasetsIngestionLinksExternalDatasetId /></td>
											<td><strapi:externalDatasetsIngestionLinksContentImageBlockRightId /></td>
											<td><a href="../externalDatasetsIngestionLinks/edit.jsp?ID=<strapi:externalDatasetsIngestionLinksID />">edit</a></td>
											<td><a href="../externalDatasetsIngestionLinks/delete.jsp?ID=<strapi:externalDatasetsIngestionLinksID />">delete</a></td>
										</tr>
									</strapi:externalDatasetsIngestionLinks>
								</strapi:foreachExternalDatasetsIngestionLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../externalDatasetsIngestionLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ExternalDatasetsIngestionLinks</a>
						<br/><br/>

		<strapi:foreachExternalDatasetsIngestionLinks var="idIter">
			<strapi:externalDatasetsIngestionLinks>
						<a href="../../strapi/externalDatasetsIngestionLinks/externalDatasetsIngestionLinks.jsp?ID=<strapi:externalDatasetsIngestionLinksID />"><strapi:externalDatasetsIngestionLinksID /></a>
		<strapi:externalDatasetsIngestionLinksExternalDatasetId />
		<strapi:externalDatasetsIngestionLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:externalDatasetsIngestionLinks>
			</strapi:foreachExternalDatasetsIngestionLinks>

						<h2>FormsContentImageBlockRightsLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>FormId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachFormsContentImageBlockRightsLinks var="idIter">
									<strapi:formsContentImageBlockRightsLinks>
										<tr>
											<td><a href="../formsContentImageBlockRightsLinks/show.jsp?ID=<strapi:formsContentImageBlockRightsLinksID />"><strapi:formsContentImageBlockRightsLinksID /></a></td>
											<td><strapi:formsContentImageBlockRightsLinksFormId /></td>
											<td><strapi:formsContentImageBlockRightsLinksContentImageBlockRightId /></td>
											<td><strapi:formsContentImageBlockRightsLinksContentImageBlockRightOrder /></td>
											<td><a href="../formsContentImageBlockRightsLinks/edit.jsp?ID=<strapi:formsContentImageBlockRightsLinksID />">edit</a></td>
											<td><a href="../formsContentImageBlockRightsLinks/delete.jsp?ID=<strapi:formsContentImageBlockRightsLinksID />">delete</a></td>
										</tr>
									</strapi:formsContentImageBlockRightsLinks>
								</strapi:foreachFormsContentImageBlockRightsLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../formsContentImageBlockRightsLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add FormsContentImageBlockRightsLinks</a>
						<br/><br/>

		<strapi:foreachFormsContentImageBlockRightsLinks var="idIter">
			<strapi:formsContentImageBlockRightsLinks>
						<a href="../../strapi/formsContentImageBlockRightsLinks/formsContentImageBlockRightsLinks.jsp?ID=<strapi:formsContentImageBlockRightsLinksID />"><strapi:formsContentImageBlockRightsLinksID /></a>
		<strapi:formsContentImageBlockRightsLinksFormId />
		<strapi:formsContentImageBlockRightsLinksContentImageBlockRightId />
		<strapi:formsContentImageBlockRightsLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:formsContentImageBlockRightsLinks>
			</strapi:foreachFormsContentImageBlockRightsLinks>

						<h2>InstitutionalEssentialsStepLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>InstitutionalEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachInstitutionalEssentialsStepLinks var="idIter">
									<strapi:institutionalEssentialsStepLinks>
										<tr>
											<td><a href="../institutionalEssentialsStepLinks/show.jsp?ID=<strapi:institutionalEssentialsStepLinksID />"><strapi:institutionalEssentialsStepLinksID /></a></td>
											<td><strapi:institutionalEssentialsStepLinksInstitutionalEssentialId /></td>
											<td><strapi:institutionalEssentialsStepLinksContentImageBlockRightId /></td>
											<td><strapi:institutionalEssentialsStepLinksContentImageBlockRightOrder /></td>
											<td><a href="../institutionalEssentialsStepLinks/edit.jsp?ID=<strapi:institutionalEssentialsStepLinksID />">edit</a></td>
											<td><a href="../institutionalEssentialsStepLinks/delete.jsp?ID=<strapi:institutionalEssentialsStepLinksID />">delete</a></td>
										</tr>
									</strapi:institutionalEssentialsStepLinks>
								</strapi:foreachInstitutionalEssentialsStepLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../institutionalEssentialsStepLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add InstitutionalEssentialsStepLinks</a>
						<br/><br/>

		<strapi:foreachInstitutionalEssentialsStepLinks var="idIter">
			<strapi:institutionalEssentialsStepLinks>
						<a href="../../strapi/institutionalEssentialsStepLinks/institutionalEssentialsStepLinks.jsp?ID=<strapi:institutionalEssentialsStepLinksID />"><strapi:institutionalEssentialsStepLinksID /></a>
		<strapi:institutionalEssentialsStepLinksInstitutionalEssentialId />
		<strapi:institutionalEssentialsStepLinksContentImageBlockRightId />
		<strapi:institutionalEssentialsStepLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:institutionalEssentialsStepLinks>
			</strapi:foreachInstitutionalEssentialsStepLinks>

						<h2>OnboardingsStepLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>OnboardingId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachOnboardingsStepLinks var="idIter">
									<strapi:onboardingsStepLinks>
										<tr>
											<td><a href="../onboardingsStepLinks/show.jsp?ID=<strapi:onboardingsStepLinksID />"><strapi:onboardingsStepLinksID /></a></td>
											<td><strapi:onboardingsStepLinksOnboardingId /></td>
											<td><strapi:onboardingsStepLinksContentImageBlockRightId /></td>
											<td><strapi:onboardingsStepLinksContentImageBlockRightOrder /></td>
											<td><a href="../onboardingsStepLinks/edit.jsp?ID=<strapi:onboardingsStepLinksID />">edit</a></td>
											<td><a href="../onboardingsStepLinks/delete.jsp?ID=<strapi:onboardingsStepLinksID />">delete</a></td>
										</tr>
									</strapi:onboardingsStepLinks>
								</strapi:foreachOnboardingsStepLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../onboardingsStepLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add OnboardingsStepLinks</a>
						<br/><br/>

		<strapi:foreachOnboardingsStepLinks var="idIter">
			<strapi:onboardingsStepLinks>
						<a href="../../strapi/onboardingsStepLinks/onboardingsStepLinks.jsp?ID=<strapi:onboardingsStepLinksID />"><strapi:onboardingsStepLinksID /></a>
		<strapi:onboardingsStepLinksOnboardingId />
		<strapi:onboardingsStepLinksContentImageBlockRightId />
		<strapi:onboardingsStepLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:onboardingsStepLinks>
			</strapi:foreachOnboardingsStepLinks>

						<h2>ResearcherEssentialsAccessBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsAccessBlockLinks var="idIter">
									<strapi:researcherEssentialsAccessBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsAccessBlockLinks/show.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />"><strapi:researcherEssentialsAccessBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsAccessBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsAccessBlockLinksContentImageBlockRightId /></td>
											<td><a href="../researcherEssentialsAccessBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsAccessBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsAccessBlockLinks>
								</strapi:foreachResearcherEssentialsAccessBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsAccessBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsAccessBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsAccessBlockLinks var="idIter">
			<strapi:researcherEssentialsAccessBlockLinks>
						<a href="../../strapi/researcherEssentialsAccessBlockLinks/researcherEssentialsAccessBlockLinks.jsp?ID=<strapi:researcherEssentialsAccessBlockLinksID />"><strapi:researcherEssentialsAccessBlockLinksID /></a>
		<strapi:researcherEssentialsAccessBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsAccessBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsAccessBlockLinks>
			</strapi:foreachResearcherEssentialsAccessBlockLinks>

						<h2>ResearcherEssentialsGovernanceBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ResearcherEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachResearcherEssentialsGovernanceBlockLinks var="idIter">
									<strapi:researcherEssentialsGovernanceBlockLinks>
										<tr>
											<td><a href="../researcherEssentialsGovernanceBlockLinks/show.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />"><strapi:researcherEssentialsGovernanceBlockLinksID /></a></td>
											<td><strapi:researcherEssentialsGovernanceBlockLinksResearcherEssentialId /></td>
											<td><strapi:researcherEssentialsGovernanceBlockLinksContentImageBlockRightId /></td>
											<td><a href="../researcherEssentialsGovernanceBlockLinks/edit.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />">edit</a></td>
											<td><a href="../researcherEssentialsGovernanceBlockLinks/delete.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />">delete</a></td>
										</tr>
									</strapi:researcherEssentialsGovernanceBlockLinks>
								</strapi:foreachResearcherEssentialsGovernanceBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../researcherEssentialsGovernanceBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ResearcherEssentialsGovernanceBlockLinks</a>
						<br/><br/>

		<strapi:foreachResearcherEssentialsGovernanceBlockLinks var="idIter">
			<strapi:researcherEssentialsGovernanceBlockLinks>
						<a href="../../strapi/researcherEssentialsGovernanceBlockLinks/researcherEssentialsGovernanceBlockLinks.jsp?ID=<strapi:researcherEssentialsGovernanceBlockLinksID />"><strapi:researcherEssentialsGovernanceBlockLinksID /></a>
		<strapi:researcherEssentialsGovernanceBlockLinksResearcherEssentialId />
		<strapi:researcherEssentialsGovernanceBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:researcherEssentialsGovernanceBlockLinks>
			</strapi:foreachResearcherEssentialsGovernanceBlockLinks>

						<h2>TenantInstitutionalEssentialsStepLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantInstitutionalEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantInstitutionalEssentialsStepLinks var="idIter">
									<strapi:tenantInstitutionalEssentialsStepLinks>
										<tr>
											<td><a href="../tenantInstitutionalEssentialsStepLinks/show.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />"><strapi:tenantInstitutionalEssentialsStepLinksID /></a></td>
											<td><strapi:tenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId /></td>
											<td><strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightId /></td>
											<td><strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightOrder /></td>
											<td><a href="../tenantInstitutionalEssentialsStepLinks/edit.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />">edit</a></td>
											<td><a href="../tenantInstitutionalEssentialsStepLinks/delete.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />">delete</a></td>
										</tr>
									</strapi:tenantInstitutionalEssentialsStepLinks>
								</strapi:foreachTenantInstitutionalEssentialsStepLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantInstitutionalEssentialsStepLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantInstitutionalEssentialsStepLinks</a>
						<br/><br/>

		<strapi:foreachTenantInstitutionalEssentialsStepLinks var="idIter">
			<strapi:tenantInstitutionalEssentialsStepLinks>
						<a href="../../strapi/tenantInstitutionalEssentialsStepLinks/tenantInstitutionalEssentialsStepLinks.jsp?ID=<strapi:tenantInstitutionalEssentialsStepLinksID />"><strapi:tenantInstitutionalEssentialsStepLinksID /></a>
		<strapi:tenantInstitutionalEssentialsStepLinksTenantInstitutionalEssentialId />
		<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightId />
		<strapi:tenantInstitutionalEssentialsStepLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantInstitutionalEssentialsStepLinks>
			</strapi:foreachTenantInstitutionalEssentialsStepLinks>

						<h2>TenantResearcherEssentialsAccessBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantResearcherEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantResearcherEssentialsAccessBlockLinks var="idIter">
									<strapi:tenantResearcherEssentialsAccessBlockLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsAccessBlockLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />"><strapi:tenantResearcherEssentialsAccessBlockLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsAccessBlockLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsAccessBlockLinksContentImageBlockRightId /></td>
											<td><a href="../tenantResearcherEssentialsAccessBlockLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsAccessBlockLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsAccessBlockLinks>
								</strapi:foreachTenantResearcherEssentialsAccessBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsAccessBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsAccessBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsAccessBlockLinks var="idIter">
			<strapi:tenantResearcherEssentialsAccessBlockLinks>
						<a href="../../strapi/tenantResearcherEssentialsAccessBlockLinks/tenantResearcherEssentialsAccessBlockLinks.jsp?ID=<strapi:tenantResearcherEssentialsAccessBlockLinksID />"><strapi:tenantResearcherEssentialsAccessBlockLinksID /></a>
		<strapi:tenantResearcherEssentialsAccessBlockLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsAccessBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsAccessBlockLinks>
			</strapi:foreachTenantResearcherEssentialsAccessBlockLinks>

						<h2>TenantResearcherEssentialsGovernanceBlockLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>TenantResearcherEssentialId</th>
									<th>ContentImageBlockRightId</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks var="idIter">
									<strapi:tenantResearcherEssentialsGovernanceBlockLinks>
										<tr>
											<td><a href="../tenantResearcherEssentialsGovernanceBlockLinks/show.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />"><strapi:tenantResearcherEssentialsGovernanceBlockLinksID /></a></td>
											<td><strapi:tenantResearcherEssentialsGovernanceBlockLinksTenantResearcherEssentialId /></td>
											<td><strapi:tenantResearcherEssentialsGovernanceBlockLinksContentImageBlockRightId /></td>
											<td><a href="../tenantResearcherEssentialsGovernanceBlockLinks/edit.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />">edit</a></td>
											<td><a href="../tenantResearcherEssentialsGovernanceBlockLinks/delete.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />">delete</a></td>
										</tr>
									</strapi:tenantResearcherEssentialsGovernanceBlockLinks>
								</strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../tenantResearcherEssentialsGovernanceBlockLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add TenantResearcherEssentialsGovernanceBlockLinks</a>
						<br/><br/>

		<strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks var="idIter">
			<strapi:tenantResearcherEssentialsGovernanceBlockLinks>
						<a href="../../strapi/tenantResearcherEssentialsGovernanceBlockLinks/tenantResearcherEssentialsGovernanceBlockLinks.jsp?ID=<strapi:tenantResearcherEssentialsGovernanceBlockLinksID />"><strapi:tenantResearcherEssentialsGovernanceBlockLinksID /></a>
		<strapi:tenantResearcherEssentialsGovernanceBlockLinksTenantResearcherEssentialId />
		<strapi:tenantResearcherEssentialsGovernanceBlockLinksContentImageBlockRightId />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:tenantResearcherEssentialsGovernanceBlockLinks>
			</strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks>

						<h2>ToolsToolLinks List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>ToolId</th>
									<th>ContentImageBlockRightId</th>
									<th>ContentImageBlockRightOrder</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachToolsToolLinks var="idIter">
									<strapi:toolsToolLinks>
										<tr>
											<td><a href="../toolsToolLinks/show.jsp?ID=<strapi:toolsToolLinksID />"><strapi:toolsToolLinksID /></a></td>
											<td><strapi:toolsToolLinksToolId /></td>
											<td><strapi:toolsToolLinksContentImageBlockRightId /></td>
											<td><strapi:toolsToolLinksContentImageBlockRightOrder /></td>
											<td><a href="../toolsToolLinks/edit.jsp?ID=<strapi:toolsToolLinksID />">edit</a></td>
											<td><a href="../toolsToolLinks/delete.jsp?ID=<strapi:toolsToolLinksID />">delete</a></td>
										</tr>
									</strapi:toolsToolLinks>
								</strapi:foreachToolsToolLinks>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../toolsToolLinks/add.jsp?ID=${param.ID}&ID=${param.ID}">add ToolsToolLinks</a>
						<br/><br/>

		<strapi:foreachToolsToolLinks var="idIter">
			<strapi:toolsToolLinks>
						<a href="../../strapi/toolsToolLinks/toolsToolLinks.jsp?ID=<strapi:toolsToolLinksID />"><strapi:toolsToolLinksID /></a>
		<strapi:toolsToolLinksToolId />
		<strapi:toolsToolLinksContentImageBlockRightId />
		<strapi:toolsToolLinksContentImageBlockRightOrder />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:toolsToolLinks>
			</strapi:foreachToolsToolLinks>

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
</strapi:contentImageBlockRights>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>