package org.cd2h.STRAPITagLib.workstreamInstancesBiosLinks;


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
import org.cd2h.STRAPITagLib.bios.Bios;
import org.cd2h.STRAPITagLib.workstreamInstances.WorkstreamInstances;

@SuppressWarnings("serial")
public class WorkstreamInstancesBiosLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int workstreamInstanceId = 0;
    int bioId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(WorkstreamInstancesBiosLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useBios = false;
   boolean useWorkstreamInstances = false;

	public static String workstreamInstancesBiosLinksCountByBios(String ID) throws JspTagException {
		int count = 0;
		WorkstreamInstancesBiosLinksIterator theIterator = new WorkstreamInstancesBiosLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.workstream_instances_bios_links where 1=1"
						+ " and bio_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating WorkstreamInstancesBiosLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating WorkstreamInstancesBiosLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean biosHasWorkstreamInstancesBiosLinks(String ID) throws JspTagException {
		return ! workstreamInstancesBiosLinksCountByBios(ID).equals("0");
	}

	public static String workstreamInstancesBiosLinksCountByWorkstreamInstances(String ID) throws JspTagException {
		int count = 0;
		WorkstreamInstancesBiosLinksIterator theIterator = new WorkstreamInstancesBiosLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.workstream_instances_bios_links where 1=1"
						+ " and workstream_instance_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating WorkstreamInstancesBiosLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating WorkstreamInstancesBiosLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean workstreamInstancesHasWorkstreamInstancesBiosLinks(String ID) throws JspTagException {
		return ! workstreamInstancesBiosLinksCountByWorkstreamInstances(ID).equals("0");
	}

	public static Boolean workstreamInstancesBiosLinksExists (String ID) throws JspTagException {
		int count = 0;
		WorkstreamInstancesBiosLinksIterator theIterator = new WorkstreamInstancesBiosLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.workstream_instances_bios_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating WorkstreamInstancesBiosLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating WorkstreamInstancesBiosLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean biosWorkstreamInstancesExists (String ID) throws JspTagException {
		int count = 0;
		WorkstreamInstancesBiosLinksIterator theIterator = new WorkstreamInstancesBiosLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.workstream_instances_bios_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating WorkstreamInstancesBiosLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating WorkstreamInstancesBiosLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		Bios theBios = (Bios)findAncestorWithClass(this, Bios.class);
		if (theBios!= null)
			parentEntities.addElement(theBios);
		WorkstreamInstances theWorkstreamInstances = (WorkstreamInstances)findAncestorWithClass(this, WorkstreamInstances.class);
		if (theWorkstreamInstances!= null)
			parentEntities.addElement(theWorkstreamInstances);

		if (theBios == null) {
		} else {
			bioId = theBios.getID();
		}
		if (theWorkstreamInstances == null) {
		} else {
			workstreamInstanceId = theWorkstreamInstances.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (bioId == 0 ? "" : " and bio_id = ?")
                                                        + (workstreamInstanceId == 0 ? "" : " and workstream_instance_id = ?")
                                                        + generateLimitCriteria());
            if (bioId != 0) stat.setInt(webapp_keySeq++, bioId);
            if (workstreamInstanceId != 0) stat.setInt(webapp_keySeq++, workstreamInstanceId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.workstream_instances_bios_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (bioId == 0 ? "" : " and bio_id = ?")
                                                        + (workstreamInstanceId == 0 ? "" : " and workstream_instance_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (bioId != 0) stat.setInt(webapp_keySeq++, bioId);
            if (workstreamInstanceId != 0) stat.setInt(webapp_keySeq++, workstreamInstanceId);
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
            log.error("JDBC error generating WorkstreamInstancesBiosLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating WorkstreamInstancesBiosLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating WorkstreamInstancesBiosLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.workstream_instances_bios_links");
       if (useBios)
          theBuffer.append(", strapi.bios");
       if (useWorkstreamInstances)
          theBuffer.append(", strapi.workstream_instances");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useBios)
          theBuffer.append(" and strapi.bios.id = strapi.workstream_instances_bios_links.bio_id");
       if (useWorkstreamInstances)
          theBuffer.append(" and strapi.workstream_instances.id = strapi.workstream_instances_bios_links.workstream_instance_id");

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
            log.error("JDBC error iterating across WorkstreamInstancesBiosLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across WorkstreamInstancesBiosLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across WorkstreamInstancesBiosLinks",e);
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
            log.error("JDBC error ending WorkstreamInstancesBiosLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending WorkstreamInstancesBiosLinks iterator",e);
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


   public boolean getUseBios() {
        return useBios;
    }

    public void setUseBios(boolean useBios) {
        this.useBios = useBios;
    }

   public boolean getUseWorkstreamInstances() {
        return useWorkstreamInstances;
    }

    public void setUseWorkstreamInstances(boolean useWorkstreamInstances) {
        this.useWorkstreamInstances = useWorkstreamInstances;
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
