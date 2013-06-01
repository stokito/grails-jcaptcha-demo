class LoginController {

    def jcaptchaService

    def index = {}

    def image = {
        if (params.submit) {
            flash.message = (jcaptchaService.validateResponse("image", session.id, params.response)) ? "Text matches" : "Text doesn't match"
        }
    }

    def sound = {
        if (params.submit) {
            flash.message = (jcaptchaService.validateResponse("sound", session.id, params.response)) ? "Text matches" : "Text doesn't match"
        }
    }

}

