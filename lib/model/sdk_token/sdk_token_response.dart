part of amazon_payment_services_apple_pay;

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class SdkTokenResponse extends SdkTokenRequest {
  String? responseCode;
  String? sdkToken;
  String? status;

  factory SdkTokenResponse.fromJson(Map<String, dynamic> json) {
    return _$SdkTokenResponseFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$SdkTokenResponseToJson(this);

  SdkTokenResponse({
    super.serviceCommand = 'SDK_TOKEN',
    super.language = '',
    super.accessCode = '',
    super.merchantIdentifier = '',
    super.deviceId = '',
    super.signature = '',
    this.responseCode,
    this.sdkToken,
    this.status,
  });
}
