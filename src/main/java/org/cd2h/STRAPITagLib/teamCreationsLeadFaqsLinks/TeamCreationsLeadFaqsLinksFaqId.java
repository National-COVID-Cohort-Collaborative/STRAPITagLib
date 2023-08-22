package org.cd2h.STRAPITagLib.teamCreationsLeadFaqsLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsLeadFaqsLinksFaqId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsLeadFaqsLinksFaqId.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreationsLeadFaqsLinks theTeamCreationsLeadFaqsLinks = (TeamCreationsLeadFaqsLinks)findAncestorWithClass(this, TeamCreationsLeadFaqsLinks.class);
			if (!theTeamCreationsLeadFaqsLinks.commitNeeded) {
				pageContext.getOut().print(theTeamCreationsLeadFaqsLinks.getFaqId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsLeadFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsLeadFaqsLinks for faqId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsLeadFaqsLinks for faqId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getFaqId() throws JspException {
		try {
			TeamCreationsLeadFaqsLinks theTeamCreationsLeadFaqsLinks = (TeamCreationsLeadFaqsLinks)findAncestorWithClass(this, TeamCreationsLeadFaqsLinks.class);
			return theTeamCreationsLeadFaqsLinks.getFaqId();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsLeadFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsLeadFaqsLinks for faqId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsLeadFaqsLinks for faqId tag ");
			}
		}
	}

	public void setFaqId(int faqId) throws JspException {
		try {
			TeamCreationsLeadFaqsLinks theTeamCreationsLeadFaqsLinks = (TeamCreationsLeadFaqsLinks)findAncestorWithClass(this, TeamCreationsLeadFaqsLinks.class);
			theTeamCreationsLeadFaqsLinks.setFaqId(faqId);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsLeadFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsLeadFaqsLinks for faqId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsLeadFaqsLinks for faqId tag ");
			}
		}
	}

}
