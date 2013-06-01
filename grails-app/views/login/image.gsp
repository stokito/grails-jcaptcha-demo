<html>
    <head>
		<meta name="layout" content="main" />
    </head>
    <body>
        <p>${flash.message ?: ''}</p>
		<g:form name="challenge" action="image">
			<jcaptcha:jpeg name="image" /><br>
			<br>
			<g:textField name="response" value=""/><br>
			<br>
			<g:submitButton name="submit" value="Submit" />
		</g:form>
    </body>
</html>