import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/ui/widgets/custom_button.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

late Razorpay _razorpay;
   @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_1DP5mmOlF5G5ag',
      'amount': 2000,
      'name': 'Acme Corp.',
      'description': 'Fine T-Shirt',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("SUCCESS: " + response.paymentId!)));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("ERROR: " + response.code.toString() + " - " + response.message!)));
    
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("EXTERNAL_WALLET: " + response.walletName!)));
    
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 32.w, right: 32.w),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            addToCartButton(
              "5567",
              "PAY ONLINE",
              () {},
            ),
            SizedBox(
              height: 23.h,
            ),
          ],
        ),
      ),
    );
  }

