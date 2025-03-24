part of '../../amazon_payment_services_apple_pay.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class PayfortApplePayResponse extends PayfortApplePayRequest {
////// ////   /////

  String? fortId;
  String? authorizationCode;
  String? responseMessage;
  String? responseCode;
  String? status;
  String? cardHolderName;
  String? expiryDate;
  String? cardNumber;
  String? paymentOption;
  String? reconciliationReference;
  String? acquirerResponseCode;

  factory PayfortApplePayResponse.fromJson(Map<String, dynamic> json) {
    return _$PayfortApplePayResponseFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PayfortApplePayResponseToJson(this);

  PayfortApplePayResponse({
    required super.command,
    required super.merchantReference,
    super.currency,
    super.language,
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
    super.applePayMerchantId = '',
    required super.amount,
    // ignore: non_constant_identifier_names
    super.ISO4217Factor,
    super.countryCode,
    super.digitalWallet = 'APPLE_PAY',
    required super.sdkToken,
    super.eci,

    ///
    this.fortId,
    this.authorizationCode,
    this.responseMessage,
    this.responseCode,
    this.status,
    this.cardHolderName,
    this.expiryDate,
    this.cardNumber,
    this.paymentOption,
    this.reconciliationReference,
    this.acquirerResponseCode,
  });
}
