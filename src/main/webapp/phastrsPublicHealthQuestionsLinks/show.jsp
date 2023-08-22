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
<strapi:phastrsPublicHealthQuestionsLinks ID="${ID}">
	<h2>PhastrsPublicHealthQuestionsLinks: <strapi:phastrsPublicHealthQuestionsLinksID /></h2>
<ul>
	<li><a href="../phastrs/show.jsp?ID=<strapi:phastrsPublicHealthQuestionsLinksPhastrId />">Phastrs</a>
	<li><a href="../publicHealthQuestions/show.jsp?ID=<strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionId />">PublicHealthQuestions</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>PhastrId</th>
			<th>PublicHealthQuestionId</th>
			<th>PublicHealthQuestionOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:phastrsPublicHealthQuestionsLinksID />"><strapi:phastrsPublicHealthQuestionsLinksID /></a></td>
				<td><strapi:phastrsPublicHealthQuestionsLinksPhastrId /></td>
				<td><strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionId /></td>
				<td><strapi:phastrsPublicHealthQuestionsLinksPublicHealthQuestionOrder /></td>
			</tr>
		</table>
</strapi:phastrsPublicHealthQuestionsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>