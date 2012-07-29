
<%@ page import="co.freeside.demo.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li class="active">
							<g:link class="list" action="list">
								<i class="icon-list icon-white"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
						</li>
						<li>
							<g:link class="create" action="create">
								<i class="icon-plus"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>

			<div class="span9">
				
				<div class="page-header">
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<table class="table table-striped">
					<thead>
						<tr>
						
							<g:sortableColumn property="salutation" title="${message(code: 'person.salutation.label', default: 'Salutation')}" />
						
							<g:sortableColumn property="firstName" title="${message(code: 'person.firstName.label', default: 'First Name')}" />
						
							<g:sortableColumn property="lastName" title="${message(code: 'person.lastName.label', default: 'Last Name')}" />
						
							<g:sortableColumn property="gender" title="${message(code: 'person.gender.label', default: 'Gender')}" />
						
							<g:sortableColumn property="birthDate" title="${message(code: 'person.birthDate.label', default: 'Birth Date')}" />
						
							<g:sortableColumn property="email" title="${message(code: 'person.email.label', default: 'Email')}" />
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${personInstanceList}" var="personInstance">
						<tr>
						
							<f:display bean="${personInstance}" property="salutation"/>
						
							<f:display bean="${personInstance}" property="firstName"/>
						
							<f:display bean="${personInstance}" property="lastName"/>
						
							<f:display bean="${personInstance}" property="gender"/>
						
							<f:display bean="${personInstance}" property="birthDate"/>
						
							<f:display bean="${personInstance}" property="email"/>
						
							<td class="link">
								<g:link action="show" id="${personInstance.id}" class="btn btn-small">Show &raquo;</g:link>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<bootstrap:paginate total="${personInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>