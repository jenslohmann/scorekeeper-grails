<%@ page import="dk.jlo.scorekeeper.Tournament" %>



<div class="fieldcontain ${hasErrors(bean: tournamentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="tournament.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${tournamentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tournamentInstance, field: 'matches', 'error')} ">
	<label for="matches">
		<g:message code="tournament.matches.label" default="Matches" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${tournamentInstance?.matches?}" var="m">
    <li><g:link controller="match" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="match" action="create" params="['tournament.id': tournamentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'match.label', default: 'Match')])}</g:link>
</li>
</ul>

</div>

