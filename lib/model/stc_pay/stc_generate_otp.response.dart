part of '../../amazon_payment_services_apple_pay.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class STCGenerateOTPResponse extends STCGenerateOTPRequest {
  String? responseCode;
  String? responseMessage;
  String? status;

  STCGenerateOTPResponse({
    super.serviceCommand = 'GENERATE_OTP',
    required super.accessCode,
    required super.amount,
    super.digitalWallet = 'STCPAY',
    super.signature = '',
    required super.merchantIdentifier,
    required super.merchantReference,
    super.currency = 'SAR',
    super.language = 'AR',
    required super.phoneNumber,
    //
    required this.responseCode,
    required this.responseMessage,
    required this.status,
  });

  factory STCGenerateOTPResponse.fromJson(Map<String, dynamic> json) {
    return _$STCGenerateOTPResponseFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$STCGenerateOTPResponseToJson(this);
}
