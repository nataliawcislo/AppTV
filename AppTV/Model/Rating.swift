//
//  Rating.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import Foundation

struct Rating : Codable {
    let average : String?

    enum CodingKeys: String, CodingKey {

        case average = "average"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        average = try values.decodeIfPresent(String.self, forKey: .average)
    }

}
