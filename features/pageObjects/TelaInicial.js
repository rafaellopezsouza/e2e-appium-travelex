class TelaInicial {
    constructor() {
        this.btnAccessAcount = '//android.widget.Button[@content-desc="Acessar conta"]'
        this.btnCreateAcount = '//android.widget.Button[@content-desc="Criar conta"]'
        this.alertExchange = '//android.view.View[@content-desc="Alerta de Câmbio"]'
        this.textPageCreateAccount = '//android.view.View[@content-desc="Bem-vindo à Travelex Confidence"]'
    }

    async clickAccessAcount(driver) {
        await driver.$(this.btnAccessAcount).click();
    }

    async clickCreateAccount(driver) {
        await driver.$(this.btnCreateAcount).click();
    }

    async clickAlertExchange(driver) {
        await driver.$(this.alertExchange).click();
    }

    async getTextCreateAccountText(){
        await textPageCreateAccount.getText()
    }

}

module.exports = new TelaInicial();