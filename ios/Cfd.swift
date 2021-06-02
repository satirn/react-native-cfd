
import Foundation
import WebKit

func handleCfdCall(resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock,  operation: @escaping () -> String) {
    queue.async {
        let response = operation()
        resolve(response)
    }
}

let queue = DispatchQueue(label: "cfd-queue", qos: .userInitiated)

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
    
    @objc
    func CreateRawTransaction(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createRawTransaction(args as String)
        }
    }

    @objc
    func AddRawTransaction(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().addRawTransaction(args as String)
        }
    }

    @objc
    func DecodeRawTransaction(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().decodeRawTransaction(args as String)
        }
    }

    @objc
    func ConvertEntropyToMnemonic(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().convertEntropyToMnemonic(args as String)
        }
    }

    @objc
    func ConvertMnemonicToSeed(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().convertMnemonicToSeed(args as String)
        }
    }

    @objc
    func CreateAddress(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createAddress(args as String)
        }
    }

    @objc
    func CreateMultisig(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createMultisig(args as String)
        }
    }

    @objc
    func GetAddressesFromMultisig(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getAddressesFromMultisig(args as String)
        }
    }

    @objc
    func GetAddressInfo(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getAddressInfo(args as String)
        }
    }

    @objc
    func ParseDescriptor(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().parseDescriptor(args as String)
        }
    }

    @objc
    func CreateDescriptor(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createDescriptor(args as String)
        }
    }

    @objc
    func AppendDescriptorChecksum(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().appendDescriptorChecksum(args as String)
        }
    }

    @objc
    func CreateSignatureHash(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createSignatureHash(args as String)
        }
    }

    @objc
    func ConvertAes(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().convertAes(args as String)
        }
    }

    @objc
    func EncodeBase58(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().encodeBase58(args as String)
        }
    }

    @objc
    func DecodeBase58(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().decodeBase58(args as String)
        }
    }

    @objc
    func EncodeBase64(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().encodeBase64(args as String)
        }
    }

    @objc
    func DecodeBase64(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().decodeBase64(args as String)
        }
    }

    @objc
    func HashMessage(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().hashMessage(args as String)
        }
    }

    @objc
    func EncodeSignatureByDer(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().encodeSignatureByDer(args as String)
        }
    }

    @objc
    func DecodeDerSignatureToRaw(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().decodeDerSignatureToRaw(args as String)
        }
    }

    @objc
    func GetWitnessStackNum(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getWitnessStackNum(args as String)
        }
    }

    @objc
    func AddSign(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().addSign(args as String)
        }
    }

    @objc
    func AddPubkeyHashSign(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().addPubkeyHashSign(args as String)
        }
    }

    @objc
    func SignWithPrivkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().signWithPrivkey(args as String)
        }
    }

    @objc
    func AddScriptHashSign(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().addScriptHashSign(args as String)
        }
    }

    @objc
    func UpdateWitnessStack(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().updateWitnessStack(args as String)
        }
    }

    @objc
    func AddMultisigSign(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().addMultisigSign(args as String)
        }
    }

    @objc
    func VerifySignature(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().verifySignature(args as String)
        }
    }

    @objc
    func VerifySign(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().verifySign(args as String)
        }
    }

    @objc
    func GetMnemonicWordlist(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getMnemonicWordlist(args as String)
        }
    }

    @objc
    func GetExtkeyInfo(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getExtkeyInfo(args as String)
        }
    }

    @objc
    func GetPrivkeyFromExtkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getPrivkeyFromExtkey(args as String)
        }
    }

    @objc
    func GetPubkeyFromExtkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getPubkeyFromExtkey(args as String)
        }
    }

    @objc
    func GetPrivkeyFromWif(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getPrivkeyFromWif(args as String)
        }
    }

    @objc
    func GetPrivkeyWif(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getPrivkeyWif(args as String)
        }
    }

    @objc
    func TweakAddPrivkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().tweakAddPrivkey(args as String)
        }
    }

    @objc
    func TweakMulPrivkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().tweakMulPrivkey(args as String)
        }
    }

    @objc
    func NegatePrivkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().negatePrivkey(args as String)
        }
    }

    @objc
    func GetPubkeyFromPrivkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getPubkeyFromPrivkey(args as String)
        }
    }

    @objc
    func GetCompressedPubkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getCompressedPubkey(args as String)
        }
    }

    @objc
    func GetUncompressedPubkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getUncompressedPubkey(args as String)
        }
    }

    @objc
    func CombinePubkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().combinePubkey(args as String)
        }
    }

    @objc
    func TweakAddPubkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().tweakAddPubkey(args as String)
        }
    }

    @objc
    func TweakMulPubkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().tweakMulPubkey(args as String)
        }
    }

    @objc
    func NegatePubkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().negatePubkey(args as String)
        }
    }

    @objc
    func CreateExtkeyFromSeed(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createExtkeyFromSeed(args as String)
        }
    }

    @objc
    func CreateExtkeyFromParent(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createExtkeyFromParent(args as String)
        }
    }

    @objc
    func CreateExtkeyFromParentPath(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createExtkeyFromParentPath(args as String)
        }
    }

    @objc
    func CreateExtkeyFromParentKey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createExtkeyFromParentKey(args as String)
        }
    }

    @objc
    func CreateExtkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createExtkey(args as String)
        }
    }

    @objc
    func CreateExtPubkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createExtPubkey(args as String)
        }
    }

    @objc
    func CreateKeyPair(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createKeyPair(args as String)
        }
    }

    @objc
    func ParseScript(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().parseScript(args as String)
        }
    }

    @objc
    func CreateScript(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createScript(args as String)
        }
    }

    @objc
    func CreateMultisigScriptSig(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createMultisigScriptSig(args as String)
        }
    }

    @objc
    func CalculateEcSignature(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().calculateEcSignature(args as String)
        }
    }

    @objc
    func EstimateFee(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().estimateFee(args as String)
        }
    }

    @objc
    func SelectUtxos(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().selectUtxos(args as String)
        }
    }

    @objc
    func FundRawTransaction(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().fundRawTransaction(args as String)
        }
    }

    @objc
    func UpdateTxOutAmount(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().updateTxOutAmount(args as String)
        }
    }

    @objc
    func GetSchnorrPubkeyFromPrivkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getSchnorrPubkeyFromPrivkey(args as String)
        }
    }

    @objc
    func GetSchnorrPubkeyFromPubkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getSchnorrPubkeyFromPubkey(args as String)
        }
    }

    @objc
    func TweakAddSchnorrPubkeyFromPrivkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().tweakAddSchnorrPubkeyFromPrivkey(args as String)
        }
    }

    @objc
    func TweakAddSchnorrPubkeyFromPubkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().tweakAddSchnorrPubkeyFromPubkey(args as String)
        }
    }

    @objc
    func CheckTweakedSchnorrPubkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().checkTweakedSchnorrPubkey(args as String)
        }
    }

    @objc
    func SchnorrSign(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().schnorrSign(args as String)
        }
    }

    @objc
    func SchnorrVerify(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().schnorrVerify(args as String)
        }
    }

    @objc
    func ComputeSigPointSchnorrPubkey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().computeSigPointSchnorrPubkey(args as String)
        }
    }

    @objc
    func SignEcdsaAdaptor(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().signEcdsaAdaptor(args as String)
        }
    }

    @objc
    func VerifyEcdsaAdaptor(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().verifyEcdsaAdaptor(args as String)
        }
    }

    @objc
    func AdaptEcdsaAdaptor(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().adaptEcdsaAdaptor(args as String)
        }
    }

    @objc
    func ExtractSecretEcdsaAdaptor(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().extractSecretEcdsaAdaptor(args as String)
        }
    }

    @objc
    func DecodePsbt(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().decodePsbt(args as String)
        }
    }

    @objc
    func CreatePsbt(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createPsbt(args as String)
        }
    }

    @objc
    func ConvertToPsbt(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().convertToPsbt(args as String)
        }
    }

    @objc
    func JoinPsbts(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().joinPsbts(args as String)
        }
    }

    @objc
    func CombinePsbt(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().combinePsbt(args as String)
        }
    }

    @objc
    func FinalizePsbtInput(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().finalizePsbtInput(args as String)
        }
    }

    @objc
    func FinalizePsbt(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().finalizePsbt(args as String)
        }
    }

    @objc
    func SignPsbt(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().signPsbt(args as String)
        }
    }

    @objc
    func VerifyPsbtSign(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().verifyPsbtSign(args as String)
        }
    }

    @objc
    func AddPsbtData(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().addPsbtData(args as String)
        }
    }

    @objc
    func SetPsbtData(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().setPsbtData(args as String)
        }
    }

    @objc
    func SetPsbtRecord(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().setPsbtRecord(args as String)
        }
    }

    @objc
    func IsFinalizedPsbt(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().isFinalizedPsbt(args as String)
        }
    }

    @objc
    func GetPsbtUtxos(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getPsbtUtxos(args as String)
        }
    }

    @objc
    func FundPsbt(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().fundPsbt(args as String)
        }
    }

    @objc
    func GetConfidentialAddress(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getConfidentialAddress(args as String)
        }
    }

    @objc
    func GetUnblindedAddress(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getUnblindedAddress(args as String)
        }
    }

    @objc
    func CreatePegInAddress(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createPegInAddress(args as String)
        }
    }

    @objc
    func ElementsCreateRawTransaction(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().elementsCreateRawTransaction(args as String)
        }
    }

    @objc
    func ElementsAddRawTransaction(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().elementsAddRawTransaction(args as String)
        }
    }

    @objc
    func ElementsDecodeRawTransaction(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().elementsDecodeRawTransaction(args as String)
        }
    }

    @objc
    func BlindRawTransaction(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().blindRawTransaction(args as String)
        }
    }

    @objc
    func UnblindRawTransaction(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().unblindRawTransaction(args as String)
        }
    }

    @objc
    func SetRawIssueAsset(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().setRawIssueAsset(args as String)
        }
    }

    @objc
    func SetRawReissueAsset(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().setRawReissueAsset(args as String)
        }
    }

    @objc
    func CreateElementsSignatureHash(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createElementsSignatureHash(args as String)
        }
    }

    @objc
    func CreateRawPegin(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createRawPegin(args as String)
        }
    }

    @objc
    func CreateRawPegout(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createRawPegout(args as String)
        }
    }

    @objc
    func GetIssuanceBlindingKey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getIssuanceBlindingKey(args as String)
        }
    }

    @objc
    func GetDefaultBlindingKey(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getDefaultBlindingKey(args as String)
        }
    }

    @objc
    func CreateDestroyAmount(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().createDestroyAmount(args as String)
        }
    }

    @objc
    func SerializeLedgerFormat(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().serializeLedgerFormat(args as String)
        }
    }

    @objc
    func GetCommitment(_ args: NSString, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        handleCfdCall(resolve: resolve, reject: reject) {
            CfdBridge().getCommitment(args as String)
        }
    }
}
