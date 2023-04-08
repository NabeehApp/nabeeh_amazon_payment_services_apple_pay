part of amazon_payment_services_apple_pay;

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class SdkTokenRequest {
  String serviceCommand;
  String language;
  String accessCode;
  String merchantIdentifier;
  String deviceId;
  String signature;

  factory SdkTokenRequest.fromJson(Map<String, dynamic> json) {
    return _$SdkTokenRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SdkTokenRequestToJson(this);

  SdkTokenRequest({
    this.serviceCommand = 'SDK_TOKEN',
    required this.language,
    required this.accessCode,
    required this.merchantIdentifier,
    required this.deviceId,
    this.signature = '',
  });
}
