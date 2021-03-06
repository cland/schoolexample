<%@ page import="com.example.schools.Parent" %>



<div class="fieldcontain ${hasErrors(bean: parentInstance, field: 'children', 'error')} ">
	<label for="children">
		<g:message code="parent.children.label" default="Children" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${parentInstance?.children?}" var="c">
    <li><g:link controller="applicant" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="applicant" action="create" params="['parent.id': parentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'applicant.label', default: 'Applicant')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: parentInstance, field: 'firstname1', 'error')} ">
	<label for="firstname1">
		<g:message code="parent.firstname1.label" default="Firstname1" />
		
	</label>
	<g:textField name="firstname1" value="${parentInstance?.firstname1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parentInstance, field: 'lastname1', 'error')} ">
	<label for="lastname1">
		<g:message code="parent.lastname1.label" default="Lastname1" />
		
	</label>
	<g:textField name="lastname1" value="${parentInstance?.lastname1}"/>
</div>

