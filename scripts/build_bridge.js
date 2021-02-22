const fs = require('fs');
const path = require('path');
const funcs = require('./funcs.json');

const lowerCamel = (str) => str.charAt(0).toLowerCase() + str.slice(1);

const objcBridgeHeader = `#import <Foundation/Foundation.h>
@interface CfdBridge : NSObject
- (NSString *) Initialize;
${funcs
  .map(
    (func) =>
      `- (NSString *) ${func}:(NSString *)request NS_SWIFT_NAME(${lowerCamel(
        func
      )}(_:));`
  )
  .join('\n')}
@end`;

fs.writeFileSync(path.join(__dirname, '../ios/cfd_bridge.h'), objcBridgeHeader);

const objcBridge = `#import <Foundation/Foundation.h>
#import "cfd_bridge.h"
#include "cfdjs/cfdjs_api_json.h"

@implementation CfdBridge
- (NSString *) Initialize {
    std::string initMessage = cfd::js::api::json::JsonMappingApi::GetSupportedFunction();
    return [NSString
            stringWithCString:initMessage.c_str()
            encoding:NSUTF8StringEncoding];
}
${funcs
  .map(
    (func) => `- (NSString *) ${func}:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::${func}(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }`
  )
  .join('\n')}
@end
`;

fs.writeFileSync(path.join(__dirname, '../ios/cfd_bridge.mm'), objcBridge);

const rnBridge = `
#import "Cfd-Bridging-Header.h"

@interface RCT_EXTERN_MODULE(Cfd, NSObject)

${funcs
  .map(
    (func) =>
      `RCT_EXTERN_METHOD(${func}:(NSString *)args resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)`
  )
  .join('\n')}
@end

`;

fs.writeFileSync(path.join(__dirname, '../ios/Cfd.mm'), rnBridge);

const swiftEntry = `
import Foundation
import WebKit

func handleCfdCall(resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock,  operation: @escaping () -> String) {
    queue.async {
        let response = operation()
        resolve(response)
    }
}

let queue = DispatchQueue(label: "cfd-queue", qos: .userInitiated, attributes: .concurrent)

extension DispatchQueue {
    static func background(delay: Double = 0.0, background: (()->Void)? = nil, completion: (() -> Void)? = nil) {
        queue.async {
            background?()
            if let completion = completion {
                DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: {
                    completion()
                })
            }
        }
    }

}

@objc(Cfd)
class Cfd: NSObject {
    @objc static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    override init() {
        super.init()
        print(CfdBridge().initialize())
    }
    ${funcs
      .map(
        (func) => `
    @objc
    func ${func}(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().${
              func.charAt(0).toLowerCase() + func.slice(1)
            }(args as String)
        }
    }`
      )
      .join('\n')}
}
`;

fs.writeFileSync(path.join(__dirname, '../ios/Cfd.swift'), swiftEntry);
