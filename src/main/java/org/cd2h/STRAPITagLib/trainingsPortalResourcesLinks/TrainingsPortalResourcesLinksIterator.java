package org.cd2h.STRAPITagLib.trainingsPortalResourcesLinks;


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
import org.cd2h.STRAPITagLib.resources.Resources;
import org.cd2h.STRAPITagLib.trainings.Trainings;

@SuppressWarnings("serial")
public class TrainingsPortalResourcesLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int trainingId = 0;
    int resourceId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(TrainingsPortalResourcesLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useResources = false;
   boolean useTrainings = false;

	public static String trainingsPortalResourcesLinksCountByResources(String ID) throws JspTagException {
		int count = 0;
		TrainingsPortalResourcesLinksIterator theIterator = new TrainingsPortalResourcesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.trainings_portal_resources_links where 1=1"
						+ " and resource_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating TrainingsPortalResourcesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating TrainingsPortalResourcesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean resourcesHasTrainingsPortalResourcesLinks(String ID) throws JspTagException {
		return ! trainingsPortalResourcesLinksCountByResources(ID).equals("0");
	}

	public static String trainingsPortalResourcesLinksCountByTrainings(String ID) throws JspTagException {
		int count = 0;
		TrainingsPortalResourcesLinksIterator theIterator = new TrainingsPortalResourcesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.trainings_portal_resources_links where 1=1"
						+ " and training_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating TrainingsPortalResourcesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating TrainingsPortalResourcesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean trainingsHasTrainingsPortalResourcesLinks(String ID) throws JspTagException {
		return ! trainingsPortalResourcesLinksCountByTrainings(ID).equals("0");
	}

	public static Boolean trainingsPortalResourcesLinksExists (String ID) throws JspTagException {
		int count = 0;
		TrainingsPortalResourcesLinksIterator theIterator = new TrainingsPortalResourcesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.trainings_portal_resources_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating TrainingsPortalResourcesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating TrainingsPortalResourcesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean resourcesTrainingsExists (String ID) throws JspTagException {
		int count = 0;
		TrainingsPortalResourcesLinksIterator theIterator = new TrainingsPortalResourcesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.trainings_portal_resources_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating TrainingsPortalResourcesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating TrainingsPortalResourcesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		Resources theResources = (Resources)findAncestorWithClass(this, Resources.class);
		if (theResources!= null)
			parentEntities.addElement(theResources);
		Trainings theTrainings = (Trainings)findAncestorWithClass(this, Trainings.class);
		if (theTrainings!= null)
			parentEntities.addElement(theTrainings);

		if (theResources == null) {
		} else {
			resourceId = theResources.getID();
		}
		if (theTrainings == null) {
		} else {
			trainingId = theTrainings.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (resourceId == 0 ? "" : " and resource_id = ?")
                                                        + (trainingId == 0 ? "" : " and training_id = ?")
                                                        + generateLimitCriteria());
            if (resourceId != 0) stat.setInt(webapp_keySeq++, resourceId);
            if (trainingId != 0) stat.setInt(webapp_keySeq++, trainingId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.trainings_portal_resources_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (resourceId == 0 ? "" : " and resource_id = ?")
                                                        + (trainingId == 0 ? "" : " and training_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (resourceId != 0) stat.setInt(webapp_keySeq++, resourceId);
            if (trainingId != 0) stat.setInt(webapp_keySeq++, trainingId);
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
            log.error("JDBC error generating TrainingsPortalResourcesLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating TrainingsPortalResourcesLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating TrainingsPortalResourcesLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.trainings_portal_resources_links");
       if (useResources)
          theBuffer.append(", strapi.resources");
       if (useTrainings)
          theBuffer.append(", strapi.trainings");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useResources)
          theBuffer.append(" and strapi.resources.id = strapi.trainings_portal_resources_links.resource_id");
       if (useTrainings)
          theBuffer.append(" and strapi.trainings.id = strapi.trainings_portal_resources_links.training_id");

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
            log.error("JDBC error iterating across TrainingsPortalResourcesLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across TrainingsPortalResourcesLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across TrainingsPortalResourcesLinks",e);
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
            log.error("JDBC error ending TrainingsPortalResourcesLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending TrainingsPortalResourcesLinks iterator",e);
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


   public boolean getUseResources() {
        return useResources;
    }

    public void setUseResources(boolean useResources) {
        this.useResources = useResources;
    }

   public boolean getUseTrainings() {
        return useTrainings;
    }

    public void setUseTrainings(boolean useTrainings) {
        this.useTrainings = useTrainings;
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
