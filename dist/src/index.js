var Nightmare = require('nightmare');
var nightmare = Nightmare({ show: false })

nightmare
    .viewport(1920, 3000)
    .goto('http://google.ru/')
    .wait(1000)
    .screenshot('google.png')
    .end()
    .then(function (result) {
        console.log('Final: ', result)
    })
    .catch(function (error) {
        console.error('Search failed:', error);
    });