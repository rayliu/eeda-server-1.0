<#if persons?has_content>
<ul>
	<#list persons as person>
		<li>${person.firstName?if_exists} ${person.lastName?if_exists}</li>
	</#list>
</ul>
</#if>