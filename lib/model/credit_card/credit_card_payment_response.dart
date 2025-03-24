// ignore_for_file: invalid_annotation_target

part of '../../amazon_payment_services_apple_pay.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class CreditCardPaymentResponse extends CreditCardPaymentRequest {
  // The order’s unique reference returned by our system.
  String? fortId;

  String? authorizationCode;
  String? responseMessage;
  String? responseCode;
  String? expiryDate;

  //The masked credit card’s number. Only the MEEZA payment option takes
  // 19 digits card number.
  // AMEX payment option takes 15 digits card number.
  // Otherwise, they take 16 digits card number.
  // Example: 400555*****0001
  String? cardNumber;
  dynamic status;

  CreditCardPaymentResponse({
    required super.command,
    required super.merchantReference,
    required super.amount,
    super.currency = "SAR",
    super.language,
    required super.customerEmail,
    required super.sdkToken,
    super.tokenName,
    this.fortId,
    super.paymentOption,
    super.eci,
    this.authorizationCode,
    super.orderDescription,
    this.responseMessage,
    this.responseCode,
    required super.customerIp,
    super.customerName,
    this.expiryDate,
    this.cardNumber,
    this.status,
    super.phoneNumber,
    super.settlementReference,
    super.merchantExtra,
    super.merchantExtra1,
    super.merchantExtra2,
    super.merchantExtra3,
    super.merchantExtra4,
    super.merchantExtra5,
    super.billingStateProvince,
    super.billingProvinceCode,
    super.billingStreet,
    super.billingStreet2,
    super.billingPostcode,
    super.billingCountry,
    super.billingCompany,
    super.billingCity,
    super.shippingStateProvince,
    super.shippingProvinceCode,
    super.shippingStreet,
    super.shippingStreet2,
    super.shippingSource,
    super.shippingSameAsBilling,
    super.shippingPostcode,
    super.shippingCountry,
    super.shippingCity,
    super.agreementId,
  });

  factory CreditCardPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$CreditCardPaymentResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreditCardPaymentResponseToJson(this);
}
