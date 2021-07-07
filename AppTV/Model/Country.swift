//
//  File.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import Foundation

struct Country : Codable {
    let name : String?
    let code : String?
    let timezone : String?

    enum CodingKeys: String, CodingKey {

        case name = "name"
        case code = "code"
        case timezone = "timezone"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        timezone = try values.decodeIfPresent(String.self, forKey: .timezone)
    }

}
