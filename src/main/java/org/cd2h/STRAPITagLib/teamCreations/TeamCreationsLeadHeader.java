package org.cd2h.STRAPITagLib.teamCreations;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsLeadHeader extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsLeadHeader.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreations theTeamCreations = (TeamCreations)findAncestorWithClass(this, TeamCreations.class);
			if (!theTeamCreations.commitNeeded) {
				pageContext.getOut().print(theTeamCreations.getLeadHeader());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreations for leadHeader tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreations for leadHeader tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreations for leadHeader tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getLeadHeader() throws JspException {
		try {
			TeamCreations theTeamCreations = (TeamCreations)findAncestorWithClass(this, TeamCreations.class);
			return theTeamCreations.getLeadHeader();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreations for leadHeader tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreations for leadHeader tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreations for leadHeader tag ");
			}
		}
	}

	public void setLeadHeader(String leadHeader) throws JspException {
		try {
			TeamCreations theTeamCreations = (TeamCreations)findAncestorWithClass(this, TeamCreations.class);
			theTeamCreations.setLeadHeader(leadHeader);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreations for leadHeader tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreations for leadHeader tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreations for leadHeader tag ");
			}
		}
	}

}
