package org.cd2h.STRAPITagLib.teamCreationsNavTilesLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsNavTilesLinksTeamCreationId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsNavTilesLinksTeamCreationId.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreationsNavTilesLinks theTeamCreationsNavTilesLinks = (TeamCreationsNavTilesLinks)findAncestorWithClass(this, TeamCreationsNavTilesLinks.class);
			if (!theTeamCreationsNavTilesLinks.commitNeeded) {
				pageContext.getOut().print(theTeamCreationsNavTilesLinks.getTeamCreationId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsNavTilesLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsNavTilesLinks for teamCreationId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsNavTilesLinks for teamCreationId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getTeamCreationId() throws JspException {
		try {
			TeamCreationsNavTilesLinks theTeamCreationsNavTilesLinks = (TeamCreationsNavTilesLinks)findAncestorWithClass(this, TeamCreationsNavTilesLinks.class);
			return theTeamCreationsNavTilesLinks.getTeamCreationId();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsNavTilesLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsNavTilesLinks for teamCreationId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsNavTilesLinks for teamCreationId tag ");
			}
		}
	}

	public void setTeamCreationId(int teamCreationId) throws JspException {
		try {
			TeamCreationsNavTilesLinks theTeamCreationsNavTilesLinks = (TeamCreationsNavTilesLinks)findAncestorWithClass(this, TeamCreationsNavTilesLinks.class);
			theTeamCreationsNavTilesLinks.setTeamCreationId(teamCreationId);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsNavTilesLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsNavTilesLinks for teamCreationId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsNavTilesLinks for teamCreationId tag ");
			}
		}
	}

}
