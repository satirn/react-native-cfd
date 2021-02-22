#import <Foundation/Foundation.h>
#import "cfd_bridge.h"
#include "cfdjs/cfdjs_api_json.h"

@implementation CfdBridge
- (NSString *) Initialize {
    std::string initMessage = cfd::js::api::json::JsonMappingApi::GetSupportedFunction();
    return [NSString
            stringWithCString:initMessage.c_str()
            encoding:NSUTF8StringEncoding];
}
- (NSString *) CreateRawTransaction:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateRawTransaction(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) AddRawTransaction:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::AddRawTransaction(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) DecodeRawTransaction:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::DecodeRawTransaction(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) ConvertEntropyToMnemonic:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::ConvertEntropyToMnemonic(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) ConvertMnemonicToSeed:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::ConvertMnemonicToSeed(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateAddress:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateAddress(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateMultisig:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateMultisig(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetAddressesFromMultisig:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetAddressesFromMultisig(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetAddressInfo:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetAddressInfo(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) ParseDescriptor:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::ParseDescriptor(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateDescriptor:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateDescriptor(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) AppendDescriptorChecksum:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::AppendDescriptorChecksum(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateSignatureHash:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateSignatureHash(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) ConvertAes:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::ConvertAes(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) EncodeBase58:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::EncodeBase58(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) DecodeBase58:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::DecodeBase58(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) EncodeBase64:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::EncodeBase64(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) DecodeBase64:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::DecodeBase64(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) HashMessage:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::HashMessage(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) EncodeSignatureByDer:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::EncodeSignatureByDer(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) DecodeDerSignatureToRaw:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::DecodeDerSignatureToRaw(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetWitnessStackNum:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetWitnessStackNum(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) AddSign:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::AddSign(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) AddPubkeyHashSign:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::AddPubkeyHashSign(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) SignWithPrivkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::SignWithPrivkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) AddScriptHashSign:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::AddScriptHashSign(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) UpdateWitnessStack:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::UpdateWitnessStack(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) AddMultisigSign:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::AddMultisigSign(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) VerifySignature:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::VerifySignature(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) VerifySign:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::VerifySign(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetMnemonicWordlist:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetMnemonicWordlist(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetExtkeyInfo:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetExtkeyInfo(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetPrivkeyFromExtkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetPrivkeyFromExtkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetPubkeyFromExtkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetPubkeyFromExtkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetPrivkeyFromWif:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetPrivkeyFromWif(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetPrivkeyWif:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetPrivkeyWif(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) TweakAddPrivkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::TweakAddPrivkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) TweakMulPrivkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::TweakMulPrivkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) NegatePrivkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::NegatePrivkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetPubkeyFromPrivkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetPubkeyFromPrivkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetCompressedPubkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetCompressedPubkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetUncompressedPubkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetUncompressedPubkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CombinePubkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CombinePubkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) TweakAddPubkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::TweakAddPubkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) TweakMulPubkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::TweakMulPubkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) NegatePubkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::NegatePubkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateExtkeyFromSeed:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateExtkeyFromSeed(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateExtkeyFromParent:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateExtkeyFromParent(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateExtkeyFromParentPath:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateExtkeyFromParentPath(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateExtkeyFromParentKey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateExtkeyFromParentKey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateExtkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateExtkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateExtPubkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateExtPubkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateKeyPair:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateKeyPair(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) ParseScript:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::ParseScript(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateScript:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateScript(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateMultisigScriptSig:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateMultisigScriptSig(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CalculateEcSignature:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CalculateEcSignature(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) EstimateFee:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::EstimateFee(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) SelectUtxos:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::SelectUtxos(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) FundRawTransaction:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::FundRawTransaction(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) UpdateTxOutAmount:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::UpdateTxOutAmount(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetSchnorrPubkeyFromPrivkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetSchnorrPubkeyFromPrivkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetSchnorrPubkeyFromPubkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetSchnorrPubkeyFromPubkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) TweakAddSchnorrPubkeyFromPrivkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::TweakAddSchnorrPubkeyFromPrivkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) TweakAddSchnorrPubkeyFromPubkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::TweakAddSchnorrPubkeyFromPubkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CheckTweakedSchnorrPubkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CheckTweakedSchnorrPubkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) SchnorrSign:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::SchnorrSign(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) SchnorrVerify:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::SchnorrVerify(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) ComputeSigPointSchnorrPubkey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::ComputeSigPointSchnorrPubkey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) SignEcdsaAdaptor:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::SignEcdsaAdaptor(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) VerifyEcdsaAdaptor:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::VerifyEcdsaAdaptor(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) AdaptEcdsaAdaptor:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::AdaptEcdsaAdaptor(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) ExtractSecretEcdsaAdaptor:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::ExtractSecretEcdsaAdaptor(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) DecodePsbt:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::DecodePsbt(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreatePsbt:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreatePsbt(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) ConvertToPsbt:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::ConvertToPsbt(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) JoinPsbts:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::JoinPsbts(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CombinePsbt:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CombinePsbt(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) FinalizePsbtInput:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::FinalizePsbtInput(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) FinalizePsbt:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::FinalizePsbt(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) SignPsbt:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::SignPsbt(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) VerifyPsbtSign:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::VerifyPsbtSign(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) AddPsbtData:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::AddPsbtData(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) SetPsbtData:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::SetPsbtData(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) SetPsbtRecord:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::SetPsbtRecord(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) IsFinalizedPsbt:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::IsFinalizedPsbt(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetPsbtUtxos:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetPsbtUtxos(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) FundPsbt:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::FundPsbt(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetConfidentialAddress:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetConfidentialAddress(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetUnblindedAddress:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetUnblindedAddress(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreatePegInAddress:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreatePegInAddress(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) ElementsCreateRawTransaction:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::ElementsCreateRawTransaction(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) ElementsAddRawTransaction:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::ElementsAddRawTransaction(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) ElementsDecodeRawTransaction:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::ElementsDecodeRawTransaction(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) BlindRawTransaction:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::BlindRawTransaction(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) UnblindRawTransaction:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::UnblindRawTransaction(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) SetRawIssueAsset:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::SetRawIssueAsset(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) SetRawReissueAsset:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::SetRawReissueAsset(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateElementsSignatureHash:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateElementsSignatureHash(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateRawPegin:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateRawPegin(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateRawPegout:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateRawPegout(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetIssuanceBlindingKey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetIssuanceBlindingKey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetDefaultBlindingKey:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetDefaultBlindingKey(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) CreateDestroyAmount:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::CreateDestroyAmount(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) SerializeLedgerFormat:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::SerializeLedgerFormat(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
- (NSString *) GetCommitment:(NSString *)request {
      std::string request_string = std::string([request UTF8String]);
      std::string response = cfd::js::api::json::JsonMappingApi::GetCommitment(request_string);
      return [NSString
              stringWithCString:response.c_str()
              encoding:NSUTF8StringEncoding];
  }
@end
