part of amazon_payment_services_apple_pay;
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
  generatedOtpCommand("GENERATE_OTP");

  final String key;

  const PaymentConstants(this.key);
}

enum PaymentActionConst {
  booking("BOOKING"),
  chargeWallet("CHARGE_WALLET");

  final String key;

  const PaymentActionConst(this.key);
}

enum PaymentEnvironmentConst {
  sandbox("sandbox"),
  appleSandbox("apple_sandbox"),
  production("production"),
  appleProduction("apple_production");

  final String key;

  const PaymentEnvironmentConst(this.key);
}

enum Currency {
  saudiRiyal("SAR"),
  israelShekel("ILS");

  final String key;

  const Currency(this.key);
}
