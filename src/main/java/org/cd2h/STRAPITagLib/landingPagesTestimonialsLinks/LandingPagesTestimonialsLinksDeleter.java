package org.cd2h.STRAPITagLib.landingPagesTestimonialsLinks;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.STRAPITagLibBodyTagSupport;
import org.cd2h.STRAPITagLib.landingPages.LandingPages;
import org.cd2h.STRAPITagLib.testimonials.Testimonials;

@SuppressWarnings("serial")
public class LandingPagesTestimonialsLinksDeleter extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int landingPageId = 0;
    int testimonialId = 0;
    double testimonialOrder = 0.0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(LandingPagesTestimonialsLinksDeleter.class);


    ResultSet rs = null;
    String var = null;
    int rsCount = 0;

    public int doStartTag() throws JspException {
		LandingPages theLandingPages = (LandingPages)findAncestorWithClass(this, LandingPages.class);
		if (theLandingPages!= null)
			parentEntities.addElement(theLandingPages);
		Testimonials theTestimonials = (Testimonials)findAncestorWithClass(this, Testimonials.class);
		if (theTestimonials!= null)
			parentEntities.addElement(theTestimonials);

		if (theLandingPages == null) {
		} else {
			landingPageId = theLandingPages.getID();
		}
		if (theTestimonials == null) {
		} else {
			testimonialId = theTestimonials.getID();
		}


        PreparedStatement stat;
        try {
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("DELETE from strapi.landing_pages_testimonials_links where 1=1"
                                                        + (ID == 0 ? "" : " and id = ? ")
                                                        + (landingPageId == 0 ? "" : " and landing_page_id = ? ")
                                                        + (testimonialId == 0 ? "" : " and testimonial_id = ? "));
            if (ID != 0) stat.setInt(webapp_keySeq++, ID);
			if (landingPageId != 0) stat.setInt(webapp_keySeq++, landingPageId);
			if (testimonialId != 0) stat.setInt(webapp_keySeq++, testimonialId);
            stat.execute();

			webapp_keySeq = 1;
        } catch (SQLException e) {
            log.error("JDBC error generating LandingPagesTestimonialsLinks deleter", e);

			clearServiceState();
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating LandingPagesTestimonialsLinks deleter");
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating LandingPagesTestimonialsLinks deleter",e);
			}

        } finally {
            freeConnection();
        }

        return SKIP_BODY;
    }

	public int doEndTag() throws JspException {

		clearServiceState();
		Boolean error = (Boolean) pageContext.getAttribute("tagError");
		if(error != null && error){

			freeConnection();

			Exception e = (Exception) pageContext.getAttribute("tagErrorException");
			String message = (String) pageContext.getAttribute("tagErrorMessage");

			Tag parent = getParent();
			if(parent != null){
				return parent.doEndTag();
			}else if(e != null && message != null){
				throw new JspException(message,e);
			}else if(parent == null){
				pageContext.removeAttribute("tagError");
				pageContext.removeAttribute("tagErrorException");
				pageContext.removeAttribute("tagErrorMessage");
			}
		}
		return super.doEndTag();
	}

    private void clearServiceState() {
        ID = 0;
        parentEntities = new Vector<STRAPITagLibTagSupport>();

        this.rs = null;
        this.var = null;
        this.rsCount = 0;
    }

    public String getVar() {
        return var;
    }

    public void setVar(String var) {
        this.var = var;
    }



	public int getID () {
		return ID;
	}

	public void setID (int ID) {
		this.ID = ID;
	}

	public int getActualID () {
		return ID;
	}
}
