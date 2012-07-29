
<%@ page import="co.freeside.demo.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li>
							<g:link class="list" action="list">
								<i class="icon-list"></i>
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
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<dl class="dl-horizontal">
				
						<f:display bean="personInstance" property="salutation"/>
				
						<f:display bean="personInstance" property="firstName"/>
				
						<f:display bean="personInstance" property="lastName"/>
				
						<f:display bean="personInstance" property="gender"/>
				
						<f:display bean="personInstance" property="birthDate"/>
				
						<f:display bean="personInstance" property="email"/>
				
						<f:display bean="personInstance" property="address"/>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${personInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${personInstance?.id}">
							<i class="icon-pencil"></i>
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
						<button class="btn btn-danger" type="submit" name="_action_delete">
							<i class="icon-trash icon-white"></i>
							<g:message code="default.button.delete.label" default="Delete" />
						</button>
					</div>
				</g:form>

			</div>

		</div>
	</body>
</html>