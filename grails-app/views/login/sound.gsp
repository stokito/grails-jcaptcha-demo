<html>
    <head>
		<meta name="layout" content="main" />
    </head>
    <body>
        <p>${flash.message ?: ''}</p>
		<g:form name="challenge" action="sound">
            %{--FIXME works only in IE--}%
			%{--<jcaptcha:wav name="sound" autostart="0" width="0" height="0" id="soundChallenge" />--}%
            %{--<g:field type="button" name="playAudio" value="Play Audio" onclick="document.getElementById('soundChallenge').Play()"/><br>--}%


            <audio controls>
                <source src="${g.createLink(controller: "jcaptcha", action: "wav", id: 'sound')}" type="audio/x-wav">
                Your browser does not support this audio format.
            </audio>

			<br>
			<g:textField name="response" value="" /><br>
			<br>
			<g:submitButton name="submit" value="Submit" />
		</g:form>
    </body>
</html>