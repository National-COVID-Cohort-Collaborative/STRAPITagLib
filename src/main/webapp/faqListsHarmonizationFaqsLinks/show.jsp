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
<strapi:faqListsHarmonizationFaqsLinks ID="${ID}">
	<h2>FaqListsHarmonizationFaqsLinks: <strapi:faqListsHarmonizationFaqsLinksID /></h2>
<ul>
	<li><a href="../faqLists/show.jsp?ID=<strapi:faqListsHarmonizationFaqsLinksFaqListId />">FaqLists</a>
	<li><a href="../faqs/show.jsp?ID=<strapi:faqListsHarmonizationFaqsLinksFaqId />">Faqs</a>
</ul>
		<table border=1>
			<tr>
			<th>ID</th>
			<th>FaqListId</th>
			<th>FaqId</th>
			<th>FaqOrder</th>
			</tr>
			<tr>
				<td><a href="edit.jsp?ID=<strapi:faqListsHarmonizationFaqsLinksID />"><strapi:faqListsHarmonizationFaqsLinksID /></a></td>
				<td><strapi:faqListsHarmonizationFaqsLinksFaqListId /></td>
				<td><strapi:faqListsHarmonizationFaqsLinksFaqId /></td>
				<td><strapi:faqListsHarmonizationFaqsLinksFaqOrder /></td>
			</tr>
		</table>
</strapi:faqListsHarmonizationFaqsLinks>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>