part of '../../amazon_payment_services_apple_pay.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class STCGenerateOTPRequest {
  String serviceCommand;
  String accessCode;
  String amount;
  String digitalWallet;
  String signature;
  String merchantIdentifier;
  String merchantReference;
  String currency;
  String language;
  String phoneNumber;

  STCGenerateOTPRequest({
    this.serviceCommand = 'GENERATE_OTP',
    required this.accessCode,
    required this.amount,
    this.digitalWallet = 'STCPAY',
    this.signature = '',
    required this.merchantIdentifier,
    required this.merchantReference,
    this.currency = 'SAR',
    this.language = 'AR',
    required this.phoneNumber,
  });

  factory STCGenerateOTPRequest.fromJson(Map<String, dynamic> json) {
    return _$STCGenerateOTPRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$STCGenerateOTPRequestToJson(this);
}
