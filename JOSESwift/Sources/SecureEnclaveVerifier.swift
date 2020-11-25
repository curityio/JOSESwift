/*
 * Copyright (C) 2020 Curity AB. All rights reserved.
 *
 * The contents of this file are the property of Curity AB.
 * You may not copy or use this file, in either source code
 * or executable form, except in compliance with terms
 * set by Curity AB.
 *
 * For further information, please contact Curity AB.
 */

import CryptoKit
import Foundation

@available(iOS 13.0, *)
internal struct SecureEnclaveVerifier: VerifierProtocol {
    var algorithm: SignatureAlgorithm
    let publicKey: P256.Signing.PublicKey
    
    func verify(_ signingInput: Data, against signature: Data) throws -> Bool {
        try publicKey.isValidSignature(P256.Signing.ECDSASignature(rawRepresentation: signature), for: signingInput)
    }
}
