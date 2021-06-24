const functions = required("firebase-functions");
const braintree = require('braintree');

const gateway = new braintree.BraintreeGateway({
    environment: braintree.Environment.Sandbox,
    merchantId:'qtc7swvs9yp8z8q4',
    publicKey: 'gd7jcjd373cyr4mq',
    privateKey: '694a815d8669b47da4a530a563a4bfb9',
});

exports.paypalPayment = funtions.https.onRequest(async (req, res) => {
    const nonceFromTheClient = req.body.payment_method_nonce;
    const deviceData = req.body.device_data;

    gateway.transaction.sale({
        amount: '1',
        paymentMethodNonce: nonceFromTheClient,
        deviceData: deviceData,
        options: {
            submitForSettlement: true
        }
    }, (err, result) => {
        if (err != null) {
            console.log(err);
        }
        else {
            res.json({
                result: 'success'
            });
        }
    }
    );
});