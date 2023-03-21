//
//  Constant.swift
//  payfort_flutter_plugin
//
//

import Foundation
import UIKit

internal struct Constants {
    static let sandBox = "https://sbcheckout.payfort.com/"
    static let production = "https://checkout.payfort.com/"
}



internal struct Channels {
    static let plugin = "amazon_payment_services_apple_pay"
    static let initialize = "initialize"
    static let payWithApplePay = "pay_with_apple_pay"
    static let applePaySuccess = "apple_pay_success"
    static let applePayFailed = "apple_pay_failed"
}
