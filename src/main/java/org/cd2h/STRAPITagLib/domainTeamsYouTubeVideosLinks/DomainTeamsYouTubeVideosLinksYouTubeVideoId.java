package org.cd2h.STRAPITagLib.domainTeamsYouTubeVideosLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class DomainTeamsYouTubeVideosLinksYouTubeVideoId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(DomainTeamsYouTubeVideosLinksYouTubeVideoId.class);

	public int doStartTag() throws JspException {
		try {
			DomainTeamsYouTubeVideosLinks theDomainTeamsYouTubeVideosLinks = (DomainTeamsYouTubeVideosLinks)findAncestorWithClass(this, DomainTeamsYouTubeVideosLinks.class);
			if (!theDomainTeamsYouTubeVideosLinks.commitNeeded) {
				pageContext.getOut().print(theDomainTeamsYouTubeVideosLinks.getYouTubeVideoId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing DomainTeamsYouTubeVideosLinks for youTubeVideoId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for youTubeVideoId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for youTubeVideoId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getYouTubeVideoId() throws JspException {
		try {
			DomainTeamsYouTubeVideosLinks theDomainTeamsYouTubeVideosLinks = (DomainTeamsYouTubeVideosLinks)findAncestorWithClass(this, DomainTeamsYouTubeVideosLinks.class);
			return theDomainTeamsYouTubeVideosLinks.getYouTubeVideoId();
		} catch (Exception e) {
			log.error("Can't find enclosing DomainTeamsYouTubeVideosLinks for youTubeVideoId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for youTubeVideoId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for youTubeVideoId tag ");
			}
		}
	}

	public void setYouTubeVideoId(int youTubeVideoId) throws JspException {
		try {
			DomainTeamsYouTubeVideosLinks theDomainTeamsYouTubeVideosLinks = (DomainTeamsYouTubeVideosLinks)findAncestorWithClass(this, DomainTeamsYouTubeVideosLinks.class);
			theDomainTeamsYouTubeVideosLinks.setYouTubeVideoId(youTubeVideoId);
		} catch (Exception e) {
			log.error("Can't find enclosing DomainTeamsYouTubeVideosLinks for youTubeVideoId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for youTubeVideoId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing DomainTeamsYouTubeVideosLinks for youTubeVideoId tag ");
			}
		}
	}

}
