package org.cd2h.STRAPITagLib.researcherEssentialsJoinBlockLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class ResearcherEssentialsJoinBlockLinksContentImageBlockLeftId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(ResearcherEssentialsJoinBlockLinksContentImageBlockLeftId.class);

	public int doStartTag() throws JspException {
		try {
			ResearcherEssentialsJoinBlockLinks theResearcherEssentialsJoinBlockLinks = (ResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, ResearcherEssentialsJoinBlockLinks.class);
			if (!theResearcherEssentialsJoinBlockLinks.commitNeeded) {
				pageContext.getOut().print(theResearcherEssentialsJoinBlockLinks.getContentImageBlockLeftId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing ResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getContentImageBlockLeftId() throws JspException {
		try {
			ResearcherEssentialsJoinBlockLinks theResearcherEssentialsJoinBlockLinks = (ResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, ResearcherEssentialsJoinBlockLinks.class);
			return theResearcherEssentialsJoinBlockLinks.getContentImageBlockLeftId();
		} catch (Exception e) {
			log.error("Can't find enclosing ResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
			}
		}
	}

	public void setContentImageBlockLeftId(int contentImageBlockLeftId) throws JspException {
		try {
			ResearcherEssentialsJoinBlockLinks theResearcherEssentialsJoinBlockLinks = (ResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, ResearcherEssentialsJoinBlockLinks.class);
			theResearcherEssentialsJoinBlockLinks.setContentImageBlockLeftId(contentImageBlockLeftId);
		} catch (Exception e) {
			log.error("Can't find enclosing ResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing ResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
			}
		}
	}

}
