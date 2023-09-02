package org.cd2h.STRAPITagLib.partnersPartnerGroupLinks;


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
import org.cd2h.STRAPITagLib.partnerGroups.PartnerGroups;
import org.cd2h.STRAPITagLib.partners.Partners;

@SuppressWarnings("serial")
public class PartnersPartnerGroupLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int partnerId = 0;
    int partnerGroupId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(PartnersPartnerGroupLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean usePartnerGroups = false;
   boolean usePartners = false;

	public static String partnersPartnerGroupLinksCountByPartnerGroups(String ID) throws JspTagException {
		int count = 0;
		PartnersPartnerGroupLinksIterator theIterator = new PartnersPartnerGroupLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.partners_partner_group_links where 1=1"
						+ " and partner_group_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PartnersPartnerGroupLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PartnersPartnerGroupLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean partnerGroupsHasPartnersPartnerGroupLinks(String ID) throws JspTagException {
		return ! partnersPartnerGroupLinksCountByPartnerGroups(ID).equals("0");
	}

	public static String partnersPartnerGroupLinksCountByPartners(String ID) throws JspTagException {
		int count = 0;
		PartnersPartnerGroupLinksIterator theIterator = new PartnersPartnerGroupLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.partners_partner_group_links where 1=1"
						+ " and partner_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PartnersPartnerGroupLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PartnersPartnerGroupLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean partnersHasPartnersPartnerGroupLinks(String ID) throws JspTagException {
		return ! partnersPartnerGroupLinksCountByPartners(ID).equals("0");
	}

	public static Boolean partnersPartnerGroupLinksExists (String ID) throws JspTagException {
		int count = 0;
		PartnersPartnerGroupLinksIterator theIterator = new PartnersPartnerGroupLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.partners_partner_group_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PartnersPartnerGroupLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PartnersPartnerGroupLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean partnerGroupsPartnersExists (String ID) throws JspTagException {
		int count = 0;
		PartnersPartnerGroupLinksIterator theIterator = new PartnersPartnerGroupLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.partners_partner_group_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PartnersPartnerGroupLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PartnersPartnerGroupLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		PartnerGroups thePartnerGroups = (PartnerGroups)findAncestorWithClass(this, PartnerGroups.class);
		if (thePartnerGroups!= null)
			parentEntities.addElement(thePartnerGroups);
		Partners thePartners = (Partners)findAncestorWithClass(this, Partners.class);
		if (thePartners!= null)
			parentEntities.addElement(thePartners);

		if (thePartnerGroups == null) {
		} else {
			partnerGroupId = thePartnerGroups.getID();
		}
		if (thePartners == null) {
		} else {
			partnerId = thePartners.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (partnerGroupId == 0 ? "" : " and partner_group_id = ?")
                                                        + (partnerId == 0 ? "" : " and partner_id = ?")
                                                        + generateLimitCriteria());
            if (partnerGroupId != 0) stat.setInt(webapp_keySeq++, partnerGroupId);
            if (partnerId != 0) stat.setInt(webapp_keySeq++, partnerId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.partners_partner_group_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (partnerGroupId == 0 ? "" : " and partner_group_id = ?")
                                                        + (partnerId == 0 ? "" : " and partner_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (partnerGroupId != 0) stat.setInt(webapp_keySeq++, partnerGroupId);
            if (partnerId != 0) stat.setInt(webapp_keySeq++, partnerId);
            rs = stat.executeQuery();

            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                if (var != null) {
                    pageContext.setAttribute(var, this);
                    pageContext.setAttribute(var+"Count", ++rsCount);
                }
                return EVAL_BODY_INCLUDE;
            }
        } catch (SQLException e) {
            log.error("JDBC error generating PartnersPartnerGroupLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating PartnersPartnerGroupLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating PartnersPartnerGroupLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.partners_partner_group_links");
       if (usePartnerGroups)
          theBuffer.append(", strapi.partner_groups");
       if (usePartners)
          theBuffer.append(", strapi.partners");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (usePartnerGroups)
          theBuffer.append(" and strapi.partner_groups.id = strapi.partners_partner_group_links.partner_group_id");
       if (usePartners)
          theBuffer.append(" and strapi.partners.id = strapi.partners_partner_group_links.partner_id");

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
                pageContext.setAttribute(var+"Count", ++rsCount);
                return EVAL_BODY_AGAIN;
            }
        } catch (SQLException e) {
            log.error("JDBC error iterating across PartnersPartnerGroupLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across PartnersPartnerGroupLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across PartnersPartnerGroupLinks",e);
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
            log.error("JDBC error ending PartnersPartnerGroupLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending PartnersPartnerGroupLinks iterator",e);
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


   public boolean getUsePartnerGroups() {
        return usePartnerGroups;
    }

    public void setUsePartnerGroups(boolean usePartnerGroups) {
        this.usePartnerGroups = usePartnerGroups;
    }

   public boolean getUsePartners() {
        return usePartners;
    }

    public void setUsePartners(boolean usePartners) {
        this.usePartners = usePartners;
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
