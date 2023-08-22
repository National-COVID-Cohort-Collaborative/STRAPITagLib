package org.cd2h.STRAPITagLib.teamCreationsReadyFaqsLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsReadyFaqsLinksFaqOrder extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsReadyFaqsLinksFaqOrder.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreationsReadyFaqsLinks theTeamCreationsReadyFaqsLinks = (TeamCreationsReadyFaqsLinks)findAncestorWithClass(this, TeamCreationsReadyFaqsLinks.class);
			if (!theTeamCreationsReadyFaqsLinks.commitNeeded) {
				pageContext.getOut().print(theTeamCreationsReadyFaqsLinks.getFaqOrder());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsReadyFaqsLinks for faqOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqOrder tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqOrder tag ");
			}

		}
		return SKIP_BODY;
	}

	public double getFaqOrder() throws JspException {
		try {
			TeamCreationsReadyFaqsLinks theTeamCreationsReadyFaqsLinks = (TeamCreationsReadyFaqsLinks)findAncestorWithClass(this, TeamCreationsReadyFaqsLinks.class);
			return theTeamCreationsReadyFaqsLinks.getFaqOrder();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsReadyFaqsLinks for faqOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqOrder tag ");
				parent.doEndTag();
				return 0.0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqOrder tag ");
			}
		}
	}

	public void setFaqOrder(double faqOrder) throws JspException {
		try {
			TeamCreationsReadyFaqsLinks theTeamCreationsReadyFaqsLinks = (TeamCreationsReadyFaqsLinks)findAncestorWithClass(this, TeamCreationsReadyFaqsLinks.class);
			theTeamCreationsReadyFaqsLinks.setFaqOrder(faqOrder);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsReadyFaqsLinks for faqOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqOrder tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsReadyFaqsLinks for faqOrder tag ");
			}
		}
	}

}
