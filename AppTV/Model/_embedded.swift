//
//  _embedded.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import Foundation

struct Embedded : Codable {
    let show : Show?

    enum CodingKeys: String, CodingKey {

        case show = "show"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        show = try values.decodeIfPresent(Show.self, forKey: .show)
    }

}
