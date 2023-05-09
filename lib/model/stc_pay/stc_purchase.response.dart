part of amazon_payment_services_apple_pay;

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class STCPurchaseResponse extends STCPurchaseRequest {
  String? responseCode;
  String? responseMessage;
  String? fortId;
  String? status;

  factory STCPurchaseResponse.fromJson(Map<String, dynamic> json) {
    return _$STCPurchaseResponseFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$STCPurchaseResponseToJson(this);

  STCPurchaseResponse({
    this.responseCode,
    this.responseMessage,
    required super.command,
    required super.merchantReference,
    required super.customerEmail,
    required super.customerIp,
    required super.accessCode,
    required super.merchantIdentifier,
    required super.amount,
    super.otp,
    required super.signature,
  });
}
