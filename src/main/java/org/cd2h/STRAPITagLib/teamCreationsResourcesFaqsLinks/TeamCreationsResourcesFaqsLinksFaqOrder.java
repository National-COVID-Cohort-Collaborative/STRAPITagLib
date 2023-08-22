package org.cd2h.STRAPITagLib.teamCreationsResourcesFaqsLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsResourcesFaqsLinksFaqOrder extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsResourcesFaqsLinksFaqOrder.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreationsResourcesFaqsLinks theTeamCreationsResourcesFaqsLinks = (TeamCreationsResourcesFaqsLinks)findAncestorWithClass(this, TeamCreationsResourcesFaqsLinks.class);
			if (!theTeamCreationsResourcesFaqsLinks.commitNeeded) {
				pageContext.getOut().print(theTeamCreationsResourcesFaqsLinks.getFaqOrder());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResourcesFaqsLinks for faqOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for faqOrder tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for faqOrder tag ");
			}

		}
		return SKIP_BODY;
	}

	public double getFaqOrder() throws JspException {
		try {
			TeamCreationsResourcesFaqsLinks theTeamCreationsResourcesFaqsLinks = (TeamCreationsResourcesFaqsLinks)findAncestorWithClass(this, TeamCreationsResourcesFaqsLinks.class);
			return theTeamCreationsResourcesFaqsLinks.getFaqOrder();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResourcesFaqsLinks for faqOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for faqOrder tag ");
				parent.doEndTag();
				return 0.0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for faqOrder tag ");
			}
		}
	}

	public void setFaqOrder(double faqOrder) throws JspException {
		try {
			TeamCreationsResourcesFaqsLinks theTeamCreationsResourcesFaqsLinks = (TeamCreationsResourcesFaqsLinks)findAncestorWithClass(this, TeamCreationsResourcesFaqsLinks.class);
			theTeamCreationsResourcesFaqsLinks.setFaqOrder(faqOrder);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResourcesFaqsLinks for faqOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for faqOrder tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for faqOrder tag ");
			}
		}
	}

}
