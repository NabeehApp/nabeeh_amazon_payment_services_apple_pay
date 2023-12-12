// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amazon_payment_services_apple_pay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

STCGenerateOTPRequest _$STCGenerateOTPRequestFromJson(
        Map<String, dynamic> json) =>
    STCGenerateOTPRequest(
      serviceCommand: json['service_command'] as String? ?? 'GENERATE_OTP',
      accessCode: json['access_code'] as String,
      amount: json['amount'] as String,
      digitalWallet: json['digital_wallet'] as String? ?? 'STCPAY',
      signature: json['signature'] as String? ?? '',
      merchantIdentifier: json['merchant_identifier'] as String,
      merchantReference: json['merchant_reference'] as String,
      currency: json['currency'] as String? ?? 'SAR',
      language: json['language'] as String? ?? 'AR',
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$STCGenerateOTPRequestToJson(
        STCGenerateOTPRequest instance) =>
    <String, dynamic>{
      'service_command': instance.serviceCommand,
      'access_code': instance.accessCode,
      'amount': instance.amount,
      'digital_wallet': instance.digitalWallet,
      'signature': instance.signature,
      'merchant_identifier': instance.merchantIdentifier,
      'merchant_reference': instance.merchantReference,
      'currency': instance.currency,
      'language': instance.language,
      'phone_number': instance.phoneNumber,
    };

STCGenerateOTPResponse _$STCGenerateOTPResponseFromJson(
        Map<String, dynamic> json) =>
    STCGenerateOTPResponse(
      serviceCommand: json['service_command'] as String? ?? 'GENERATE_OTP',
      accessCode: json['access_code'] as String,
      amount: json['amount'] as String,
      digitalWallet: json['digital_wallet'] as String? ?? 'STCPAY',
      signature: json['signature'] as String? ?? '',
      merchantIdentifier: json['merchant_identifier'] as String,
      merchantReference: json['merchant_reference'] as String,
      currency: json['currency'] as String? ?? 'SAR',
      language: json['language'] as String? ?? 'AR',
      phoneNumber: json['phone_number'] as String,
      responseCode: json['response_code'] as String?,
      responseMessage: json['response_message'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$STCGenerateOTPResponseToJson(
    STCGenerateOTPResponse instance) {
  final val = <String, dynamic>{
    'service_command': instance.serviceCommand,
    'access_code': instance.accessCode,
    'amount': instance.amount,
    'digital_wallet': instance.digitalWallet,
    'signature': instance.signature,
    'merchant_identifier': instance.merchantIdentifier,
    'merchant_reference': instance.merchantReference,
    'currency': instance.currency,
    'language': instance.language,
    'phone_number': instance.phoneNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('response_code', instance.responseCode);
  writeNotNull('response_message', instance.responseMessage);
  writeNotNull('status', instance.status);
  return val;
}

STCPurchaseRequest _$STCPurchaseRequestFromJson(Map<String, dynamic> json) =>
    STCPurchaseRequest(
      command: json['command'] as String,
      merchantReference: json['merchant_reference'] as String,
      currency: json['currency'] as String? ?? 'SAR',
      tokenName: json['token_name'] as String?,
      language: json['language'] as String? ?? 'ar',
      customerEmail: json['customer_email'] as String,
      customerIp: json['customer_ip'] as String?,
      customerName: json['customer_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      orderDescription: json['order_description'] as String?,
      merchantExtra: json['merchant_extra'] as String?,
      merchantExtra1: json['merchant_extra1'] as String?,
      merchantExtra2: json['merchant_extra2'] as String?,
      merchantExtra3: json['merchant_extra3'] as String?,
      merchantExtra4: json['merchant_extra4'] as String?,
      merchantExtra5: json['merchant_extra5'] as String?,
      accessCode: json['access_code'] as String? ?? '',
      digitalWallet: json['digital_wallet'] as String? ?? 'STCPAY',
      merchantIdentifier: json['merchant_identifier'] as String? ?? '',
      amount: json['amount'] as String,
      otp: json['otp'] as String?,
      signature: json['signature'] as String? ?? '',
    );

Map<String, dynamic> _$STCPurchaseRequestToJson(STCPurchaseRequest instance) {
  final val = <String, dynamic>{
    'command': instance.command,
    'merchant_reference': instance.merchantReference,
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token_name', instance.tokenName);
  writeNotNull('language', instance.language);
  val['customer_email'] = instance.customerEmail;
  writeNotNull('customer_ip', instance.customerIp);
  writeNotNull('customer_name', instance.customerName);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('order_description', instance.orderDescription);
  writeNotNull('merchant_extra', instance.merchantExtra);
  writeNotNull('merchant_extra1', instance.merchantExtra1);
  writeNotNull('merchant_extra2', instance.merchantExtra2);
  writeNotNull('merchant_extra3', instance.merchantExtra3);
  writeNotNull('merchant_extra4', instance.merchantExtra4);
  writeNotNull('merchant_extra5', instance.merchantExtra5);
  val['access_code'] = instance.accessCode;
  val['digital_wallet'] = instance.digitalWallet;
  val['merchant_identifier'] = instance.merchantIdentifier;
  val['amount'] = instance.amount;
  writeNotNull('otp', instance.otp);
  val['signature'] = instance.signature;
  return val;
}

STCPurchaseResponse _$STCPurchaseResponseFromJson(Map<String, dynamic> json) =>
    STCPurchaseResponse(
      responseCode: json['response_code'] as String?,
      responseMessage: json['response_message'] as String?,
      command: json['command'] as String,
      merchantReference: json['merchant_reference'] as String,
      customerEmail: json['customer_email'] as String,
      customerIp: json['customer_ip'] as String?,
      accessCode: json['access_code'] as String? ?? '',
      merchantIdentifier: json['merchant_identifier'] as String? ?? '',
      amount: json['amount'] as String,
      otp: json['otp'] as String?,
      signature: json['signature'] as String? ?? '',
    )
      ..currency = json['currency'] as String
      ..tokenName = json['token_name'] as String?
      ..language = json['language'] as String?
      ..customerName = json['customer_name'] as String?
      ..phoneNumber = json['phone_number'] as String?
      ..orderDescription = json['order_description'] as String?
      ..merchantExtra = json['merchant_extra'] as String?
      ..merchantExtra1 = json['merchant_extra1'] as String?
      ..merchantExtra2 = json['merchant_extra2'] as String?
      ..merchantExtra3 = json['merchant_extra3'] as String?
      ..merchantExtra4 = json['merchant_extra4'] as String?
      ..merchantExtra5 = json['merchant_extra5'] as String?
      ..digitalWallet = json['digital_wallet'] as String
      ..fortId = json['fort_id'] as String?
      ..status = json['status'] as String?;

Map<String, dynamic> _$STCPurchaseResponseToJson(
        STCPurchaseResponse instance) =>
    <String, dynamic>{
      'command': instance.command,
      'merchant_reference': instance.merchantReference,
      'currency': instance.currency,
      'token_name': instance.tokenName,
      'language': instance.language,
      'customer_email': instance.customerEmail,
      'customer_ip': instance.customerIp,
      'customer_name': instance.customerName,
      'phone_number': instance.phoneNumber,
      'order_description': instance.orderDescription,
      'merchant_extra': instance.merchantExtra,
      'merchant_extra1': instance.merchantExtra1,
      'merchant_extra2': instance.merchantExtra2,
      'merchant_extra3': instance.merchantExtra3,
      'merchant_extra4': instance.merchantExtra4,
      'merchant_extra5': instance.merchantExtra5,
      'access_code': instance.accessCode,
      'digital_wallet': instance.digitalWallet,
      'merchant_identifier': instance.merchantIdentifier,
      'amount': instance.amount,
      'otp': instance.otp,
      'signature': instance.signature,
      'response_code': instance.responseCode,
      'response_message': instance.responseMessage,
      'fort_id': instance.fortId,
      'status': instance.status,
    };

SdkTokenRequest _$SdkTokenRequestFromJson(Map<String, dynamic> json) =>
    SdkTokenRequest(
      serviceCommand: json['service_command'] as String? ?? 'SDK_TOKEN',
      language: json['language'] as String,
      accessCode: json['access_code'] as String,
      merchantIdentifier: json['merchant_identifier'] as String,
      deviceId: json['device_id'] as String,
      signature: json['signature'] as String? ?? '',
    );

Map<String, dynamic> _$SdkTokenRequestToJson(SdkTokenRequest instance) =>
    <String, dynamic>{
      'service_command': instance.serviceCommand,
      'language': instance.language,
      'access_code': instance.accessCode,
      'merchant_identifier': instance.merchantIdentifier,
      'device_id': instance.deviceId,
      'signature': instance.signature,
    };

SdkTokenResponse _$SdkTokenResponseFromJson(Map<String, dynamic> json) =>
    SdkTokenResponse(
      serviceCommand: json['service_command'] as String? ?? 'SDK_TOKEN',
      language: json['language'] as String? ?? '',
      accessCode: json['access_code'] as String? ?? '',
      merchantIdentifier: json['merchant_identifier'] as String? ?? '',
      deviceId: json['device_id'] as String? ?? '',
      signature: json['signature'] as String? ?? '',
      responseCode: json['response_code'] as String?,
      sdkToken: json['sdk_token'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$SdkTokenResponseToJson(SdkTokenResponse instance) {
  final val = <String, dynamic>{
    'service_command': instance.serviceCommand,
    'language': instance.language,
    'access_code': instance.accessCode,
    'merchant_identifier': instance.merchantIdentifier,
    'device_id': instance.deviceId,
    'signature': instance.signature,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('response_code', instance.responseCode);
  writeNotNull('sdk_token', instance.sdkToken);
  writeNotNull('status', instance.status);
  return val;
}

BasePaymentRequest _$BasePaymentRequestFromJson(Map<String, dynamic> json) =>
    BasePaymentRequest(
      command: json['command'] as String,
      merchantReference: json['merchant_reference'] as String,
      currency: json['currency'] as String? ?? 'SAR',
      tokenName: json['token_name'] as String?,
      language: json['language'] as String? ?? 'ar',
      customerEmail: json['customer_email'] as String,
      customerIp: json['customer_ip'] as String?,
      customerName: json['customer_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      orderDescription: json['order_description'] as String?,
      merchantExtra: json['merchant_extra'] as String?,
      merchantExtra1: json['merchant_extra1'] as String?,
      merchantExtra2: json['merchant_extra2'] as String?,
      merchantExtra3: json['merchant_extra3'] as String?,
      merchantExtra4: json['merchant_extra4'] as String?,
      merchantExtra5: json['merchant_extra5'] as String?,
    );

Map<String, dynamic> _$BasePaymentRequestToJson(BasePaymentRequest instance) {
  final val = <String, dynamic>{
    'command': instance.command,
    'merchant_reference': instance.merchantReference,
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token_name', instance.tokenName);
  writeNotNull('language', instance.language);
  val['customer_email'] = instance.customerEmail;
  writeNotNull('customer_ip', instance.customerIp);
  writeNotNull('customer_name', instance.customerName);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('order_description', instance.orderDescription);
  writeNotNull('merchant_extra', instance.merchantExtra);
  writeNotNull('merchant_extra1', instance.merchantExtra1);
  writeNotNull('merchant_extra2', instance.merchantExtra2);
  writeNotNull('merchant_extra3', instance.merchantExtra3);
  writeNotNull('merchant_extra4', instance.merchantExtra4);
  writeNotNull('merchant_extra5', instance.merchantExtra5);
  return val;
}

CreditCardPaymentRequest _$CreditCardPaymentRequestFromJson(
        Map<String, dynamic> json) =>
    CreditCardPaymentRequest(
      command: json['command'] as String,
      merchantReference: json['merchant_reference'] as String,
      amount: json['amount'] as String,
      currency: json['currency'] as String? ?? "SAR",
      language: json['language'] as String? ?? 'ar',
      customerEmail: json['customer_email'] as String,
      orderDescription: json['order_description'] as String?,
      customerIp: json['customer_ip'] as String?,
      customerName: json['customer_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      merchantExtra: json['merchant_extra'] as String?,
      merchantExtra1: json['merchant_extra1'] as String?,
      merchantExtra2: json['merchant_extra2'] as String?,
      merchantExtra3: json['merchant_extra3'] as String?,
      merchantExtra4: json['merchant_extra4'] as String?,
      merchantExtra5: json['merchant_extra5'] as String?,
      sdkToken: json['sdk_token'] as String,
      tokenName: json['token_name'] as String?,
      paymentOption: json['payment_option'] as String?,
      eci: json['eci'] as String?,
      settlementReference: json['settlement_reference'] as String?,
      billingStateProvince: json['billing_state_province'] as String?,
      billingProvinceCode: json['billing_province_code'] as String?,
      billingStreet: json['billing_street'] as String?,
      billingStreet2: json['billing_street2'] as String?,
      billingPostcode: json['billing_postcode'] as String?,
      billingCountry: json['billing_country'] as String?,
      billingCompany: json['billing_company'] as String?,
      billingCity: json['billing_city'] as String?,
      shippingStateProvince: json['shipping_state_province'] as String?,
      shippingProvinceCode: json['shipping_province_code'] as String?,
      shippingStreet: json['shipping_street'] as String?,
      shippingStreet2: json['shipping_street2'] as String?,
      shippingSource: json['shipping_source'] as String?,
      shippingSameAsBilling: json['shipping_same_as_billing'] as String?,
      shippingPostcode: json['shipping_postcode'] as String?,
      shippingCountry: json['shipping_country'] as String?,
      shippingCity: json['shipping_city'] as String?,
      agreementId: json['agreement_id'] as String?,
      recurringMode: json['recurring_mode'] as String?,
      recurringTransactionsCount:
          json['recurring_transactions_count'] as String?,
    );

Map<String, dynamic> _$CreditCardPaymentRequestToJson(
    CreditCardPaymentRequest instance) {
  final val = <String, dynamic>{
    'command': instance.command,
    'merchant_reference': instance.merchantReference,
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token_name', instance.tokenName);
  writeNotNull('language', instance.language);
  val['customer_email'] = instance.customerEmail;
  writeNotNull('customer_ip', instance.customerIp);
  writeNotNull('customer_name', instance.customerName);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('order_description', instance.orderDescription);
  writeNotNull('merchant_extra', instance.merchantExtra);
  writeNotNull('merchant_extra1', instance.merchantExtra1);
  writeNotNull('merchant_extra2', instance.merchantExtra2);
  writeNotNull('merchant_extra3', instance.merchantExtra3);
  writeNotNull('merchant_extra4', instance.merchantExtra4);
  writeNotNull('merchant_extra5', instance.merchantExtra5);
  val['amount'] = instance.amount;
  val['sdk_token'] = instance.sdkToken;
  writeNotNull('payment_option', instance.paymentOption);
  writeNotNull('eci', instance.eci);
  writeNotNull('settlement_reference', instance.settlementReference);
  writeNotNull('billing_state_province', instance.billingStateProvince);
  writeNotNull('billing_province_code', instance.billingProvinceCode);
  writeNotNull('billing_street', instance.billingStreet);
  writeNotNull('billing_street2', instance.billingStreet2);
  writeNotNull('billing_postcode', instance.billingPostcode);
  writeNotNull('billing_country', instance.billingCountry);
  writeNotNull('billing_company', instance.billingCompany);
  writeNotNull('billing_city', instance.billingCity);
  writeNotNull('shipping_state_province', instance.shippingStateProvince);
  writeNotNull('shipping_province_code', instance.shippingProvinceCode);
  writeNotNull('shipping_street', instance.shippingStreet);
  writeNotNull('shipping_street2', instance.shippingStreet2);
  writeNotNull('shipping_source', instance.shippingSource);
  writeNotNull('shipping_same_as_billing', instance.shippingSameAsBilling);
  writeNotNull('shipping_postcode', instance.shippingPostcode);
  writeNotNull('shipping_country', instance.shippingCountry);
  writeNotNull('shipping_city', instance.shippingCity);
  writeNotNull('agreement_id', instance.agreementId);
  writeNotNull('recurring_mode', instance.recurringMode);
  writeNotNull(
      'recurring_transactions_count', instance.recurringTransactionsCount);
  return val;
}

CreditCardPaymentResponse _$CreditCardPaymentResponseFromJson(
        Map<String, dynamic> json) =>
    CreditCardPaymentResponse(
      command: json['command'] as String,
      merchantReference: json['merchant_reference'] as String,
      amount: json['amount'] as String,
      currency: json['currency'] as String? ?? "SAR",
      language: json['language'] as String? ?? 'ar',
      customerEmail: json['customer_email'] as String,
      sdkToken: json['sdk_token'] as String,
      tokenName: json['token_name'] as String?,
      fortId: json['fort_id'] as String?,
      paymentOption: json['payment_option'] as String?,
      eci: json['eci'] as String?,
      authorizationCode: json['authorization_code'] as String?,
      orderDescription: json['order_description'] as String?,
      responseMessage: json['response_message'] as String?,
      responseCode: json['response_code'] as String?,
      customerIp: json['customer_ip'] as String?,
      customerName: json['customer_name'] as String?,
      expiryDate: json['expiry_date'] as String?,
      cardNumber: json['card_number'] as String?,
      status: json['status'],
      phoneNumber: json['phone_number'] as String?,
      settlementReference: json['settlement_reference'] as String?,
      merchantExtra: json['merchant_extra'] as String?,
      merchantExtra1: json['merchant_extra1'] as String?,
      merchantExtra2: json['merchant_extra2'] as String?,
      merchantExtra3: json['merchant_extra3'] as String?,
      merchantExtra4: json['merchant_extra4'] as String?,
      merchantExtra5: json['merchant_extra5'] as String?,
      billingStateProvince: json['billing_state_province'] as String?,
      billingProvinceCode: json['billing_province_code'] as String?,
      billingStreet: json['billing_street'] as String?,
      billingStreet2: json['billing_street2'] as String?,
      billingPostcode: json['billing_postcode'] as String?,
      billingCountry: json['billing_country'] as String?,
      billingCompany: json['billing_company'] as String?,
      billingCity: json['billing_city'] as String?,
      shippingStateProvince: json['shipping_state_province'] as String?,
      shippingProvinceCode: json['shipping_province_code'] as String?,
      shippingStreet: json['shipping_street'] as String?,
      shippingStreet2: json['shipping_street2'] as String?,
      shippingSource: json['shipping_source'] as String?,
      shippingSameAsBilling: json['shipping_same_as_billing'] as String?,
      shippingPostcode: json['shipping_postcode'] as String?,
      shippingCountry: json['shipping_country'] as String?,
      shippingCity: json['shipping_city'] as String?,
      agreementId: json['agreement_id'] as String?,
    )
      ..recurringMode = json['recurring_mode'] as String?
      ..recurringTransactionsCount =
          json['recurring_transactions_count'] as String?;

Map<String, dynamic> _$CreditCardPaymentResponseToJson(
    CreditCardPaymentResponse instance) {
  final val = <String, dynamic>{
    'command': instance.command,
    'merchant_reference': instance.merchantReference,
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token_name', instance.tokenName);
  writeNotNull('language', instance.language);
  val['customer_email'] = instance.customerEmail;
  writeNotNull('customer_ip', instance.customerIp);
  writeNotNull('customer_name', instance.customerName);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('order_description', instance.orderDescription);
  writeNotNull('merchant_extra', instance.merchantExtra);
  writeNotNull('merchant_extra1', instance.merchantExtra1);
  writeNotNull('merchant_extra2', instance.merchantExtra2);
  writeNotNull('merchant_extra3', instance.merchantExtra3);
  writeNotNull('merchant_extra4', instance.merchantExtra4);
  writeNotNull('merchant_extra5', instance.merchantExtra5);
  val['amount'] = instance.amount;
  val['sdk_token'] = instance.sdkToken;
  writeNotNull('payment_option', instance.paymentOption);
  writeNotNull('eci', instance.eci);
  writeNotNull('settlement_reference', instance.settlementReference);
  writeNotNull('billing_state_province', instance.billingStateProvince);
  writeNotNull('billing_province_code', instance.billingProvinceCode);
  writeNotNull('billing_street', instance.billingStreet);
  writeNotNull('billing_street2', instance.billingStreet2);
  writeNotNull('billing_postcode', instance.billingPostcode);
  writeNotNull('billing_country', instance.billingCountry);
  writeNotNull('billing_company', instance.billingCompany);
  writeNotNull('billing_city', instance.billingCity);
  writeNotNull('shipping_state_province', instance.shippingStateProvince);
  writeNotNull('shipping_province_code', instance.shippingProvinceCode);
  writeNotNull('shipping_street', instance.shippingStreet);
  writeNotNull('shipping_street2', instance.shippingStreet2);
  writeNotNull('shipping_source', instance.shippingSource);
  writeNotNull('shipping_same_as_billing', instance.shippingSameAsBilling);
  writeNotNull('shipping_postcode', instance.shippingPostcode);
  writeNotNull('shipping_country', instance.shippingCountry);
  writeNotNull('shipping_city', instance.shippingCity);
  writeNotNull('agreement_id', instance.agreementId);
  writeNotNull('recurring_mode', instance.recurringMode);
  writeNotNull(
      'recurring_transactions_count', instance.recurringTransactionsCount);
  writeNotNull('fort_id', instance.fortId);
  writeNotNull('authorization_code', instance.authorizationCode);
  writeNotNull('response_message', instance.responseMessage);
  writeNotNull('response_code', instance.responseCode);
  writeNotNull('expiry_date', instance.expiryDate);
  writeNotNull('card_number', instance.cardNumber);
  writeNotNull('status', instance.status);
  return val;
}

PayfortApplePayRequest _$PayfortApplePayRequestFromJson(
        Map<String, dynamic> json) =>
    PayfortApplePayRequest(
      command: json['command'] as String,
      merchantReference: json['merchant_reference'] as String,
      currency: json['currency'] as String? ?? 'SAR',
      language: json['language'] as String? ?? 'ar',
      customerEmail: json['customer_email'] as String,
      orderDescription: json['order_description'] as String?,
      customerIp: json['customer_ip'] as String?,
      customerName: json['customer_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      merchantExtra: json['merchant_extra'] as String?,
      merchantExtra1: json['merchant_extra1'] as String?,
      merchantExtra2: json['merchant_extra2'] as String?,
      merchantExtra3: json['merchant_extra3'] as String?,
      merchantExtra4: json['merchant_extra4'] as String?,
      merchantExtra5: json['merchant_extra5'] as String?,
      applePayMerchantId: json['apple_pay_merchant_id'] as String,
      amount: json['amount'] as String,
      ISO4217Factor: json['ISO_4217_factor'] as String? ?? '100',
      countryCode: json['country_code'] as String? ?? 'SA',
      digitalWallet: json['digital_wallet'] as String? ?? 'APPLE_PAY',
      sdkToken: json['sdk_token'] as String,
      eci: json['eci'] as String?,
    )..tokenName = json['token_name'] as String?;

Map<String, dynamic> _$PayfortApplePayRequestToJson(
    PayfortApplePayRequest instance) {
  final val = <String, dynamic>{
    'command': instance.command,
    'merchant_reference': instance.merchantReference,
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token_name', instance.tokenName);
  writeNotNull('language', instance.language);
  val['customer_email'] = instance.customerEmail;
  writeNotNull('customer_ip', instance.customerIp);
  writeNotNull('customer_name', instance.customerName);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('order_description', instance.orderDescription);
  writeNotNull('merchant_extra', instance.merchantExtra);
  writeNotNull('merchant_extra1', instance.merchantExtra1);
  writeNotNull('merchant_extra2', instance.merchantExtra2);
  writeNotNull('merchant_extra3', instance.merchantExtra3);
  writeNotNull('merchant_extra4', instance.merchantExtra4);
  writeNotNull('merchant_extra5', instance.merchantExtra5);
  val['apple_pay_merchant_id'] = instance.applePayMerchantId;
  val['amount'] = instance.amount;
  val['ISO_4217_factor'] = instance.ISO4217Factor;
  val['country_code'] = instance.countryCode;
  val['digital_wallet'] = instance.digitalWallet;
  val['sdk_token'] = instance.sdkToken;
  writeNotNull('eci', instance.eci);
  return val;
}

PayfortApplePayResponse _$PayfortApplePayResponseFromJson(
        Map<String, dynamic> json) =>
    PayfortApplePayResponse(
      command: json['command'] as String,
      merchantReference: json['merchant_reference'] as String,
      currency: json['currency'] as String? ?? 'SAR',
      language: json['language'] as String? ?? 'ar',
      customerEmail: json['customer_email'] as String,
      orderDescription: json['order_description'] as String?,
      customerIp: json['customer_ip'] as String?,
      customerName: json['customer_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      merchantExtra: json['merchant_extra'] as String?,
      merchantExtra1: json['merchant_extra1'] as String?,
      merchantExtra2: json['merchant_extra2'] as String?,
      merchantExtra3: json['merchant_extra3'] as String?,
      merchantExtra4: json['merchant_extra4'] as String?,
      merchantExtra5: json['merchant_extra5'] as String?,
      applePayMerchantId: json['apple_pay_merchant_id'] as String? ?? '',
      amount: json['amount'] as String,
      ISO4217Factor: json['ISO_4217_factor'] as String? ?? '100',
      countryCode: json['country_code'] as String? ?? 'SA',
      digitalWallet: json['digital_wallet'] as String? ?? 'APPLE_PAY',
      sdkToken: json['sdk_token'] as String,
      eci: json['eci'] as String?,
      fortId: json['fort_id'] as String?,
      authorizationCode: json['authorization_code'] as String?,
      responseMessage: json['response_message'] as String?,
      responseCode: json['response_code'] as String?,
      status: json['status'] as String?,
      cardHolderName: json['card_holder_name'] as String?,
      expiryDate: json['expiry_date'] as String?,
      cardNumber: json['card_number'] as String?,
      paymentOption: json['payment_option'] as String?,
      reconciliationReference: json['reconciliation_reference'] as String?,
      acquirerResponseCode: json['acquirer_response_code'] as String?,
    )..tokenName = json['token_name'] as String?;

Map<String, dynamic> _$PayfortApplePayResponseToJson(
    PayfortApplePayResponse instance) {
  final val = <String, dynamic>{
    'command': instance.command,
    'merchant_reference': instance.merchantReference,
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token_name', instance.tokenName);
  writeNotNull('language', instance.language);
  val['customer_email'] = instance.customerEmail;
  writeNotNull('customer_ip', instance.customerIp);
  writeNotNull('customer_name', instance.customerName);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('order_description', instance.orderDescription);
  writeNotNull('merchant_extra', instance.merchantExtra);
  writeNotNull('merchant_extra1', instance.merchantExtra1);
  writeNotNull('merchant_extra2', instance.merchantExtra2);
  writeNotNull('merchant_extra3', instance.merchantExtra3);
  writeNotNull('merchant_extra4', instance.merchantExtra4);
  writeNotNull('merchant_extra5', instance.merchantExtra5);
  val['apple_pay_merchant_id'] = instance.applePayMerchantId;
  val['amount'] = instance.amount;
  val['ISO_4217_factor'] = instance.ISO4217Factor;
  val['country_code'] = instance.countryCode;
  val['digital_wallet'] = instance.digitalWallet;
  val['sdk_token'] = instance.sdkToken;
  writeNotNull('eci', instance.eci);
  writeNotNull('fort_id', instance.fortId);
  writeNotNull('authorization_code', instance.authorizationCode);
  writeNotNull('response_message', instance.responseMessage);
  writeNotNull('response_code', instance.responseCode);
  writeNotNull('status', instance.status);
  writeNotNull('card_holder_name', instance.cardHolderName);
  writeNotNull('expiry_date', instance.expiryDate);
  writeNotNull('card_number', instance.cardNumber);
  writeNotNull('payment_option', instance.paymentOption);
  writeNotNull('reconciliation_reference', instance.reconciliationReference);
  writeNotNull('acquirer_response_code', instance.acquirerResponseCode);
  return val;
}

PayfortTabbyRequest _$PayfortTabbyRequestFromJson(Map<String, dynamic> json) =>
    PayfortTabbyRequest(
      command: json['command'] as String? ?? 'PURCHASE',
      accessCode: json['access_code'] as String,
      amount: json['amount'] as String,
      signature: json['signature'] as String? ?? '',
      merchantIdentifier: json['merchant_identifier'] as String,
      merchantReference: json['merchant_reference'] as String,
      currency: json['currency'] as String? ?? 'SAR',
      language: json['language'] as String? ?? 'ar',
      phoneNumber: json['phone_number'] as String,
      customerEmail: json['customer_email'] as String,
      tokenName: json['token_name'] as String?,
      paymentOption: json['payment_option'] as String? ?? 'TABBY',
      customerIp: json['customer_ip'] as String?,
      customerName: json['customer_name'] as String?,
      merchantExtra: json['merchant_extra'] as String?,
      merchantExtra1: json['merchant_extra1'] as String?,
      merchantExtra2: json['merchant_extra2'] as String?,
      merchantExtra3: json['merchant_extra3'] as String?,
      merchantExtra4: json['merchant_extra4'] as String?,
      merchantExtra5: json['merchant_extra5'] as String?,
      returnUrl: json['return_url'] as String,
      settlementReference: json['settlement_reference'] as String?,
      orderDescription: json['order_description'] as String?,
    );

Map<String, dynamic> _$PayfortTabbyRequestToJson(PayfortTabbyRequest instance) {
  final val = <String, dynamic>{
    'command': instance.command,
    'access_code': instance.accessCode,
    'merchant_identifier': instance.merchantIdentifier,
    'merchant_reference': instance.merchantReference,
    'amount': instance.amount,
    'currency': instance.currency,
    'language': instance.language,
    'customer_email': instance.customerEmail,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token_name', instance.tokenName);
  val['payment_option'] = instance.paymentOption;
  writeNotNull('customer_ip', instance.customerIp);
  writeNotNull('customer_name', instance.customerName);
  writeNotNull('merchant_extra', instance.merchantExtra);
  writeNotNull('merchant_extra1', instance.merchantExtra1);
  writeNotNull('merchant_extra2', instance.merchantExtra2);
  writeNotNull('merchant_extra3', instance.merchantExtra3);
  writeNotNull('merchant_extra4', instance.merchantExtra4);
  writeNotNull('merchant_extra5', instance.merchantExtra5);
  val['return_url'] = instance.returnUrl;
  writeNotNull('settlement_reference', instance.settlementReference);
  val['phone_number'] = instance.phoneNumber;
  writeNotNull('signature', instance.signature);
  writeNotNull('order_description', instance.orderDescription);
  return val;
}
