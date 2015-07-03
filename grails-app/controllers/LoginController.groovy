import org.grails.plugin.jcaptcha.JcaptchaService

class LoginController {

    JcaptchaService jcaptchaService

    def index = {}

    def image = {
        println session.id
        if (params.submit) {
            flash.message = (jcaptchaService.validateResponse("image", session.id, params.response)) ? "Text matches" : "Text doesn't match"
        }
        render view: 'image'
    }

    def sound = {
        if (params.submit) {
            flash.message = (jcaptchaService.validateResponse("sound", session.id, params.response)) ? "Text matches" : "Text doesn't match"
        }
        render view: 'sound'
    }
}

