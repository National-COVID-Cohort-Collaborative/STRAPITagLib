package org.cd2h.STRAPITagLib.teamCreationsResponsibilityFaqsLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsResponsibilityFaqsLinksFaqId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsResponsibilityFaqsLinksFaqId.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreationsResponsibilityFaqsLinks theTeamCreationsResponsibilityFaqsLinks = (TeamCreationsResponsibilityFaqsLinks)findAncestorWithClass(this, TeamCreationsResponsibilityFaqsLinks.class);
			if (!theTeamCreationsResponsibilityFaqsLinks.commitNeeded) {
				pageContext.getOut().print(theTeamCreationsResponsibilityFaqsLinks.getFaqId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResponsibilityFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for faqId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for faqId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getFaqId() throws JspException {
		try {
			TeamCreationsResponsibilityFaqsLinks theTeamCreationsResponsibilityFaqsLinks = (TeamCreationsResponsibilityFaqsLinks)findAncestorWithClass(this, TeamCreationsResponsibilityFaqsLinks.class);
			return theTeamCreationsResponsibilityFaqsLinks.getFaqId();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResponsibilityFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for faqId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for faqId tag ");
			}
		}
	}

	public void setFaqId(int faqId) throws JspException {
		try {
			TeamCreationsResponsibilityFaqsLinks theTeamCreationsResponsibilityFaqsLinks = (TeamCreationsResponsibilityFaqsLinks)findAncestorWithClass(this, TeamCreationsResponsibilityFaqsLinks.class);
			theTeamCreationsResponsibilityFaqsLinks.setFaqId(faqId);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResponsibilityFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for faqId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for faqId tag ");
			}
		}
	}

}
