import Flutter
import UIKit
import PayFortSDK
import AVFoundation
import Foundation

public class SwiftAmazonPaymentServicesApplePayPlugin:NSObject, FlutterPlugin {
    private static var channel:  FlutterMethodChannel? = nil
    
    var payFortController = PayFortController.init(enviroment: .sandBox)
    var delegate = ApplePayDelegate()
    //    PayFortEnviroment
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: Channels.plugin, binaryMessenger: registrar.messenger())
        let instance = SwiftAmazonPaymentServicesApplePayPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        self.channel=channel
        
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        
        
        if call.method == Channels.initialize {
            delegate.initialize(channel: SwiftAmazonPaymentServicesApplePayPlugin.channel!)
        }
        else if call.method==Channels.payWithApplePay{
            
            SwiftAmazonPaymentServicesApplePayPlugin.channel?.invokeMethod(Channels.initialize, arguments: ["message": "test done "])
            
//            if let param = call.arguments as? [String: Any],
//               let requestParam = param["requestParam"] as? [String:String] {
//                
//                print(param["environmentType"])
//                
//                if let enviroment = param["environmentType"], enviroment as! String == "production" {
//                    payFortController = PayFortController.init(enviroment: .production)
//                }
//                
//                payFortController.presentAsDefault = true
//                delegate.initialize(channel: SwiftAmazonPaymentServicesApplePayPlugin.channel!)
//                
//                delegate.callPayFortForApplePay(payFort:payFortController , requestData: requestParam,isShowResponsePage: param["isShowResponsePage"] as? Bool ?? false)
//            }
            
        }
    }
    
}


