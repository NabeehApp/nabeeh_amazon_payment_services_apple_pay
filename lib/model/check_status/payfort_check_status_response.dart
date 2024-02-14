part of amazon_payment_services_apple_pay;

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class PayfortCheckStatusResponse {
  String? transactionCode;
  String? transactionStatus;
  String? responseCode;
  String? signature;
  String? merchantIdentifier;
  String? accessCode;
  String? transactionMessage;
  String? language;
  String? fortId;
  String? refundedAmount;
  String? responseMessage;
  String? merchantReference;
  String? queryCommand;
  String? capturedAmount;
  String? authorizedAmount;
  String? status;

  PayfortCheckStatusResponse();

  factory PayfortCheckStatusResponse.fromJson(Map<String, dynamic> json) {
    return _$PayfortCheckStatusResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PayfortCheckStatusResponseToJson(this);
}
