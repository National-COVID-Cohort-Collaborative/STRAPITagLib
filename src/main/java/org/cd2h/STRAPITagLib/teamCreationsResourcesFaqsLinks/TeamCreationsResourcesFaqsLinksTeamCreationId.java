package org.cd2h.STRAPITagLib.teamCreationsResourcesFaqsLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsResourcesFaqsLinksTeamCreationId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsResourcesFaqsLinksTeamCreationId.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreationsResourcesFaqsLinks theTeamCreationsResourcesFaqsLinks = (TeamCreationsResourcesFaqsLinks)findAncestorWithClass(this, TeamCreationsResourcesFaqsLinks.class);
			if (!theTeamCreationsResourcesFaqsLinks.commitNeeded) {
				pageContext.getOut().print(theTeamCreationsResourcesFaqsLinks.getTeamCreationId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResourcesFaqsLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for teamCreationId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for teamCreationId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getTeamCreationId() throws JspException {
		try {
			TeamCreationsResourcesFaqsLinks theTeamCreationsResourcesFaqsLinks = (TeamCreationsResourcesFaqsLinks)findAncestorWithClass(this, TeamCreationsResourcesFaqsLinks.class);
			return theTeamCreationsResourcesFaqsLinks.getTeamCreationId();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResourcesFaqsLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for teamCreationId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for teamCreationId tag ");
			}
		}
	}

	public void setTeamCreationId(int teamCreationId) throws JspException {
		try {
			TeamCreationsResourcesFaqsLinks theTeamCreationsResourcesFaqsLinks = (TeamCreationsResourcesFaqsLinks)findAncestorWithClass(this, TeamCreationsResourcesFaqsLinks.class);
			theTeamCreationsResourcesFaqsLinks.setTeamCreationId(teamCreationId);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsResourcesFaqsLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for teamCreationId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsResourcesFaqsLinks for teamCreationId tag ");
			}
		}
	}

}
