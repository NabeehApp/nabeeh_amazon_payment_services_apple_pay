library amazon_payment_services_apple_pay;

import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_name.dart';

part 'environment_type.dart';

part 'constants/payment_constants.dart';
part 'constants/payfort_environment.dart';
part 'constants/action.dart';
part 'constants/currency.dart';
part 'constants/payment_method.dart';
part 'model/tabby/payfort_tabby_request.dart';

part 'call_back.dart';


//stc model
part 'model/stc_pay/stc_generate_otp.request.dart';

part 'model/stc_pay/stc_generate_otp.response.dart';

part 'model/stc_pay/stc_purchase.request.dart';

part 'model/stc_pay/stc_purchase.response.dart';

//sdk_tok en
part 'model/sdk_token/sdk_token_request.dart';

part 'model/sdk_token/sdk_token_response.dart';

//payment
part 'model/base_payment_request.dart';

part 'model/credit_card/credit_card_payment_request.dart';

part 'model/credit_card/credit_card_payment_response.dart';

part 'model/apple_pay/payfort_apple_pay_request.dart';

part 'model/apple_pay/payfort_apple_pay_response.dart';

part 'amazon_payment_services_apple_pay.g.dart';

class AmazonPaymentServicesApplePay {
  static final MethodChannel _channel = const MethodChannel(AmazonPaymentServicesApplePayChannels.plugin)
    ..setMethodCallHandler(_handelNativeCall);

  static ApplePayResultCallback? _applePayResultCallback;

  static Future<void> init() async {
    await _channel.invokeMethod(AmazonPaymentServicesApplePayChannels.initialize);
  }

  static Future<void> _handelNativeCall(MethodCall call) async {
    try {
      print("MethodCall $call");
      switch (call.method) {
        case AmazonPaymentServicesApplePayChannels.applePaySuccess:
          if (_applePayResultCallback != null) {
            _applePayResultCallback?.onSucceeded(call.arguments);
          }
          break;
        case AmazonPaymentServicesApplePayChannels.applePayFailed:
          if (_applePayResultCallback != null) {
            _applePayResultCallback?.onFailed(call.arguments['message']);
          }
          break;
        default:
          throw Exception('unknown method called from native');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> applePay(
    Map request,
    EnvironmentType environmentType, {
    bool isShowResponsePage = true,
    required ApplePayResultCallback callback,
  }) async {
    _applePayResultCallback = callback;
    await _channel.invokeMethod(AmazonPaymentServicesApplePayChannels.payWithApplePay, {
      "isShowResponsePage": isShowResponsePage,
      "environmentType": describeEnum(environmentType),
      "requestParam": request,
    });
  }
}
