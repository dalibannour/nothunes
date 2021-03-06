
<%@ page import="fr.xebia.nothunes.domain.Band" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'band.label', default: 'Band')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    	<g:if test="${bandInstance.logoPath != 'empty'}">
	                    	<tr class="prop">
	                            <td valign="top"><img class="bandLogo" src="${createLink(controller:'dl', action:'images', params: [id: bandInstance.logoPath])}"/></td>
	                        </tr>
                        </g:if>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="band.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bandInstance, field: "name")}</td>
                        </tr>
                        
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="band.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bandInstance, field: "description")}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="band.webSite.label" default="Web Site" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bandInstance, field: "webSite")}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="band.albums.label" default="Albums" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${bandInstance.albums}" var="a">
                                    <li><g:link controller="album" action="show" id="${a.id}">${a?.name.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>                    
                    </tbody>
                </table>
            </div>
    <g:form>
            <div class="buttons">
                
                    <g:hiddenField name="id" value="${bandInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
            
            </div>
          </g:form>
    </body>
</html>
