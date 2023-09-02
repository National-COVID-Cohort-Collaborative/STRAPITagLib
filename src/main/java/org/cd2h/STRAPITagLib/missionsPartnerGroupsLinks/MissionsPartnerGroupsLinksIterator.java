package org.cd2h.STRAPITagLib.missionsPartnerGroupsLinks;


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
import org.cd2h.STRAPITagLib.missions.Missions;
import org.cd2h.STRAPITagLib.partnerGroups.PartnerGroups;

@SuppressWarnings("serial")
public class MissionsPartnerGroupsLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int missionId = 0;
    int partnerGroupId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(MissionsPartnerGroupsLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useMissions = false;
   boolean usePartnerGroups = false;

	public static String missionsPartnerGroupsLinksCountByMissions(String ID) throws JspTagException {
		int count = 0;
		MissionsPartnerGroupsLinksIterator theIterator = new MissionsPartnerGroupsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.missions_partner_groups_links where 1=1"
						+ " and mission_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating MissionsPartnerGroupsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating MissionsPartnerGroupsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean missionsHasMissionsPartnerGroupsLinks(String ID) throws JspTagException {
		return ! missionsPartnerGroupsLinksCountByMissions(ID).equals("0");
	}

	public static String missionsPartnerGroupsLinksCountByPartnerGroups(String ID) throws JspTagException {
		int count = 0;
		MissionsPartnerGroupsLinksIterator theIterator = new MissionsPartnerGroupsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.missions_partner_groups_links where 1=1"
						+ " and partner_group_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating MissionsPartnerGroupsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating MissionsPartnerGroupsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean partnerGroupsHasMissionsPartnerGroupsLinks(String ID) throws JspTagException {
		return ! missionsPartnerGroupsLinksCountByPartnerGroups(ID).equals("0");
	}

	public static Boolean missionsPartnerGroupsLinksExists (String ID) throws JspTagException {
		int count = 0;
		MissionsPartnerGroupsLinksIterator theIterator = new MissionsPartnerGroupsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.missions_partner_groups_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating MissionsPartnerGroupsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating MissionsPartnerGroupsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean missionsPartnerGroupsExists (String ID) throws JspTagException {
		int count = 0;
		MissionsPartnerGroupsLinksIterator theIterator = new MissionsPartnerGroupsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.missions_partner_groups_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating MissionsPartnerGroupsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating MissionsPartnerGroupsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		Missions theMissions = (Missions)findAncestorWithClass(this, Missions.class);
		if (theMissions!= null)
			parentEntities.addElement(theMissions);
		PartnerGroups thePartnerGroups = (PartnerGroups)findAncestorWithClass(this, PartnerGroups.class);
		if (thePartnerGroups!= null)
			parentEntities.addElement(thePartnerGroups);

		if (theMissions == null) {
		} else {
			missionId = theMissions.getID();
		}
		if (thePartnerGroups == null) {
		} else {
			partnerGroupId = thePartnerGroups.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (missionId == 0 ? "" : " and mission_id = ?")
                                                        + (partnerGroupId == 0 ? "" : " and partner_group_id = ?")
                                                        + generateLimitCriteria());
            if (missionId != 0) stat.setInt(webapp_keySeq++, missionId);
            if (partnerGroupId != 0) stat.setInt(webapp_keySeq++, partnerGroupId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.missions_partner_groups_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (missionId == 0 ? "" : " and mission_id = ?")
                                                        + (partnerGroupId == 0 ? "" : " and partner_group_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (missionId != 0) stat.setInt(webapp_keySeq++, missionId);
            if (partnerGroupId != 0) stat.setInt(webapp_keySeq++, partnerGroupId);
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
            log.error("JDBC error generating MissionsPartnerGroupsLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating MissionsPartnerGroupsLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating MissionsPartnerGroupsLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.missions_partner_groups_links");
       if (useMissions)
          theBuffer.append(", strapi.missions");
       if (usePartnerGroups)
          theBuffer.append(", strapi.partner_groups");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useMissions)
          theBuffer.append(" and strapi.missions.id = strapi.missions_partner_groups_links.mission_id");
       if (usePartnerGroups)
          theBuffer.append(" and strapi.partner_groups.id = strapi.missions_partner_groups_links.partner_group_id");

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
            log.error("JDBC error iterating across MissionsPartnerGroupsLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across MissionsPartnerGroupsLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across MissionsPartnerGroupsLinks",e);
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
            log.error("JDBC error ending MissionsPartnerGroupsLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending MissionsPartnerGroupsLinks iterator",e);
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


   public boolean getUseMissions() {
        return useMissions;
    }

    public void setUseMissions(boolean useMissions) {
        this.useMissions = useMissions;
    }

   public boolean getUsePartnerGroups() {
        return usePartnerGroups;
    }

    public void setUsePartnerGroups(boolean usePartnerGroups) {
        this.usePartnerGroups = usePartnerGroups;
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
