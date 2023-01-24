const { resolve } = require('path');

module.exports = {
    path: '/wd/hub',
    port: 4723,
    capabilities: {
        'platformName': 'android',
        'appium:deviceName': 'moto g(10)',
        "appium:platformVersion": "11.0",
        "appium:app": `${resolve('')}/apps/app-tst-debug.apk`,
        'appium:automationName': 'Appium'
    }
};
