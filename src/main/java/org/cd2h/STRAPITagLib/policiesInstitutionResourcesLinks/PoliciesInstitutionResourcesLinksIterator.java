package org.cd2h.STRAPITagLib.policiesInstitutionResourcesLinks;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.STRAPITagLibBodyTagSupport;
import org.cd2h.STRAPITagLib.policies.Policies;
import org.cd2h.STRAPITagLib.resources.Resources;

@SuppressWarnings("serial")
public class PoliciesInstitutionResourcesLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int policyId = 0;
    int resourceId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(PoliciesInstitutionResourcesLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean usePolicies = false;
   boolean useResources = false;

	public static String policiesInstitutionResourcesLinksCountByPolicies(String ID) throws JspTagException {
		int count = 0;
		PoliciesInstitutionResourcesLinksIterator theIterator = new PoliciesInstitutionResourcesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.policies_institution_resources_links where 1=1"
						+ " and policy_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PoliciesInstitutionResourcesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PoliciesInstitutionResourcesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean policiesHasPoliciesInstitutionResourcesLinks(String ID) throws JspTagException {
		return ! policiesInstitutionResourcesLinksCountByPolicies(ID).equals("0");
	}

	public static String policiesInstitutionResourcesLinksCountByResources(String ID) throws JspTagException {
		int count = 0;
		PoliciesInstitutionResourcesLinksIterator theIterator = new PoliciesInstitutionResourcesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.policies_institution_resources_links where 1=1"
						+ " and resource_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PoliciesInstitutionResourcesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PoliciesInstitutionResourcesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean resourcesHasPoliciesInstitutionResourcesLinks(String ID) throws JspTagException {
		return ! policiesInstitutionResourcesLinksCountByResources(ID).equals("0");
	}

	public static Boolean policiesInstitutionResourcesLinksExists (String ID) throws JspTagException {
		int count = 0;
		PoliciesInstitutionResourcesLinksIterator theIterator = new PoliciesInstitutionResourcesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.policies_institution_resources_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PoliciesInstitutionResourcesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PoliciesInstitutionResourcesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean policiesResourcesExists (String ID) throws JspTagException {
		int count = 0;
		PoliciesInstitutionResourcesLinksIterator theIterator = new PoliciesInstitutionResourcesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.policies_institution_resources_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PoliciesInstitutionResourcesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PoliciesInstitutionResourcesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
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


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (policyId == 0 ? "" : " and policy_id = ?")
                                                        + (resourceId == 0 ? "" : " and resource_id = ?")
                                                        + generateLimitCriteria());
            if (policyId != 0) stat.setInt(webapp_keySeq++, policyId);
            if (resourceId != 0) stat.setInt(webapp_keySeq++, resourceId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.policies_institution_resources_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (policyId == 0 ? "" : " and policy_id = ?")
                                                        + (resourceId == 0 ? "" : " and resource_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (policyId != 0) stat.setInt(webapp_keySeq++, policyId);
            if (resourceId != 0) stat.setInt(webapp_keySeq++, resourceId);
            rs = stat.executeQuery();

            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                if (var != null)
                    pageContext.setAttribute(var, this);
                return EVAL_BODY_INCLUDE;
            }
        } catch (SQLException e) {
            log.error("JDBC error generating PoliciesInstitutionResourcesLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating PoliciesInstitutionResourcesLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating PoliciesInstitutionResourcesLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.policies_institution_resources_links");
       if (usePolicies)
          theBuffer.append(", strapi.policies");
       if (useResources)
          theBuffer.append(", strapi.resources");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (usePolicies)
          theBuffer.append(" and strapi.policies.id = strapi.policies_institution_resources_links.policy_id");
       if (useResources)
          theBuffer.append(" and strapi.resources.id = strapi.policies_institution_resources_links.resource_id");

      return theBuffer.toString();
    }

    private String generateFilterCriteria() {
        if (filterCriteria != null) {
            return " and " + filterCriteria;
        } else {
            return "";
        }
    }

    private String generateSortCriteria() {
        if (sortCriteria != null) {
            return sortCriteria;
        } else {
            return "id";
        }
    }

    private String generateLimitCriteria() {
        if (limitCriteria > 0) {
            return " limit " + limitCriteria;
        } else {
            return "";
        }
    }

    public int doAfterBody() throws JspException {
        try {
            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                return EVAL_BODY_AGAIN;
            }
        } catch (SQLException e) {
            log.error("JDBC error iterating across PoliciesInstitutionResourcesLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across PoliciesInstitutionResourcesLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across PoliciesInstitutionResourcesLinks",e);
			}

        }
        return SKIP_BODY;
    }

    public int doEndTag() throws JspTagException, JspException {
        try {
			if( var != null )
				pageContext.removeAttribute(var);
			if( pageContext != null ){
				Boolean error = (Boolean) pageContext.getAttribute("tagError");
				if( error != null && error ){

					freeConnection();
					clearServiceState();

					Exception e = null; // (Exception) pageContext.getAttribute("tagErrorException");
					String message = null; // (String) pageContext.getAttribute("tagErrorMessage");

					if(pageContext != null){
						e = (Exception) pageContext.getAttribute("tagErrorException");
						message = (String) pageContext.getAttribute("tagErrorMessage");

					}
					Tag parent = getParent();
					if(parent != null){
						return parent.doEndTag();
					}else if(e != null && message != null){
						throw new JspException(message,e);
					}else if(parent == null && pageContext != null){
						pageContext.removeAttribute("tagError");
						pageContext.removeAttribute("tagErrorException");
						pageContext.removeAttribute("tagErrorMessage");
					}
				}
			}

            if( rs != null ){
                rs.close();
            }

            if( stat != null ){
                stat.close();
            }

        } catch ( SQLException e ) {
            log.error("JDBC error ending PoliciesInstitutionResourcesLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending PoliciesInstitutionResourcesLinks iterator",e);
			}

        } finally {
            clearServiceState();
            freeConnection();
        }
        return super.doEndTag();
    }

    private void clearServiceState() {
        ID = 0;
        parentEntities = new Vector<STRAPITagLibTagSupport>();

        this.rs = null;
        this.stat = null;
        this.sortCriteria = null;
        this.var = null;
        this.rsCount = 0;
    }

    public String getFromList() {
        return fromList;
    }

    public void setFromList(String fromList) {
        this.fromList = fromList;
    }

    public String getJoinCriteria() {
        return joinCriteria;
    }

    public void setJoinCriteria(String joinCriteria) {
        this.joinCriteria = joinCriteria;
    }

    public String getFilterCriteria() {
        return filterCriteria;
    }

    public void setFilterCriteria(String filterCriteria) {
        this.filterCriteria = filterCriteria;
    }

    public String getSortCriteria() {
        return sortCriteria;
    }

    public void setSortCriteria(String sortCriteria) {
        this.sortCriteria = sortCriteria;
    }

    public int getLimitCriteria() {
        return limitCriteria;
    }

    public void setLimitCriteria(int limitCriteria) {
        this.limitCriteria = limitCriteria;
    }

    public String getVar() {
        return var;
    }

    public void setVar(String var) {
        this.var = var;
    }

    public Boolean isFirst() throws SQLException {
        return rs.isFirst();
    }

    public Boolean isLast() throws SQLException {
        return rs.isLast();
    }


   public boolean getUsePolicies() {
        return usePolicies;
    }

    public void setUsePolicies(boolean usePolicies) {
        this.usePolicies = usePolicies;
    }

   public boolean getUseResources() {
        return useResources;
    }

    public void setUseResources(boolean useResources) {
        this.useResources = useResources;
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
