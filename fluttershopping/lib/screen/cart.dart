import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_braintree/flutter_braintree.dart';
import 'package:fluttershopping/model/cartmodel.dart';
import 'package:scoped_model/scoped_model.dart';
import 'allproduct.dart';

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CartPageState();
  }
}

class _CartPageState extends State<CartPage> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Cart"),
          actions: <Widget>[ 
            FlatButton(
                child: Text(
                  "Clear",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => ScopedModel.of<CartModel>(context).clearCart())
          ],
        ),
        body: ScopedModel.of<CartModel>(context, rebuildOnChange: true)
                    .cart
                    .length ==
                0
            ? Center(
                child: Text("No items in Cart"),
              )
            : Container(
                padding: EdgeInsets.all(8.0),
                child: Column(children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      itemCount: ScopedModel.of<CartModel>(context,
                              rebuildOnChange: true)
                          .total,
                      itemBuilder: (context, index) {
                        return ScopedModelDescendant<CartModel>(
                          builder: (context, child, model) {
                            return ListTile(
                              leading:ClipRRect(child: Image.asset(model.cart[index].images,height: 60, width: 80, ),borderRadius: BorderRadius.circular(10),),
                              title: Text(model.cart[index].title),
                              subtitle: Text(model.cart[index].qty.toString() +
                                  "kg x " +
                                  model.cart[index].price.toString() +
                                  "฿ = " +
                                  (model.cart[index].qty *
                                          model.cart[index].price)
                                      .toString() + "฿"
                                      ),
                              trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        model.updateProduct(model.cart[index],
                                            model.cart[index].qty + 1);
                                        // model.removeProduct(model.cart[index]);
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: () {
                                        model.updateProduct(model.cart[index],
                                            model.cart[index].qty - 1);
                                        // model.removeProduct(model.cart[index]);
                                      },
                                    ),
                                  ]),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Total: \฿ " +
                            ScopedModel.of<CartModel>(context,
                                    rebuildOnChange: true)
                                .totalCartValue
                                .toString() +
                            "",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        color: Colors.yellow[900],
                        textColor: Colors.white,
                        elevation: 0,
                        child: Text("BUY NOW"),
                        onPressed: () async{
                          var request = BraintreeDropInRequest(
                            tokenizationKey:'sandbox_s96j7h2r_qtc7swvs9yp8z8q4',
                            collectDeviceData: true,
                            paypalRequest: BraintreePayPalRequest(
                              amount: ScopedModel.of<CartModel>(context,
                                    rebuildOnChange: true)
                                .totalCartValue
                                .toString(),
                                displayName: auth.currentUser.email,
                            ),
                            googlePaymentRequest: BraintreeGooglePaymentRequest(
                    totalPrice: '1.00',
                    currencyCode: 'THB',
                    billingAddressRequired: false,
                  ),
                            cardEnabled: true
                            
                          );
                          BraintreeDropInResult result = await BraintreeDropIn.start(request);
                          if(result != null ) {
                            print(result.paymentMethodNonce.description);
                            print(result.paymentMethodNonce.nonce);
                          }
                        },
                      )
                      )
                ])));
  }
}
