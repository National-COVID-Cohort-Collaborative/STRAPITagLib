package org.cd2h.STRAPITagLib.domainTeamsYouTubeVideosLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class DomainTeamsYouTubeVideosLinksDomainTeamId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(DomainTeamsYouTubeVideosLinksDomainTeamId.class);

	public int doStartTag() throws JspException {
		try {
			DomainTeamsYouTubeVideosLinks theDomainTeamsYouTubeVideosLinks = (DomainTeamsYouTubeVideosLinks)findAncestorWithClass(this, DomainTeamsYouTubeVideosLinks.class);
			if (!theDomainTeamsYouTubeVideosLinks.commitNeeded) {
				pageContext.getOut().print(theDomainTeamsYouTubeVideosLinks.getDomainTeamId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing DomainTeamsYouTubeVideosLinks for domainTeamId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for domainTeamId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for domainTeamId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getDomainTeamId() throws JspException {
		try {
			DomainTeamsYouTubeVideosLinks theDomainTeamsYouTubeVideosLinks = (DomainTeamsYouTubeVideosLinks)findAncestorWithClass(this, DomainTeamsYouTubeVideosLinks.class);
			return theDomainTeamsYouTubeVideosLinks.getDomainTeamId();
		} catch (Exception e) {
			log.error("Can't find enclosing DomainTeamsYouTubeVideosLinks for domainTeamId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for domainTeamId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for domainTeamId tag ");
			}
		}
	}

	public void setDomainTeamId(int domainTeamId) throws JspException {
		try {
			DomainTeamsYouTubeVideosLinks theDomainTeamsYouTubeVideosLinks = (DomainTeamsYouTubeVideosLinks)findAncestorWithClass(this, DomainTeamsYouTubeVideosLinks.class);
			theDomainTeamsYouTubeVideosLinks.setDomainTeamId(domainTeamId);
		} catch (Exception e) {
			log.error("Can't find enclosing DomainTeamsYouTubeVideosLinks for domainTeamId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for domainTeamId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for domainTeamId tag ");
			}
		}
	}

}
