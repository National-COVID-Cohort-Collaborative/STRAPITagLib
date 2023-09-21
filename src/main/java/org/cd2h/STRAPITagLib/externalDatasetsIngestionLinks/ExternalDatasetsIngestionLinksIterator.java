package org.cd2h.STRAPITagLib.externalDatasetsIngestionLinks;


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
import org.cd2h.STRAPITagLib.contentImageBlockRights.ContentImageBlockRights;
import org.cd2h.STRAPITagLib.externalDatasets.ExternalDatasets;

@SuppressWarnings("serial")
public class ExternalDatasetsIngestionLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int externalDatasetId = 0;
    int contentImageBlockRightId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(ExternalDatasetsIngestionLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useContentImageBlockRights = false;
   boolean useExternalDatasets = false;

	public static String externalDatasetsIngestionLinksCountByContentImageBlockRights(String ID) throws JspTagException {
		int count = 0;
		ExternalDatasetsIngestionLinksIterator theIterator = new ExternalDatasetsIngestionLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.external_datasets_ingestion_links where 1=1"
						+ " and content_image_block_right_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating ExternalDatasetsIngestionLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ExternalDatasetsIngestionLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean contentImageBlockRightsHasExternalDatasetsIngestionLinks(String ID) throws JspTagException {
		return ! externalDatasetsIngestionLinksCountByContentImageBlockRights(ID).equals("0");
	}

	public static String externalDatasetsIngestionLinksCountByExternalDatasets(String ID) throws JspTagException {
		int count = 0;
		ExternalDatasetsIngestionLinksIterator theIterator = new ExternalDatasetsIngestionLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.external_datasets_ingestion_links where 1=1"
						+ " and external_dataset_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating ExternalDatasetsIngestionLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ExternalDatasetsIngestionLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean externalDatasetsHasExternalDatasetsIngestionLinks(String ID) throws JspTagException {
		return ! externalDatasetsIngestionLinksCountByExternalDatasets(ID).equals("0");
	}

	public static Boolean externalDatasetsIngestionLinksExists (String ID) throws JspTagException {
		int count = 0;
		ExternalDatasetsIngestionLinksIterator theIterator = new ExternalDatasetsIngestionLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.external_datasets_ingestion_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating ExternalDatasetsIngestionLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ExternalDatasetsIngestionLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean contentImageBlockRightsExternalDatasetsExists (String ID) throws JspTagException {
		int count = 0;
		ExternalDatasetsIngestionLinksIterator theIterator = new ExternalDatasetsIngestionLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.external_datasets_ingestion_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating ExternalDatasetsIngestionLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ExternalDatasetsIngestionLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		ContentImageBlockRights theContentImageBlockRights = (ContentImageBlockRights)findAncestorWithClass(this, ContentImageBlockRights.class);
		if (theContentImageBlockRights!= null)
			parentEntities.addElement(theContentImageBlockRights);
		ExternalDatasets theExternalDatasets = (ExternalDatasets)findAncestorWithClass(this, ExternalDatasets.class);
		if (theExternalDatasets!= null)
			parentEntities.addElement(theExternalDatasets);

		if (theContentImageBlockRights == null) {
		} else {
			contentImageBlockRightId = theContentImageBlockRights.getID();
		}
		if (theExternalDatasets == null) {
		} else {
			externalDatasetId = theExternalDatasets.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (contentImageBlockRightId == 0 ? "" : " and content_image_block_right_id = ?")
                                                        + (externalDatasetId == 0 ? "" : " and external_dataset_id = ?")
                                                        + generateLimitCriteria());
            if (contentImageBlockRightId != 0) stat.setInt(webapp_keySeq++, contentImageBlockRightId);
            if (externalDatasetId != 0) stat.setInt(webapp_keySeq++, externalDatasetId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.external_datasets_ingestion_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (contentImageBlockRightId == 0 ? "" : " and content_image_block_right_id = ?")
                                                        + (externalDatasetId == 0 ? "" : " and external_dataset_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (contentImageBlockRightId != 0) stat.setInt(webapp_keySeq++, contentImageBlockRightId);
            if (externalDatasetId != 0) stat.setInt(webapp_keySeq++, externalDatasetId);
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
            log.error("JDBC error generating ExternalDatasetsIngestionLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating ExternalDatasetsIngestionLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating ExternalDatasetsIngestionLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.external_datasets_ingestion_links");
       if (useContentImageBlockRights)
          theBuffer.append(", strapi.content_image_block_rights");
       if (useExternalDatasets)
          theBuffer.append(", strapi.external_datasets");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useContentImageBlockRights)
          theBuffer.append(" and strapi.content_image_block_rights.id = strapi.external_datasets_ingestion_links.content_image_block_right_id");
       if (useExternalDatasets)
          theBuffer.append(" and strapi.external_datasets.id = strapi.external_datasets_ingestion_links.external_dataset_id");

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
            log.error("JDBC error iterating across ExternalDatasetsIngestionLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across ExternalDatasetsIngestionLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across ExternalDatasetsIngestionLinks",e);
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
            log.error("JDBC error ending ExternalDatasetsIngestionLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending ExternalDatasetsIngestionLinks iterator",e);
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


   public boolean getUseContentImageBlockRights() {
        return useContentImageBlockRights;
    }

    public void setUseContentImageBlockRights(boolean useContentImageBlockRights) {
        this.useContentImageBlockRights = useContentImageBlockRights;
    }

   public boolean getUseExternalDatasets() {
        return useExternalDatasets;
    }

    public void setUseExternalDatasets(boolean useExternalDatasets) {
        this.useExternalDatasets = useExternalDatasets;
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
