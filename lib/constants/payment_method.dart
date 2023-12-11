part of '../amazon_payment_services_apple_pay.dart';

enum NabeehPaymentMethod {
  card("CARD"),
  applePay("APPLE_PAY"),
  stc("E_WALLET_STC"),
  tabby("TABBY"),
  ;

  final String key;

  const NabeehPaymentMethod(this.key);
}
