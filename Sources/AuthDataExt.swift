//
//  AuthDataExt.swift
//  PlacesApp
//
//  Copyright © 2017 Gemini Solutions. All rights reserved.
//

import Foundation
import Auth

public class AuthDataExt: AuthData {
    public var username: String? {
        get {
            return credentials?["username"] as? String
        }
        set {
            if credentials == nil {
                credentials = [:]
            }
            credentials!["username"] = newValue
        }
    }

    public var password: String? {
        get {
            return credentials?["password"] as? String
        }
        set {
            if credentials == nil {
                credentials = [:]
            }
            credentials!["password"] = newValue
        }
    }
}
