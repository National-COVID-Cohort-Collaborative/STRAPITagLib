package org.cd2h.STRAPITagLib.leadershipsBioGroupsLinks;


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
import org.cd2h.STRAPITagLib.bioGroups.BioGroups;
import org.cd2h.STRAPITagLib.leaderships.Leaderships;

@SuppressWarnings("serial")
public class LeadershipsBioGroupsLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int leadershipId = 0;
    int bioGroupId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(LeadershipsBioGroupsLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useBioGroups = false;
   boolean useLeaderships = false;

	public static String leadershipsBioGroupsLinksCountByBioGroups(String ID) throws JspTagException {
		int count = 0;
		LeadershipsBioGroupsLinksIterator theIterator = new LeadershipsBioGroupsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.leaderships_bio_groups_links where 1=1"
						+ " and bio_group_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating LeadershipsBioGroupsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating LeadershipsBioGroupsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean bioGroupsHasLeadershipsBioGroupsLinks(String ID) throws JspTagException {
		return ! leadershipsBioGroupsLinksCountByBioGroups(ID).equals("0");
	}

	public static String leadershipsBioGroupsLinksCountByLeaderships(String ID) throws JspTagException {
		int count = 0;
		LeadershipsBioGroupsLinksIterator theIterator = new LeadershipsBioGroupsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.leaderships_bio_groups_links where 1=1"
						+ " and leadership_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating LeadershipsBioGroupsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating LeadershipsBioGroupsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean leadershipsHasLeadershipsBioGroupsLinks(String ID) throws JspTagException {
		return ! leadershipsBioGroupsLinksCountByLeaderships(ID).equals("0");
	}

	public static Boolean leadershipsBioGroupsLinksExists (String ID) throws JspTagException {
		int count = 0;
		LeadershipsBioGroupsLinksIterator theIterator = new LeadershipsBioGroupsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.leaderships_bio_groups_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating LeadershipsBioGroupsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating LeadershipsBioGroupsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean bioGroupsLeadershipsExists (String ID) throws JspTagException {
		int count = 0;
		LeadershipsBioGroupsLinksIterator theIterator = new LeadershipsBioGroupsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.leaderships_bio_groups_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating LeadershipsBioGroupsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating LeadershipsBioGroupsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		BioGroups theBioGroups = (BioGroups)findAncestorWithClass(this, BioGroups.class);
		if (theBioGroups!= null)
			parentEntities.addElement(theBioGroups);
		Leaderships theLeaderships = (Leaderships)findAncestorWithClass(this, Leaderships.class);
		if (theLeaderships!= null)
			parentEntities.addElement(theLeaderships);

		if (theBioGroups == null) {
		} else {
			bioGroupId = theBioGroups.getID();
		}
		if (theLeaderships == null) {
		} else {
			leadershipId = theLeaderships.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (bioGroupId == 0 ? "" : " and bio_group_id = ?")
                                                        + (leadershipId == 0 ? "" : " and leadership_id = ?")
                                                        + generateLimitCriteria());
            if (bioGroupId != 0) stat.setInt(webapp_keySeq++, bioGroupId);
            if (leadershipId != 0) stat.setInt(webapp_keySeq++, leadershipId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.leaderships_bio_groups_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (bioGroupId == 0 ? "" : " and bio_group_id = ?")
                                                        + (leadershipId == 0 ? "" : " and leadership_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (bioGroupId != 0) stat.setInt(webapp_keySeq++, bioGroupId);
            if (leadershipId != 0) stat.setInt(webapp_keySeq++, leadershipId);
            rs = stat.executeQuery();

            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                if (var != null)
                    pageContext.setAttribute(var, this);
                return EVAL_BODY_INCLUDE;
            }
        } catch (SQLException e) {
            log.error("JDBC error generating LeadershipsBioGroupsLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating LeadershipsBioGroupsLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating LeadershipsBioGroupsLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.leaderships_bio_groups_links");
       if (useBioGroups)
          theBuffer.append(", strapi.bio_groups");
       if (useLeaderships)
          theBuffer.append(", strapi.leaderships");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useBioGroups)
          theBuffer.append(" and strapi.bio_groups.id = strapi.leaderships_bio_groups_links.bio_group_id");
       if (useLeaderships)
          theBuffer.append(" and strapi.leaderships.id = strapi.leaderships_bio_groups_links.leadership_id");

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
            log.error("JDBC error iterating across LeadershipsBioGroupsLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across LeadershipsBioGroupsLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across LeadershipsBioGroupsLinks",e);
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
            log.error("JDBC error ending LeadershipsBioGroupsLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending LeadershipsBioGroupsLinks iterator",e);
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


   public boolean getUseBioGroups() {
        return useBioGroups;
    }

    public void setUseBioGroups(boolean useBioGroups) {
        this.useBioGroups = useBioGroups;
    }

   public boolean getUseLeaderships() {
        return useLeaderships;
    }

    public void setUseLeaderships(boolean useLeaderships) {
        this.useLeaderships = useLeaderships;
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
