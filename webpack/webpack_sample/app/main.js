var greeter = require('./Greeter.js'); //웹팩은 commonJS 모듈 require를 기본적으로 지원한다.
document.getElementById('root').appendChild(greeter());
