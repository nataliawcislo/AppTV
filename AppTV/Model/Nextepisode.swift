//
//  Nextepisode.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import Foundation

struct Nextepisode : Codable {
    let href : String?

    enum CodingKeys: String, CodingKey {

        case href = "href"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        href = try values.decodeIfPresent(String.self, forKey: .href)
    }

}
