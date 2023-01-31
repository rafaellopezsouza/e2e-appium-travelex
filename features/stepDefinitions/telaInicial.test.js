const { Given, When, Then } = require('@cucumber/cucumber');
const capabilities = require('../../helpers/capabilities');
const wdio = require("webdriverio");
const po = require('../pageObjects/TelaInicial')
const { resolve } = require('path')


var driver;

Given('que o usuário abra o app', { timeout: 80000 }, async () => {
    driver = await wdio.remote(capabilities);
    const absolute = resolve('')
    console.log("CAMINHO: " + absolute)
});

When('clicar no botão {string}', { timeout: 80000 }, async function (condition) {
    switch (condition) {
        case 'Acessar Conta':
            po.clickAccessAcount(driver);
            break;
        case 'Criar Conta':
            po.clickCreateAccount(driver);
            break;
        case 'Alerta de Câmbio':
            po.clickAlertExchange(driver);
            break;
        default:
            throw { message: 'Opção não encontrada: ' + condition };
    }
});


Then('a tela de {string} deverá ser exibida', function (page) {
    switch (page) {
        case 'Login':
            console.log("Pagina de Login");
            driver.takeScreenshot();
            break;
        case 'Cadastro':
            console.log("Pagina de Cadastro");
            driver.takeScreenshot();
            po.getTextCreateAccoutPage()
            break;
        case 'Alerta de Câmbio':
            console.log("Alerta de Câmbio");
            driver.takeScreenshot();
            break;
        default:
            throw { message: 'Opção não encontrada: ' + condition };
    }
});
