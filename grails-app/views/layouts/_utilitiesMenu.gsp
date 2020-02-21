<%-- Quick, self-contained replica of the Ext utilities menu, for use on pages without the Ext library (faceted search) --%>
<g:javascript>
    function toggleMenu() {
        jQuery('#utilitiesMenu').fadeToggle();
    }

    jQuery(document).ready(function () {
        jQuery('body').on('click', '#centerMainPanel', function () {
            jQuery('#utilitiesMenu').hide();
        });
    });
</g:javascript>
<style type="text/css">
#utilitiesMenu {
    font: normal 11px tahoma, arial, sans-serif;
    border: 1px solid #718bb7;
    z-index: 15000;
    zoom: 1;
    background: #f0f0f0 repeat-y;
    padding: 4px;
    position: absolute;
    right: 0;
    top: 24px;
    display: none;
}

#utilitiesMenu a {
    text-decoration: none !important;
    font-weight: normal !important;
}

#utilitiesMenuList {
    background: transparent;
    border: 0 none;
    list-style: none;
    margin: 10px 0 10px 10px;
}

#utilitiesMenu li {
    line-height: 100%;
    padding: 4px;
    border: 1px solid #f0f0f0;
    cursor: pointer;
    text-align: left
}

#utilitiesMenu li:hover {
    background-color: #DDDDFF;
    border: 1px solid #718bb7
}

#utilitiesMenu li a {
    color: #000;
}

#utilitiesMenuList div {
	color: black;
	text-align: left;
	padding: 4px;
}

#utilitiesMenuList ul.subMenu {
	padding-left: 8px;
}

#utilitiesMenuButton {
    cursor: pointer;
    font-weight: bold;
    color: #EEE;
}

li.utilMenuSeparator {
    padding: 0px;
    font-size: 1px;
    line-height: 1px;
}

span.utilMenuSeparator {
    display: block;
    font-size: 1px;
    line-height: 1px;
    margin: 2px 3px;
    background-color: #E0E0E0;
    border-bottom: 1px solid white;
    overflow: hidden;
}
</style>
<th class="menuLink" style="width: 100px; text-align: right">
    <a href="#" onclick="toggleMenu();
    return false;" id="utilitiesMenuButton">Utilities</a>

<g:set var="buildNumber"><g:meta name="environment.BUILD_NUMBER"/></g:set>
<g:set var="buildId"><g:meta name="environment.BUILD_ID"/></g:set>
<div id="utilitiesMenu">
    <div id="utilitiesMenuList">
        <div>Help</div>
		<ul class="subMenu">
			<li><a href="#" onclick="jQuery('#utilitiesMenu').hide();popupWindow('${grailsApplication.config.com.recomdata.adminHelpURL}', '_help')">Transmart Wiki</a></li>
			<li><a href="#" onclick="jQuery('#utilitiesMenu').hide();popupWindow('${grailsApplication.config.quickStartURL}', '_quick_start')">Quick Start Guide</a></li>
			<g:if test="${grailsApplication.config.selectingDataURL != null && !grailsApplication.config.selectingDataURL.isEmpty()}">
				<li><a href="#" onclick="jQuery('#utilitiesMenu').hide();popupWindow('${grailsApplication.config.selectingDataURL}', '_selecting_data')">Selecting Data</a></li>
			</g:if>

			<g:if test="${grailsApplication.config.scatterPlotURL != null && !grailsApplication.config.scatterPlotURL.isEmpty()}">
				<li><a href="#" onclick="jQuery('#utilitiesMenu').hide();popupWindow('${grailsApplication.config.scatterPlotURL}', '_scatter_plot')">Scatter Plot</a></li>
			</g:if>
			<g:if test="${grailsApplication.config.boxPlotURL != null && !grailsApplication.config.boxPlotURL.isEmpty()}">
				<li><a href="#" onclick="jQuery('#utilitiesMenu').hide();popupWindow('${grailsApplication.config.boxPlotURL}', '_box_plot')">Box Plot</a></li>
			</g:if>
			<g:if test="${grailsApplication.config.diffexURL != null && !grailsApplication.config.diffexURL.isEmpty()}">
				<li><a href="#" onclick="jQuery('#utilitiesMenu').hide();popupWindow('${grailsApplication.config.diffexURL}', '_diff_ex')">Differential Expression</a></li>			
			</g:if>
            <g:if test="${grailsApplication.config.metabolitesURL != null && !grailsApplication.config.metabolitesURL.isEmpty()}">
                <li><a href="${grailsApplication.config.metabolitesURL}">Metabolites in tranSMART</a></li>
            </g:if>
            <g:if test="${grailsApplication.config.proteinsURL != null && !grailsApplication.config.proteinsURL.isEmpty()}">
                <li><a href="${grailsApplication.config.proteinsURL}">Proteins in tranSMART</a></li>
            </g:if>
		</ul>
        <li class="utilMenuSeparator"><span class="utilMenuSeparator">&nbsp;</span></li>
		<ul>
        	<g:if test="${grailsApplication.config.com.recomdata.containsKey("bugreportURL")}">
            	<li><a href="#" onclick="jQuery('#utilitiesMenu').hide();window.open('${grailsApplication.config.com.recomdata.bugreportURL}')">Report a Bug</a></li>
        	</g:if>
        	<li><a onclick="jQuery('#utilitiesMenu').hide();" href="mailto:${grailsApplication.config.com.recomdata.contactUs}">Contact Us</a></li>
        	<li class="utilMenuSeparator"><span class="utilMenuSeparator">&nbsp;</span></li>
        	<li><a href="${createLink(controller: 'changeMyPassword', action: 'show')}">Change My Password</a></li>
        	<li><a href="${createLink(controller: 'login', action: 'forceAuth')}">Log Out</a></li>
		</ul>
    </div>
</div>
</th>
