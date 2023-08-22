package org.cd2h.STRAPITagLib.teamCreationsReadyFaqsLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsReadyFaqsLinksFaqId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsReadyFaqsLinksFaqId.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreationsReadyFaqsLinks theTeamCreationsReadyFaqsLinks = (TeamCreationsReadyFaqsLinks)findAncestorWithClass(this, TeamCreationsReadyFaqsLinks.class);
			if (!theTeamCreationsReadyFaqsLinks.commitNeeded) {
				pageContext.getOut().print(theTeamCreationsReadyFaqsLinks.getFaqId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsReadyFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getFaqId() throws JspException {
		try {
			TeamCreationsReadyFaqsLinks theTeamCreationsReadyFaqsLinks = (TeamCreationsReadyFaqsLinks)findAncestorWithClass(this, TeamCreationsReadyFaqsLinks.class);
			return theTeamCreationsReadyFaqsLinks.getFaqId();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsReadyFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqId tag ");
			}
		}
	}

	public void setFaqId(int faqId) throws JspException {
		try {
			TeamCreationsReadyFaqsLinks theTeamCreationsReadyFaqsLinks = (TeamCreationsReadyFaqsLinks)findAncestorWithClass(this, TeamCreationsReadyFaqsLinks.class);
			theTeamCreationsReadyFaqsLinks.setFaqId(faqId);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsReadyFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqId tag ");
			}
		}
	}

}
