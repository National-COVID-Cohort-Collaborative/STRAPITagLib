package org.cd2h.STRAPITagLib.policiesInstitutionResourcesLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.policies.Policies;
import org.cd2h.STRAPITagLib.resources.Resources;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class PoliciesInstitutionResourcesLinks extends STRAPITagLibTagSupport {

	static PoliciesInstitutionResourcesLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(PoliciesInstitutionResourcesLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int policyId = 0;
	int resourceId = 0;
	double resourceOrder = 0.0;

	private String var = null;

	private PoliciesInstitutionResourcesLinks cachedPoliciesInstitutionResourcesLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			Policies thePolicies = (Policies)findAncestorWithClass(this, Policies.class);
			if (thePolicies!= null)
				parentEntities.addElement(thePolicies);
			Resources theResources = (Resources)findAncestorWithClass(this, Resources.class);
			if (theResources!= null)
				parentEntities.addElement(theResources);

			if (thePolicies == null) {
			} else {
				policyId = thePolicies.getID();
			}
			if (theResources == null) {
			} else {
				resourceId = theResources.getID();
			}

			PoliciesInstitutionResourcesLinksIterator thePoliciesInstitutionResourcesLinksIterator = (PoliciesInstitutionResourcesLinksIterator)findAncestorWithClass(this, PoliciesInstitutionResourcesLinksIterator.class);

			if (thePoliciesInstitutionResourcesLinksIterator != null) {
				ID = thePoliciesInstitutionResourcesLinksIterator.getID();
			}

			if (thePoliciesInstitutionResourcesLinksIterator == null && thePolicies == null && theResources == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new PoliciesInstitutionResourcesLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (thePoliciesInstitutionResourcesLinksIterator == null && thePolicies != null && theResources == null) {
				// an ID was provided as an attribute - we need to load a PoliciesInstitutionResourcesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select policy_id,resource_id,resource_order from strapi.policies_institution_resources_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (policyId == 0)
						policyId = rs.getInt(1);
					if (resourceId == 0)
						resourceId = rs.getInt(2);
					if (resourceOrder == 0.0)
						resourceOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (thePoliciesInstitutionResourcesLinksIterator == null && thePolicies == null && theResources != null) {
				// an ID was provided as an attribute - we need to load a PoliciesInstitutionResourcesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select policy_id,resource_id,resource_order from strapi.policies_institution_resources_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (policyId == 0)
						policyId = rs.getInt(1);
					if (resourceId == 0)
						resourceId = rs.getInt(2);
					if (resourceOrder == 0.0)
						resourceOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a PoliciesInstitutionResourcesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select policy_id,resource_id,resource_order from strapi.policies_institution_resources_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (policyId == 0)
						policyId = rs.getInt(1);
					if (resourceId == 0)
						resourceId = rs.getInt(2);
					if (resourceOrder == 0.0)
						resourceOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
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
			PoliciesInstitutionResourcesLinks currentPoliciesInstitutionResourcesLinks = (PoliciesInstitutionResourcesLinks) pageContext.getAttribute("tag_policiesInstitutionResourcesLinks");
			if(currentPoliciesInstitutionResourcesLinks != null){
				cachedPoliciesInstitutionResourcesLinks = currentPoliciesInstitutionResourcesLinks;
			}
			currentPoliciesInstitutionResourcesLinks = this;
			pageContext.setAttribute((var == null ? "tag_policiesInstitutionResourcesLinks" : var), currentPoliciesInstitutionResourcesLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedPoliciesInstitutionResourcesLinks != null){
				pageContext.setAttribute((var == null ? "tag_policiesInstitutionResourcesLinks" : var), this.cachedPoliciesInstitutionResourcesLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_policiesInstitutionResourcesLinks" : var));
				this.cachedPoliciesInstitutionResourcesLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.policies_institution_resources_links set policy_id = ?, resource_id = ?, resource_order = ? where id = ? ");
				if ( policyId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, policyId );
				}
				if ( resourceId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, resourceId );
				}
				stmt.setDouble( 3, resourceOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.policies_institution_resources_links(policy_id,resource_id,resource_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (policyId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,policyId);
		}
		if (resourceId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,resourceId);
		}
		stmt.setDouble(3,resourceOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new PoliciesInstitutionResourcesLinks " + ID);

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

	public int getPolicyId () {
		return policyId;
	}

	public void setPolicyId (int policyId) {
		this.policyId = policyId;
		commitNeeded = true;
	}

	public int getActualPolicyId () {
		return policyId;
	}

	public int getResourceId () {
		return resourceId;
	}

	public void setResourceId (int resourceId) {
		this.resourceId = resourceId;
		commitNeeded = true;
	}

	public int getActualResourceId () {
		return resourceId;
	}

	public double getResourceOrder () {
		return resourceOrder;
	}

	public void setResourceOrder (double resourceOrder) {
		this.resourceOrder = resourceOrder;
		commitNeeded = true;
	}

	public double getActualResourceOrder () {
		return resourceOrder;
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

	public static Integer policyIdValue() throws JspException {
		try {
			return currentInstance.getPolicyId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function policyIdValue()");
		}
	}

	public static Integer resourceIdValue() throws JspException {
		try {
			return currentInstance.getResourceId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function resourceIdValue()");
		}
	}

	public static Double resourceOrderValue() throws JspException {
		try {
			return currentInstance.getResourceOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function resourceOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		policyId = 0;
		resourceId = 0;
		resourceOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
