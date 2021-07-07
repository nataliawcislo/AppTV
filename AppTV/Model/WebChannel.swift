//
//  WebChannel.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import Foundation

struct WebChannel : Codable {
    let id : Int?
    let name : String?
    let country : Country?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case country = "country"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        country = try values.decodeIfPresent(Country.self, forKey: .country)
    }

}
