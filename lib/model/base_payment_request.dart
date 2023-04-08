part of amazon_payment_services_apple_pay;

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class BasePaymentRequest {
  String command;
  String merchantReference;
  String currency;
  String? tokenName;
  String? language;
  String customerEmail;
  String? customerIp;
  String? customerName;
  String? phoneNumber;
  String? orderDescription;

  // Extra data sent by merchant. Will be received and sent back as received.
  // Will not be displayed in any report.
  // Example: JohnSmith
  String? merchantExtra;
  String? merchantExtra1;
  String? merchantExtra2;
  String? merchantExtra3;
  String? merchantExtra4;
  String? merchantExtra5;

  BasePaymentRequest({
    required this.command,
    required this.merchantReference,
    this.currency = 'SAR',
    this.tokenName,
    this.language = 'ar',
    required this.customerEmail,
    required this.customerIp,
    this.customerName,
    this.phoneNumber,
    this.orderDescription,
    this.merchantExtra,
    this.merchantExtra1,
    this.merchantExtra2,
    this.merchantExtra3,
    this.merchantExtra4,
    this.merchantExtra5,
  });

  factory BasePaymentRequest.fromJson(Map<String, dynamic> json) {
    return _$BasePaymentRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BasePaymentRequestToJson(this);
}
