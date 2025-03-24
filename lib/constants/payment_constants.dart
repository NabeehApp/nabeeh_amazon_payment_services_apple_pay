part of '../amazon_payment_services_apple_pay.dart';

enum PaymentConstants {
  // prod constant
  requestPhrase("requestPhrase"),
  accessCode("accessCode"),
  merchantIdentifier("merchantIdentifier"),
  payfortUrl("payfortUrl"),
  responsePhrase("responsePhrase"),

  //apple pay
  appleRequestPhrase("apple_requestPhrase"),
  appleAccessCode("apple_accessCode"),
  appleResponsePhrase("apple_responsePhrase"),

  // dev constant
  devMerchantIdentifier("dev_merchantIdentifier"),
  devPayfortUrl("dev_payfortUrl"),
  devRequestPhrase("dev_requestPhrase"),
  devAccessCode("dev_accessCode"),
  devResponsePhrase("dev_responsePhrase"),

  //apple pay
  appleDevRequestPhrase("apple_dev_requestPhrase"),
  appleDevAccessCode("apple_dev_accessCode"),
  appleDevResponsePhrase("apple_dev_responsePhrase"),

  //command
  purchaseCommand("PURCHASE"),
  authorizationCommand("AUTHORIZATION"),
  generatedOtpCommand("GENERATE_OTP"),
  checkStatus("CHECK_STATUS"),
  ;

  final String key;

  const PaymentConstants(this.key);
}
