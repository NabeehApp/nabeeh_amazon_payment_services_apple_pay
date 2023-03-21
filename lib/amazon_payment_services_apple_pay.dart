library amazon_payment_services_apple_pay;

import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

part 'channel_name.dart';

part 'environment_type.dart';

part 'request_param_model.dart';

part 'call_back.dart';

class AmazonPaymentServicesApplePay {
  static final MethodChannel _channel = const MethodChannel(AmazonPaymentServicesApplePayChannels.plugin)
    ..setMethodCallHandler(_nativeCallHandler);
  static ApplePayResultCallback? _applePayResultCallback;

  static Future<void> init() async {
    await _channel.invokeMethod(AmazonPaymentServicesApplePayChannels.initialize);
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

  static Future<void> _nativeCallHandler(MethodCall call) async {
    try {
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
}
