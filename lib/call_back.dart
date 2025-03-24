part of 'amazon_payment_services_apple_pay.dart';

class ApplePayResultCallback {
  final void Function(LinkedHashMap<Object?, Object?> result) onSucceeded;
  final void Function(dynamic object) onFailed;

  ApplePayResultCallback({required this.onSucceeded, required this.onFailed});
}