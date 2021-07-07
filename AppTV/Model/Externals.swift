//
//  Externals.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import Foundation

struct Externals : Codable {
    let tvrage : String?
    let thetvdb : Int?
    let imdb : String?

    enum CodingKeys: String, CodingKey {

        case tvrage = "tvrage"
        case thetvdb = "thetvdb"
        case imdb = "imdb"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        tvrage = try values.decodeIfPresent(String.self, forKey: .tvrage)
        thetvdb = try values.decodeIfPresent(Int.self, forKey: .thetvdb)
        imdb = try values.decodeIfPresent(String.self, forKey: .imdb)
    }

}
