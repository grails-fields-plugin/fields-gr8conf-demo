<g:each var="option" in="${type.values()}">
	<label class="radio">
		<input type="radio" name="${property}" value="${option}" <g:if test="${option == value}">checked</g:if>>
		${option}
	</label>
</g:each>