package org.cd2h.STRAPITagLib.teamCreations;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TeamCreationsLeadBlock extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TeamCreationsLeadBlock.class);

	public int doStartTag() throws JspException {
		try {
			TeamCreations theTeamCreations = (TeamCreations)findAncestorWithClass(this, TeamCreations.class);
			if (!theTeamCreations.commitNeeded) {
				pageContext.getOut().print(theTeamCreations.getLeadBlock());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreations for leadBlock tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreations for leadBlock tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreations for leadBlock tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getLeadBlock() throws JspException {
		try {
			TeamCreations theTeamCreations = (TeamCreations)findAncestorWithClass(this, TeamCreations.class);
			return theTeamCreations.getLeadBlock();
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreations for leadBlock tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreations for leadBlock tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreations for leadBlock tag ");
			}
		}
	}

	public void setLeadBlock(String leadBlock) throws JspException {
		try {
			TeamCreations theTeamCreations = (TeamCreations)findAncestorWithClass(this, TeamCreations.class);
			theTeamCreations.setLeadBlock(leadBlock);
		} catch (Exception e) {
			log.error("Can't find enclosing TeamCreations for leadBlock tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TeamCreations for leadBlock tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TeamCreations for leadBlock tag ");
			}
		}
	}

}
