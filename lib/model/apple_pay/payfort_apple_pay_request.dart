part of '../../amazon_payment_services_apple_pay.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class PayfortApplePayRequest extends BasePaymentRequest {
////// ////   /////
  String applePayMerchantId;

  // real amount not with iso 4217
  String amount;
  @JsonKey(name: "ISO_4217_factor")
  // ignore: non_constant_identifier_names
  String ISO4217Factor;
  String countryCode;
  String digitalWallet;
  String sdkToken;
  String? eci;

  factory PayfortApplePayRequest.fromJson(Map<String, dynamic> json) {
    return _$PayfortApplePayRequestFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PayfortApplePayRequestToJson(this);

  PayfortApplePayRequest({
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
    required this.applePayMerchantId,
    required this.amount,
    // ignore: non_constant_identifier_names
    this.ISO4217Factor = '100',
    this.countryCode = 'SA',
    this.digitalWallet = 'APPLE_PAY',
    required this.sdkToken,
    this.eci,
  });
}
