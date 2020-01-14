var exec = require('cordova/exec');

var PLUGUIN_NAME = 'CombinedKeyboard';



var CombinedKeyboard = {

    initialize: function (token, options, success, error) {
        exec(success, error, PLUGUIN_NAME, "initialize", [options]);
    }
}

module.exports = PaypalBraintree;
