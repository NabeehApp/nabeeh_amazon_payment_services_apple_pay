part of amazon_payment_services_apple_pay;

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class STCPurchaseRequest extends BasePaymentRequest {
  String accessCode;
  String digitalWallet = 'STCPAY';
  String merchantIdentifier;
  String amount;
  String? otp;
  String signature;

  factory STCPurchaseRequest.fromJson(Map<String, dynamic> json) {
    return _$STCPurchaseRequestFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$STCPurchaseRequestToJson(this);

  STCPurchaseRequest({
    required super.command,
    required super.merchantReference,
    super.currency,
    super.tokenName,
    super.language,
    required super.customerEmail,
    required super.customerIp,
    super.customerName,
    super.phoneNumber,
    super.orderDescription,
    super.merchantExtra,
    super.merchantExtra1,
    super.merchantExtra2,
    super.merchantExtra3,
    super.merchantExtra4,
    super.merchantExtra5,

    //
    this.accessCode = '',
    this.digitalWallet = 'STCPAY',
    this.merchantIdentifier = '',
    required this.amount,
    this.otp,
    this.signature = '',
  });
}
