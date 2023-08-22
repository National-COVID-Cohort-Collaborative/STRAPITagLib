package org.cd2h.STRAPITagLib.teamCreationsGuidelineFaqsLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsGuidelineFaqsLinksTeamCreationId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsGuidelineFaqsLinksTeamCreationId.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreationsGuidelineFaqsLinks theTeamCreationsGuidelineFaqsLinks = (TeamCreationsGuidelineFaqsLinks)findAncestorWithClass(this, TeamCreationsGuidelineFaqsLinks.class);
			if (!theTeamCreationsGuidelineFaqsLinks.commitNeeded) {
				pageContext.getOut().print(theTeamCreationsGuidelineFaqsLinks.getTeamCreationId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsGuidelineFaqsLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for teamCreationId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for teamCreationId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getTeamCreationId() throws JspException {
		try {
			TeamCreationsGuidelineFaqsLinks theTeamCreationsGuidelineFaqsLinks = (TeamCreationsGuidelineFaqsLinks)findAncestorWithClass(this, TeamCreationsGuidelineFaqsLinks.class);
			return theTeamCreationsGuidelineFaqsLinks.getTeamCreationId();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsGuidelineFaqsLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for teamCreationId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for teamCreationId tag ");
			}
		}
	}

	public void setTeamCreationId(int teamCreationId) throws JspException {
		try {
			TeamCreationsGuidelineFaqsLinks theTeamCreationsGuidelineFaqsLinks = (TeamCreationsGuidelineFaqsLinks)findAncestorWithClass(this, TeamCreationsGuidelineFaqsLinks.class);
			theTeamCreationsGuidelineFaqsLinks.setTeamCreationId(teamCreationId);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreationsGuidelineFaqsLinks for teamCreationId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for teamCreationId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreationsGuidelineFaqsLinks for teamCreationId tag ");
			}
		}
	}

}
