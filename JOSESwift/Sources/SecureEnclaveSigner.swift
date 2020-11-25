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
internal struct SecureEnclaveSigner: SignerProtocol {
    let algorithm: SignatureAlgorithm
    let privateKey: SecureEnclave.P256.Signing.PrivateKey

    func sign(_ signingInput: Data) throws -> Data {
        try privateKey.signature(for: signingInput).rawRepresentation
    }
}
