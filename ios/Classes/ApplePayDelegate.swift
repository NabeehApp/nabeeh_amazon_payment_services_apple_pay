//
//  ApplePayDelegate.swift
//  flutter_amazonpaymentservices
//
//  Created by akramAssi on 08/03/2023.
//

import Foundation
import PassKit
import PayFortSDK

public class ApplePayDelegate : NSObject,PKPaymentAuthorizationViewControllerDelegate{
    private var payFort: PayFortController? = nil
    private var channel: FlutterMethodChannel? = nil
    private var requestData : Dictionary<String, Any>? = nil
    private var isShowResponsePage:Bool? = nil
    private var viewController : UIViewController? = nil
    
    func  initialize(channel: FlutterMethodChannel) {
        self.channel = channel
        
        self.viewController = ViewHelper.visibleViewController()
        
    }
    
    public func paymentAuthorizationViewControllerDidFinish(_ controller: PKPaymentAuthorizationViewController) {
        requestData = nil
        controller.dismiss(animated: true)
    }
    
    public func callPayFortForApplePay(payFort: PayFortController,  requestData: Dictionary<String, Any>, isShowResponsePage: Bool? ){
        
        
        self.requestData = requestData
        self.payFort = payFort
        self.isShowResponsePage = isShowResponsePage
        
        let amount = decimal(with: (requestData["amount"] as? String) ?? "0.0")
        
        let paymentRequest = PKPaymentRequest()
        //        paymentRequest.merchantIdentifier =  "merchant.net.nabeeh.nabeehapp";
        paymentRequest.merchantIdentifier = (requestData["apple_pay_merchant_id"] as? String) ?? "";
        if #available(iOS 12.1.1, *) {
            //            paymentRequest.supportedNetworks = [.visa, .masterCard, .mada, .amex]
            paymentRequest.supportedNetworks = [.visa, .masterCard, .mada]
        } else {
            paymentRequest.supportedNetworks = [.visa, .masterCard]
        };
        paymentRequest.merchantCapabilities = .capability3DS;
        
        paymentRequest.paymentSummaryItems = [PKPaymentSummaryItem(label: (requestData["order_description"] as? String) ?? "", amount: amount)]
        
        paymentRequest.countryCode = (requestData["country_code"] as? String) ?? "";
        paymentRequest.currencyCode = (requestData["currency"] as? String) ?? "";
        
        let applePayController = PKPaymentAuthorizationViewController(paymentRequest: paymentRequest)
        applePayController?.delegate = self
        (viewController ?? ViewHelper.visibleViewController()).present(applePayController!, animated: true)
    }
    
    
    public func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, completion: @escaping (PKPaymentAuthorizationStatus) -> Void) {
        
        let asyncSuccessful = payment.token.paymentData.count != 0
        
//        let isoFactor = requestData?["ISO_4217_factor"] as? Double ?? 1.0
        let isoFactor = (Double((requestData?["ISO_4217_factor"] as? String) ?? "0.0") ?? 0.0)
        
        let amount = (Double((requestData?["amount"] as? String) ?? "0.0") ?? 0.0) * isoFactor
        
        let customerEmailFromApplePay = payment.billingContact?.emailAddress ?? ""
        let customerPhoneFromApplePay = payment.billingContact?.phoneNumber?.stringValue ?? ""
        let customerNameFromApplePay = payment.billingContact?.name?.givenName ?? ""
        
        
        if asyncSuccessful {
            
            var request = [String : String]()
            request["digital_wallet"] = (requestData?["digital_wallet"] as? String) ?? ""
            request["command"] = (requestData?["command"] as? String) ?? "";
            request["merchant_reference"] = (requestData?["merchant_reference"] as? String) ?? "";
            request["amount"] = String(amount.toInt() ?? 0);
            request["currency"] = (requestData?["currency"] as? String) ?? "";
            request["language"] = (requestData?["language"] as? String) ?? "";
            request["sdk_token"] = (requestData?["sdk_token"] as? String) ?? "";
            request["payment_option"] = (requestData?["payment_option"] as? String) ?? "";
            request["eci"] = (requestData?["eci"] as? String) ?? "";
            request["order_description"] = (requestData?["order_description"] as? String) ?? "";
            request["customer_ip"] = (requestData?["customer_ip"] as? String) ?? "";
            
//            request["token_name"] = (requestData?["token_name"] as? String) ?? "";
            request["merchant_extra"] = (requestData?["merchant_extra"] as? String) ?? "";
            request["merchant_extra1"] = (requestData?["merchant_extra1"] as? String) ?? "";
            request["merchant_extra2"] = (requestData?["merchant_extra2"] as? String) ?? "";
            request["merchant_extra3"] = (requestData?["merchant_extra3"] as? String) ?? "";
            request["merchant_extra4"] = (requestData?["merchant_extra4"] as? String) ?? "";
            request["merchant_extra5"] = (requestData?["merchant_extra5"] as? String) ?? "";
            
            request["customer_email"] = (requestData?["customer_email"] as? String) ?? customerEmailFromApplePay;
            request["phone_number"] = (requestData?["phone_number"] as? String) ?? customerPhoneFromApplePay;
            request["customer_name"] = (requestData?["customer_name"] as? String) ?? customerPhoneFromApplePay;
            
            
            
            
            payFort?.hideLoading = false
            payFort?.presentAsDefault = true
            payFort?.isShowResponsePage = isShowResponsePage ?? true
            
            print("Request Payfort Get :\(request)")
            
            
            payFort?.callPayFortForApplePay(
                withRequest: request,
                applePayPayment: payment,
                currentViewController: viewController ?? ViewHelper.visibleViewController(),
                success: { requestDic, responeDic in
                    
                    print("succeeded: - \(requestDic) - \(responeDic)")
                    self.channel?.invokeMethod(Channels.applePaySuccess, arguments: responeDic)
                    controller.dismiss(animated: true)
                    return
                    
                },
                faild: { requestDic, responeDic, message in
                    
                    print("failed: \(message) - \(requestDic) - \(responeDic)")
                    

                    self.channel?.invokeMethod(Channels.applePayFailed, arguments: ["message": message,"details": responeDic])
                    
                    controller.dismiss(animated: true)
                    return
                    
                })
        } else {
            
            print("asyncSuccessful: \(asyncSuccessful)")
        
            
            self.channel?.invokeMethod(Channels.applePayFailed, arguments: ["message": "error","details":[]])
            
            
            controller.dismiss(animated: true)
            
        }
        
    }
    
    private func decimal(with string: String) -> NSDecimalNumber {
        let formatter = NumberFormatter()
        formatter.generatesDecimalNumbers = true
        let amount = formatter.number(from: string) as? NSDecimalNumber ?? 0
        return amount;
    }
    
}


extension Double {
    
    func toInt() -> Int? {
        let roundedValue = rounded(.toNearestOrEven)
        return Int(exactly: roundedValue)
    }
}

