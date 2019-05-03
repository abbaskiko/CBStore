// Copyright (c) 2017-2019 Coinbase Inc. See LICENSE

import Foundation

extension Bundle {
    /// Returns the keychain group ID
    public var keychainGroupID: String {
        guard let info = self.infoDictionary, let appIdentifier = info["AppIdentifierPrefix"] as? String,
            let bundleId = info["CFBundleIdentifier"] as? String else {
            return bundleIdentifier ?? ""
        }

        return "\(appIdentifier)\(bundleId)"
    }
}