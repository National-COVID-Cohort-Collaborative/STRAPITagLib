package org.cd2h.STRAPITagLib.landingPagesTestimonialsLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.landingPages.LandingPages;
import org.cd2h.STRAPITagLib.testimonials.Testimonials;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class LandingPagesTestimonialsLinks extends STRAPITagLibTagSupport {

	static LandingPagesTestimonialsLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(LandingPagesTestimonialsLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int landingPageId = 0;
	int testimonialId = 0;
	double testimonialOrder = 0.0;

	private String var = null;

	private LandingPagesTestimonialsLinks cachedLandingPagesTestimonialsLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
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

			LandingPagesTestimonialsLinksIterator theLandingPagesTestimonialsLinksIterator = (LandingPagesTestimonialsLinksIterator)findAncestorWithClass(this, LandingPagesTestimonialsLinksIterator.class);

			if (theLandingPagesTestimonialsLinksIterator != null) {
				ID = theLandingPagesTestimonialsLinksIterator.getID();
			}

			if (theLandingPagesTestimonialsLinksIterator == null && theLandingPages == null && theTestimonials == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new LandingPagesTestimonialsLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theLandingPagesTestimonialsLinksIterator == null && theLandingPages != null && theTestimonials == null) {
				// an ID was provided as an attribute - we need to load a LandingPagesTestimonialsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select landing_page_id,testimonial_id,testimonial_order from strapi.landing_pages_testimonials_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (landingPageId == 0)
						landingPageId = rs.getInt(1);
					if (testimonialId == 0)
						testimonialId = rs.getInt(2);
					if (testimonialOrder == 0.0)
						testimonialOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theLandingPagesTestimonialsLinksIterator == null && theLandingPages == null && theTestimonials != null) {
				// an ID was provided as an attribute - we need to load a LandingPagesTestimonialsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select landing_page_id,testimonial_id,testimonial_order from strapi.landing_pages_testimonials_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (landingPageId == 0)
						landingPageId = rs.getInt(1);
					if (testimonialId == 0)
						testimonialId = rs.getInt(2);
					if (testimonialOrder == 0.0)
						testimonialOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a LandingPagesTestimonialsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select landing_page_id,testimonial_id,testimonial_order from strapi.landing_pages_testimonials_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (landingPageId == 0)
						landingPageId = rs.getInt(1);
					if (testimonialId == 0)
						testimonialId = rs.getInt(2);
					if (testimonialOrder == 0.0)
						testimonialOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			}
		} catch (SQLException e) {
			log.error("JDBC error retrieving ID " + ID, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error retrieving ID " + ID,e);
			}

		} finally {
			freeConnection();
		}

		if(pageContext != null){
			LandingPagesTestimonialsLinks currentLandingPagesTestimonialsLinks = (LandingPagesTestimonialsLinks) pageContext.getAttribute("tag_landingPagesTestimonialsLinks");
			if(currentLandingPagesTestimonialsLinks != null){
				cachedLandingPagesTestimonialsLinks = currentLandingPagesTestimonialsLinks;
			}
			currentLandingPagesTestimonialsLinks = this;
			pageContext.setAttribute((var == null ? "tag_landingPagesTestimonialsLinks" : var), currentLandingPagesTestimonialsLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedLandingPagesTestimonialsLinks != null){
				pageContext.setAttribute((var == null ? "tag_landingPagesTestimonialsLinks" : var), this.cachedLandingPagesTestimonialsLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_landingPagesTestimonialsLinks" : var));
				this.cachedLandingPagesTestimonialsLinks = null;
			}
		}

		try {
			Boolean error = null; // (Boolean) pageContext.getAttribute("tagError");
			if(pageContext != null){
				error = (Boolean) pageContext.getAttribute("tagError");
			}

			if(error != null && error){

				freeConnection();
				clearServiceState();

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
			if (commitNeeded) {
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.landing_pages_testimonials_links set landing_page_id = ?, testimonial_id = ?, testimonial_order = ? where id = ? ");
				if ( landingPageId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, landingPageId );
				}
				if ( testimonialId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, testimonialId );
				}
				stmt.setDouble( 3, testimonialOrder );
				stmt.setInt(4,ID);
				stmt.executeUpdate();
				stmt.close();
			}
		} catch (SQLException e) {
			log.error("Error: IOException while writing to the user", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: IOException while writing to the user");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: IOException while writing to the user");
			}

		} finally {
			clearServiceState();
			freeConnection();
		}
		return super.doEndTag();
	}

	public void insertEntity() throws JspException, SQLException {
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.landing_pages_testimonials_links(landing_page_id,testimonial_id,testimonial_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (landingPageId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,landingPageId);
		}
		if (testimonialId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,testimonialId);
		}
		stmt.setDouble(3,testimonialOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new LandingPagesTestimonialsLinks " + ID);

		freeConnection();
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

	public int getLandingPageId () {
		return landingPageId;
	}

	public void setLandingPageId (int landingPageId) {
		this.landingPageId = landingPageId;
		commitNeeded = true;
	}

	public int getActualLandingPageId () {
		return landingPageId;
	}

	public int getTestimonialId () {
		return testimonialId;
	}

	public void setTestimonialId (int testimonialId) {
		this.testimonialId = testimonialId;
		commitNeeded = true;
	}

	public int getActualTestimonialId () {
		return testimonialId;
	}

	public double getTestimonialOrder () {
		return testimonialOrder;
	}

	public void setTestimonialOrder (double testimonialOrder) {
		this.testimonialOrder = testimonialOrder;
		commitNeeded = true;
	}

	public double getActualTestimonialOrder () {
		return testimonialOrder;
	}

	public String getVar () {
		return var;
	}

	public void setVar (String var) {
		this.var = var;
	}

	public String getActualVar () {
		return var;
	}

	public static Integer IDValue() throws JspException {
		try {
			return currentInstance.getID();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function IDValue()");
		}
	}

	public static Integer landingPageIdValue() throws JspException {
		try {
			return currentInstance.getLandingPageId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function landingPageIdValue()");
		}
	}

	public static Integer testimonialIdValue() throws JspException {
		try {
			return currentInstance.getTestimonialId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function testimonialIdValue()");
		}
	}

	public static Double testimonialOrderValue() throws JspException {
		try {
			return currentInstance.getTestimonialOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function testimonialOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		landingPageId = 0;
		testimonialId = 0;
		testimonialOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
