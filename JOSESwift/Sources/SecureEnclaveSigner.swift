//
//  SecureEnclaveSigner.swift
//  JOSESwift
//
//  Created by Johan Fylling on 2020-11-18.
//

import CryptoKit
import Foundation

@available(iOS 13.0, *)
struct SecureEnclaveSigner: SignerProtocol {
    let algorithm: SignatureAlgorithm
    let privateKey: SecureEnclave.P256.Signing.PrivateKey

    func sign(_ signingInput: Data) throws -> Data {
        try privateKey.signature(for: signingInput).rawRepresentation
    }
}
