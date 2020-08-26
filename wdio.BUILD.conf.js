const path = require('path');

const { config } = require('./wdio.conf.js');

config.capabilities = [{
    browserName: 'chrome',
    'goog:chromeOptions': {
        args: [
            '--disable-infobars',
            '--window-size=1280,800',
            '--headless',
            '--no-sandbox',
            '--disable-gpu',
            '--disable-setuid-sandbox',
            '--disable-dev-shm-usage',
        ],
    },
}];

config.port = 9516;
config.services = [
    [
        'chromedriver',
        {
            chromeDriverArgs: ['--port=9516', '--url-base=\'/\''],
        },
    ],
    [
        'static-server',
        {
            port: 8000,
            folders: [
                { mount: '/', path: path.join(__dirname, 'demo-app') },
            ],
        },
    ],
];
config.path = '/';
config.beforeFeature = () => {
    /**
     * check if static website is up and cancel if not
     */
    browser.url('/');
    const pageTitle = browser.getTitle();
};

if (process.env.CI) {
    config.outputDir = path.join(__dirname, 'logs');
}

exports.config = config;
