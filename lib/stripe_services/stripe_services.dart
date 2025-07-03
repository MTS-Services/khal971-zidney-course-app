import 'dart:convert';

import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;
import 'package:zidney/constants/constants.dart';


class StripeService{
  StripeService._();

  static final StripeService instance=StripeService._();

  Future<void> makePayment()async{
    try{
      String? result= await _createPaymentIntent(10, "usd");

      if(result==null) return;
      await Stripe.instance.initPaymentSheet(paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: result,
          merchantDisplayName: "Khal"
      ));
      await _processPayment();

    }catch(e){
      print(e.toString());
    }
  }

  Future<String?> _createPaymentIntent(int amount,String currency) async {
    try{
      Map<String,dynamic> data={
        "amount":_calculateAmount(amount),
        "currency":currency,
      };

      var response = await http.post(
          Uri.parse(" https://api.stripe.com/v1/payment_intents"),
        body: jsonEncode(data),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $stripeSecretKey',
        }
      );

      if(response.body.isNotEmpty){
        final decodedData=jsonDecode(response.body);
        return decodedData["client_secret"];
      }
      return null;


    }catch(e){
      print(e.toString());
      return e.toString();
    }
  }

  Future<void> _processPayment()async{
    try{
      await Stripe.instance.presentPaymentSheet();
      await Stripe.instance.confirmPaymentSheetPayment();
    }catch(e){
      print(e.toString());
    }
  }

  String _calculateAmount(int amount){
    final calculatedAmount=amount*100;
    return calculatedAmount.toString();
    
  }

}