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

						<h2>Projects List</h2>
						<table class="table table-bordered table-striped table-hover table-datatable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Header</th>
									<th>Block1</th>
									<th>CreatedAt</th>
									<th>UpdatedAt</th>
									<th>PublishedAt</th>
									<th>CreatedById</th>
									<th>UpdatedById</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<strapi:foreachProjects var="idIter">
									<strapi:projects>
										<tr>
											<td><a href="../projects/show.jsp?ID=<strapi:projectsID />"><strapi:projectsID /></a></td>
											<td><strapi:projectsHeader /></td>
											<td><strapi:projectsBlock1 /></td>
											<td><strapi:projectsCreatedAt /></td>
											<td><strapi:projectsUpdatedAt /></td>
											<td><strapi:projectsPublishedAt /></td>
											<td><strapi:projectsCreatedById /></td>
											<td><strapi:projectsUpdatedById /></td>
											<td><a href="../projects/edit.jsp?ID=<strapi:projectsID />">edit</a></td>
											<td><a href="../projects/delete.jsp?ID=<strapi:projectsID />">delete</a></td>
										</tr>
									</strapi:projects>
								</strapi:foreachProjects>
							</tbody>
							<tfoot>
							</tfoot>
						</table>

						<br/>

						<a class="btn" href="../projects/add.jsp">add Projects</a>
						<br/><br/>

		<strapi:foreachProjects var="idIter">
			<strapi:projects>
						<a href="../../strapi/projects/projects.jsp?ID=<strapi:projectsID />"><strapi:projectsID /></a>
		<strapi:projectsHeader />
		<strapi:projectsBlock1 />
		<strapi:projectsCreatedAt />
		<strapi:projectsUpdatedAt />
		<strapi:projectsPublishedAt />
		<strapi:projectsCreatedById />
		<strapi:projectsUpdatedById />
			<c:if test="${ ! idIter.isLast() }" >, </c:if>					</strapi:projects>
			</strapi:foreachProjects>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>