package org.cd2h.STRAPITagLib.teamCreationsNavTilesLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsNavTilesLinksNavTileId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsNavTilesLinksNavTileId.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreationsNavTilesLinks theTeamCreationsNavTilesLinks = (TeamCreationsNavTilesLinks)findAncestorWithClass(this, TeamCreationsNavTilesLinks.class);
			if (!theTeamCreationsNavTilesLinks.commitNeeded) {
				pageContext.getOut().print(theTeamCreationsNavTilesLinks.getNavTileId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsNavTilesLinks for navTileId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsNavTilesLinks for navTileId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsNavTilesLinks for navTileId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getNavTileId() throws JspException {
		try {
			TeamCreationsNavTilesLinks theTeamCreationsNavTilesLinks = (TeamCreationsNavTilesLinks)findAncestorWithClass(this, TeamCreationsNavTilesLinks.class);
			return theTeamCreationsNavTilesLinks.getNavTileId();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsNavTilesLinks for navTileId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsNavTilesLinks for navTileId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsNavTilesLinks for navTileId tag ");
			}
		}
	}

	public void setNavTileId(int navTileId) throws JspException {
		try {
			TeamCreationsNavTilesLinks theTeamCreationsNavTilesLinks = (TeamCreationsNavTilesLinks)findAncestorWithClass(this, TeamCreationsNavTilesLinks.class);
			theTeamCreationsNavTilesLinks.setNavTileId(navTileId);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsNavTilesLinks for navTileId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsNavTilesLinks for navTileId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsNavTilesLinks for navTileId tag ");
			}
		}
	}

}
