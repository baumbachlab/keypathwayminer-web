<%--
  Created by IntelliJ IDEA.
  User: Laura
  Date: 28.08.2018
  Time: 13:55
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Search Network</title>
</head>
<script>

</script>
<body>
<h1>Search Network</h1>

<g:form controller="runKPM" action="searchNetwork" method="post">
    <g:textField name="query" id="searchbox" value="${query}"/>
    <button id="search" value="${species}" name="species" type="submit">Search</button>
</g:form>
<g:if test="${result !=null}">
    <table style="width:1200px;" class="withRowLine">
        <tr>
            <td style="vertical-align:middle;"><b>Name</b></td>
            <td style="vertical-align:middle;"><b>Description</b></td>
            <td style="vertical-align:middle;"><b>Organism</b></td>
            <td style="vertical-align:middle;"><b>Create Time</b></td>
            <td style="vertical-align:middle;"><b>Download</b></td>
        </tr>
        <g:if test="${result.numFound>0}">
            <g:each in="${result.networks}" var="net">
                <tr style="max-height: 20px;">
                    <td><div id="name" style=" height: 1em; padding: 2px; overflow: hidden; width:300px; vertical-align:left;"  onmouseover="this.style.height='auto'" onmouseout="this.style.height='1em'">
                        ${net.name}
                    </div></td>
                    <td><div id="descr" style=" height: 1em; padding: 2px; overflow: hidden; width:400px; vertical-align:left;"  onmouseover="this.style.height='auto'" onmouseout="this.style.height='1em'">
                        ${net.description}
                    </div></td>
                    <td style="width:250px;">
                    <g:each in="${net.properties}" var="prop">
                        <g:if test="${prop.predicateString.equals('organism')}">
                            ${prop.value}
                        </g:if>
                    </g:each>
                    </td>
                    <td style="width:100px;"><g:formatDate date="${net.creationTime}" type="date"/></td>
                    <td style="width:150px;">
                        <g:form controller="runKPM" action="downloadNetwork" method="post">
                            <input type="hidden" value="${species}" name="hspecies" />
                            <button  name="netId" type="submit" id="downloadId"  value="${net.externalId}" onclick="return confirm('Download Network?');">Download</button>
                        </g:form>
                    </td>
                </tr>
            </g:each>
        </g:if>
        <g:else>
             <tr>
                 <td colspan="2">No networks found.</td>
             </tr>
        </g:else>
    </table>
</g:if>



</body>
</html>