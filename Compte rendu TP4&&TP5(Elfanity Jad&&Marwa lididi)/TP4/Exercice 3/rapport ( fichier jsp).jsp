<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>

<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8" />
     <title>Rapport des délibérations </title>
  </head>
  <body>

<%-- Récupération du document XML. --%>
<c:import url="Etudiant.xml" var="documentXML" />
<%-- Analyse du document XML récupéré. --%>
<x:parse var="doc" doc="${documentXML}" />

<p><b>Liste de tous les étudiants :</b></p>
<div>
<ul>
<%-- Parcours du document parsé pour y récupérer chaque nœud "etudiant". --%>
<x:forEach var="etudiant" select="$doc/note/etudiant">
    <%-- Affichage du nom de l'étudiant recupéré. --%>
    <li><x:out select="$etudiant/Nom" />: date de naissance est <x:out select="$etudiant/Datedenaissance" />, sa note finale est :<x:out select="$etudiant/note_finale" />
    <br> 
    le nombre de module validé est : <x:out select="$etudiant/nbrModuleV" />
    </li>
</x:forEach>
</ul>
</div>

<p><b>Liste des étudiants dans un état critique :</b></p>
<div>
<ul>
<%-- Parcours du document parsé pour y récupérer chaque nœud "etudiant" 
    dont le contenu du nœud "nbrModuleV" est inférieur au contenu du nœud
    "minimumav". --%>
<x:forEach var="etudiant" select="$doc/note/etudiant[nbrModuleV < minimumav]">
    <%-- Affichage des titres, stocks et minimaux du livre récupéré. --%>
    <li><x:out select="$etudiant/Nom" /> : Etudiant à risque -> Nombre de module validé <x:out select="$etudiant/nbrModuleV" /> et le minimum de module pour réussir l'année : <x:out select="$etudiant/minimumav" /></li>
</x:forEach>
</ul>
</div>


  </body>
</html>