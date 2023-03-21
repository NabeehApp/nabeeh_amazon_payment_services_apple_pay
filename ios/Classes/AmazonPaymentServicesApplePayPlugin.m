#import "AmazonPaymentServicesApplePayPlugin.h"
#if __has_include(<amazon_payment_services_apple_pay/amazon_payment_services_apple_pay-Swift.h>)
#import <amazon_payment_services_apple_pay/amazon_payment_services_apple_pay-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amazon_payment_services_apple_pay-Swift.h"
#endif

@implementation AmazonPaymentServicesApplePayPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmazonPaymentServicesApplePayPlugin registerWithRegistrar:registrar];
}
@end
