<%@ page import="co.freeside.demo.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'salutation', 'error')} ">
	<label for="salutation">
		<g:message code="person.salutation.label" default="Salutation" />
		
	</label>
	<g:select name="salutation" from="${co.freeside.demo.Salutation?.values()}" keys="${co.freeside.demo.Salutation.values()*.name()}" value="${personInstance?.salutation?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="person.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${personInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="person.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${personInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="person.gender.label" default="Gender" />
		
	</label>
	<g:select name="gender" from="${co.freeside.demo.Gender?.values()}" keys="${co.freeside.demo.Gender.values()*.name()}" value="${personInstance?.gender?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'birthDate', 'error')} ">
	<label for="birthDate">
		<g:message code="person.birthDate.label" default="Birth Date" />
		
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${personInstance?.birthDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="person.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${personInstance?.email}"/>
</div>
<fieldset class="embedded"><legend><g:message code="person.address.label" default="Address" /></legend>
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address.city', 'error')} ">
	<label for="address.city">
		<g:message code="person.address.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${addressInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address.country', 'error')} ">
	<label for="address.country">
		<g:message code="person.address.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${addressInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address.street', 'error')} ">
	<label for="address.street">
		<g:message code="person.address.street.label" default="Street" />
		
	</label>
	<g:textField name="street" value="${addressInstance?.street}"/>
</div>
</fieldset>
