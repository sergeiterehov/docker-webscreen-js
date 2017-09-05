# Quick start!

Making a website screenshots on Node js in Docker (Ubuntu 16.04) using Electron js!

```bash
make build
make run
```

Autorun script ```./dist/run.sh```. Example service code:

```js
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
```