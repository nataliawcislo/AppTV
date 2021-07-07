//
//  CurrentShow.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import Foundation

struct CurrentShow : Codable {
    let id : Int?
    let url : String?
    let name : String?
    let season : Int?
    let number : Int?
    let type : String?
    let airdate : String?
    let airtime : String?
    let airstamp : String?
    let runtime : Int?
    let image : String?
    let summary : String?
    let _links : Links?
    let _embedded : Embedded?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case url = "url"
        case name = "name"
        case season = "season"
        case number = "number"
        case type = "type"
        case airdate = "airdate"
        case airtime = "airtime"
        case airstamp = "airstamp"
        case runtime = "runtime"
        case image = "image"
        case summary = "summary"
        case _links = "_links"
        case _embedded = "_embedded"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        season = try values.decodeIfPresent(Int.self, forKey: .season)
        number = try values.decodeIfPresent(Int.self, forKey: .number)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        airdate = try values.decodeIfPresent(String.self, forKey: .airdate)
        airtime = try values.decodeIfPresent(String.self, forKey: .airtime)
        airstamp = try values.decodeIfPresent(String.self, forKey: .airstamp)
        runtime = try values.decodeIfPresent(Int.self, forKey: .runtime)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        summary = try values.decodeIfPresent(String.self, forKey: .summary)
        _links = try values.decodeIfPresent(Links.self, forKey: ._links)
        _embedded = try values.decodeIfPresent(Embedded.self, forKey: ._embedded)
    }

}
