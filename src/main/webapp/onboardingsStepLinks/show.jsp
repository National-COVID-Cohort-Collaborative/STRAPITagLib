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
<strapi:onboardingsStepLinks ID="${ID}">
	<h2>OnboardingsStepLinks: <strapi:onboardingsStepLinksID /></h2>
<ul>
	<li><a href="../contentImageBlockRights/show.jsp?ID=<strapi:onboardingsStepLinksContentImageBlockRightId />">ContentImageBlockRights</a>
	<li><a href="../onboardings/show.jsp?ID=<strapi:onboardingsStepLinksOnboardingId />">Onboardings</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>OnboardingId</th>
			<th>ContentImageBlockRightId</th>
			<th>ContentImageBlockRightOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:onboardingsStepLinksID />"><strapi:onboardingsStepLinksID /></a></td>
				<td><strapi:onboardingsStepLinksOnboardingId /></td>
				<td><strapi:onboardingsStepLinksContentImageBlockRightId /></td>
				<td><strapi:onboardingsStepLinksContentImageBlockRightOrder /></td>
			</tr>
		</table>
</strapi:onboardingsStepLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>