//
//  SecureEnclaveVerifier.swift
//  JOSESwift
//
//  Created by Johan Fylling on 2020-11-19.
//

import CryptoKit
import Foundation

@available(iOS 13.0, *)
struct SecureEnclaveVerifier: VerifierProtocol {
    var algorithm: SignatureAlgorithm
    let publicKey: P256.Signing.PublicKey
    
    func verify(_ signingInput: Data, against signature: Data) throws -> Bool {
        try publicKey.isValidSignature(P256.Signing.ECDSASignature(rawRepresentation: signature), for: signingInput)
    }
}
