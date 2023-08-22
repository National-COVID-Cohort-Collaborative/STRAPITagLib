package org.cd2h.STRAPITagLib.teamCreationsResponsibilityFaqsLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsResponsibilityFaqsLinksTeamCreationId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsResponsibilityFaqsLinksTeamCreationId.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreationsResponsibilityFaqsLinks theTeamCreationsResponsibilityFaqsLinks = (TeamCreationsResponsibilityFaqsLinks)findAncestorWithClass(this, TeamCreationsResponsibilityFaqsLinks.class);
			if (!theTeamCreationsResponsibilityFaqsLinks.commitNeeded) {
				pageContext.getOut().print(theTeamCreationsResponsibilityFaqsLinks.getTeamCreationId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResponsibilityFaqsLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for teamCreationId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for teamCreationId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getTeamCreationId() throws JspException {
		try {
			TeamCreationsResponsibilityFaqsLinks theTeamCreationsResponsibilityFaqsLinks = (TeamCreationsResponsibilityFaqsLinks)findAncestorWithClass(this, TeamCreationsResponsibilityFaqsLinks.class);
			return theTeamCreationsResponsibilityFaqsLinks.getTeamCreationId();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResponsibilityFaqsLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for teamCreationId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for teamCreationId tag ");
			}
		}
	}

	public void setTeamCreationId(int teamCreationId) throws JspException {
		try {
			TeamCreationsResponsibilityFaqsLinks theTeamCreationsResponsibilityFaqsLinks = (TeamCreationsResponsibilityFaqsLinks)findAncestorWithClass(this, TeamCreationsResponsibilityFaqsLinks.class);
			theTeamCreationsResponsibilityFaqsLinks.setTeamCreationId(teamCreationId);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResponsibilityFaqsLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for teamCreationId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResponsibilityFaqsLinks for teamCreationId tag ");
			}
		}
	}

}
