part of '../../amazon_payment_services_apple_pay.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class PayfortTabbyRequest {
  String command;
  String accessCode;
  String merchantIdentifier;
  String merchantReference;
  String amount;
  String currency;
  String language;
  String customerEmail;
  String? tokenName;
  String paymentOption;
  String? customerIp;
  String? customerName;
  String? merchantExtra;
  String? merchantExtra1;
  String? merchantExtra2;
  String? merchantExtra3;
  String? merchantExtra4;
  String? merchantExtra5;
  String returnUrl;
  String? settlementReference;
  String phoneNumber;
  String? signature;
  String? orderDescription;

  PayfortTabbyRequest({
    this.command = 'PURCHASE',
    required this.accessCode,
    required this.amount,
    this.signature = '',
    required this.merchantIdentifier,
    required this.merchantReference,
    this.currency = 'SAR',
    this.language = 'ar',
    required this.phoneNumber,
    required this.customerEmail,
    this.tokenName,
    this.paymentOption = 'TABBY',
    required this.customerIp,
    this.customerName,
    this.merchantExtra,
    this.merchantExtra1,
    this.merchantExtra2,
    this.merchantExtra3,
    this.merchantExtra4,
    this.merchantExtra5,
    required this.returnUrl,
    this.settlementReference,
    this.orderDescription,
  });

  factory PayfortTabbyRequest.fromJson(Map<String, dynamic> json) {
    return _$PayfortTabbyRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PayfortTabbyRequestToJson(this);
}
