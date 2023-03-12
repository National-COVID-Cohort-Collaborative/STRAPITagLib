package org.cd2h.STRAPITagLib.researcherEssentialsJoinBlockLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class ResearcherEssentialsJoinBlockLinksResearcherEssentialId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(ResearcherEssentialsJoinBlockLinksResearcherEssentialId.class);

	public int doStartTag() throws JspException {
		try {
			ResearcherEssentialsJoinBlockLinks theResearcherEssentialsJoinBlockLinks = (ResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, ResearcherEssentialsJoinBlockLinks.class);
			if (!theResearcherEssentialsJoinBlockLinks.commitNeeded) {
				pageContext.getOut().print(theResearcherEssentialsJoinBlockLinks.getResearcherEssentialId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing ResearcherEssentialsJoinBlockLinks for researcherEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for researcherEssentialId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for researcherEssentialId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getResearcherEssentialId() throws JspException {
		try {
			ResearcherEssentialsJoinBlockLinks theResearcherEssentialsJoinBlockLinks = (ResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, ResearcherEssentialsJoinBlockLinks.class);
			return theResearcherEssentialsJoinBlockLinks.getResearcherEssentialId();
		} catch (Exception e) {
			log.error("Can't find enclosing ResearcherEssentialsJoinBlockLinks for researcherEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for researcherEssentialId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for researcherEssentialId tag ");
			}
		}
	}

	public void setResearcherEssentialId(int researcherEssentialId) throws JspException {
		try {
			ResearcherEssentialsJoinBlockLinks theResearcherEssentialsJoinBlockLinks = (ResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, ResearcherEssentialsJoinBlockLinks.class);
			theResearcherEssentialsJoinBlockLinks.setResearcherEssentialId(researcherEssentialId);
		} catch (Exception e) {
			log.error("Can't find enclosing ResearcherEssentialsJoinBlockLinks for researcherEssentialId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for researcherEssentialId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for researcherEssentialId tag ");
			}
		}
	}

}
