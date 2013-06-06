<%@ page import="dk.jlo.scorekeeper.Match" %>



<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'score', 'error')} ">
	<label for="score">
		<g:message code="match.score.label" default="Score" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${matchInstance?.score?}" var="s">
    <li><g:link controller="score" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="score" action="create" params="['match.id': matchInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'score.label', default: 'Score')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'time', 'error')} required">
	<label for="time">
		<g:message code="match.time.label" default="Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="time" precision="day"  value="${matchInstance?.time}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'tournament', 'error')} required">
	<label for="tournament">
		<g:message code="match.tournament.label" default="Tournament" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tournament" name="tournament.id" from="${dk.jlo.scorekeeper.Tournament.list()}" optionKey="id" required="" value="${matchInstance?.tournament?.id}" class="many-to-one"/>
</div>

