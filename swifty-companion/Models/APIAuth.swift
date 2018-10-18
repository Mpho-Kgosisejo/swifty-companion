//
//  APIAuth.swift
//  swifty-companion
//
//  Created by Mpho KGOSISEJO on 2018/10/17.
//  Copyright © 2018 Mpho KGOSISEJO. All rights reserved.
//

import Foundation

struct Token: Decodable {
    let access_token: String?
    let created_at: Int?
    let expires_in: Int?
    let scope: String?
    let token_type: String?
}
