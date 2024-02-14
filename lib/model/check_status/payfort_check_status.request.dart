part of amazon_payment_services_apple_pay;

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class PayfortCheckStatusRequest {
  String queryCommand;
  String accessCode;
  String merchantIdentifier;
  String merchantReference;
  String language;
  String signature;

  PayfortCheckStatusRequest({
    required this.queryCommand,
    required this.accessCode,
    required this.merchantIdentifier,
    required this.merchantReference,
    required this.language,
    required this.signature,
  });

  factory PayfortCheckStatusRequest.fromJson(Map<String, dynamic> json) {
    return _$PayfortCheckStatusRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PayfortCheckStatusRequestToJson(this);
}
