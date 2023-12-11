part of '../amazon_payment_services_apple_pay.dart';
enum PaymentActionConst {
  booking("BOOKING"),
  chargeWallet("CHARGE_WALLET");

  final String key;

  const PaymentActionConst(this.key);
}