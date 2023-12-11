part of '../amazon_payment_services_apple_pay.dart';
enum PaymentEnvironmentConst {
  sandbox("sandbox"),
  appleSandbox("apple_sandbox"),
  production("production"),
  appleProduction("apple_production");

  final String key;

  const PaymentEnvironmentConst(this.key);
}


