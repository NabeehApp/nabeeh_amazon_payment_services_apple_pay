part of amazon_payment_services_apple_pay;

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class CreditCardPaymentRequest extends BasePaymentRequest {
  // String command;

  // String merchantReference;

  // Remember – Before sending the transaction value you must multiply the value by a factor that matches the ISO 4217 specification for that currency. Multiplication is necessary to accommodate decimal values. Each currency’s 3-digit ISO code will have a specification for the number of digits after the decimal separator.
  // For example: If the transaction value is 500 AED; according to ISO 4217, you should multiply the value with 100 (to accommodate 2 decimal points). You will therefore send an AED 500 purchase amount as a value of 50000.
  // Another example: If the amount value was 100 JOD; according to ISO 4217, you should multiply the value with 1000 (to accommodate 3 decimal points). You therefore send a JOD 100 purchase amount as a value of 100000.

  String amount;

  String sdkToken;

  // example  -MASTERCARD -VISA ...
  String? paymentOption;

  // Possible/ expected values: ECOMMERCE
  String? eci;

  // The Merchant submits unique value to Amazon Payment Services. The
  // value is then passed to the Acquiring bank and displayed to the merchant
  // in the Acquirer settlement file.
  // Example: XYZ9239-yu898
  // Special characters: - _ .
  String? settlementReference;

  // The state or province of the address.
  String? billingStateProvince;

  // The three character ISO 3166-2 country subdivision code for the state or
  // province of the address. Providing this field might improve your payer experience for 3-D Secure payer authentication.
  // Reference: ISO_3166-2
  // Example1: AM
  // Example2: AT
  String? billingProvinceCode;
  String? billingStreet;
  String? billingStreet2;
  String? billingPostcode;
  String? billingCountry;

  // The name of the company associated with this address.
  String? billingCompany;
  String? billingCity;

  // The state or province of the address.
  String? shippingStateProvince;
  String? shippingProvinceCode;
  String? shippingStreet;
  String? shippingStreet2;

  // How you obtained the shipping address.
  // Possible/ expected values: NEW_ADDRESS, ADDRESS_ON_FILE
  String? shippingSource;
  String? shippingSameAsBilling;
  String? shippingPostcode;
  String? shippingCountry;
  String? shippingCity;

  // identifier for the agreement with the payer to process payments to be
  // used in recurring payments
  // (  for MADA )
  String? agreementId;

  // Indicates if the subsequent payments within the agreement has same/different amount or unscheduled (unknown interval/amount).
  // ( Required for MADA )
  // Possible/ expected values: UNSCHEDULED, VARIABLE, FIXED
  String? recurringMode;

  //  The number of merchant-initiated payments within the recurring payment agreement.
  // ( Required for MADA and only if recurring_mode = VARIABLE or FIXED )
  String? recurringTransactionsCount;

  CreditCardPaymentRequest({
    required super.command,
    required super.merchantReference,
    required this.amount,
    super.currency = "SAR",
    required super.language,
    required super.customerEmail,
    super.orderDescription,
    required super.customerIp,
    super.customerName,
    super.phoneNumber,
    super.merchantExtra,
    super.merchantExtra1,
    super.merchantExtra2,
    super.merchantExtra3,
    super.merchantExtra4,
    super.merchantExtra5,
    required this.sdkToken,
    super.tokenName,
    this.paymentOption,
    this.eci,
    this.settlementReference,
    this.billingStateProvince,
    this.billingProvinceCode,
    this.billingStreet,
    this.billingStreet2,
    this.billingPostcode,
    this.billingCountry,
    this.billingCompany,
    this.billingCity,
    this.shippingStateProvince,
    this.shippingProvinceCode,
    this.shippingStreet,
    this.shippingStreet2,
    this.shippingSource,
    this.shippingSameAsBilling,
    this.shippingPostcode,
    this.shippingCountry,
    this.shippingCity,
    this.agreementId,
    this.recurringMode,
    this.recurringTransactionsCount,
  });

  factory CreditCardPaymentRequest.fromJson(Map<String, dynamic> json) => _$CreditCardPaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreditCardPaymentRequestToJson(this);
}
