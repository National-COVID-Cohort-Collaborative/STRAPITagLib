package org.cd2h.STRAPITagLib.teamCreationsGuidelineFaqsLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsGuidelineFaqsLinksFaqId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsGuidelineFaqsLinksFaqId.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreationsGuidelineFaqsLinks theTeamCreationsGuidelineFaqsLinks = (TeamCreationsGuidelineFaqsLinks)findAncestorWithClass(this, TeamCreationsGuidelineFaqsLinks.class);
			if (!theTeamCreationsGuidelineFaqsLinks.commitNeeded) {
				pageContext.getOut().print(theTeamCreationsGuidelineFaqsLinks.getFaqId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsGuidelineFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for faqId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for faqId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getFaqId() throws JspException {
		try {
			TeamCreationsGuidelineFaqsLinks theTeamCreationsGuidelineFaqsLinks = (TeamCreationsGuidelineFaqsLinks)findAncestorWithClass(this, TeamCreationsGuidelineFaqsLinks.class);
			return theTeamCreationsGuidelineFaqsLinks.getFaqId();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsGuidelineFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for faqId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for faqId tag ");
			}
		}
	}

	public void setFaqId(int faqId) throws JspException {
		try {
			TeamCreationsGuidelineFaqsLinks theTeamCreationsGuidelineFaqsLinks = (TeamCreationsGuidelineFaqsLinks)findAncestorWithClass(this, TeamCreationsGuidelineFaqsLinks.class);
			theTeamCreationsGuidelineFaqsLinks.setFaqId(faqId);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsGuidelineFaqsLinks for faqId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for faqId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for faqId tag ");
			}
		}
	}

}
