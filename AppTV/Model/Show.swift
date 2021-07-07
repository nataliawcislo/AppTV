//
//  Show.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import Foundation

struct Show : Codable {
    let id : Int?
    let url : String?
    let name : String?
    let type : String?
    let language : String?
    let genres : [String]?
    let status : String?
    let runtime : Int?
    let averageRuntime : Int?
    let premiered : String?
    let officialSite : String?
    let schedule : Schedule?
    let rating : Rating?
    let weight : Int?
    let network : String?
    let webChannel : WebChannel?
    let dvdCountry : String?
    let externals : Externals?
    let image : Image?
    let summary : String?
    let updated : Int?
    let _links : Links?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case url = "url"
        case name = "name"
        case type = "type"
        case language = "language"
        case genres = "genres"
        case status = "status"
        case runtime = "runtime"
        case averageRuntime = "averageRuntime"
        case premiered = "premiered"
        case officialSite = "officialSite"
        case schedule = "schedule"
        case rating = "rating"
        case weight = "weight"
        case network = "network"
        case webChannel = "webChannel"
        case dvdCountry = "dvdCountry"
        case externals = "externals"
        case image = "image"
        case summary = "summary"
        case updated = "updated"
        case _links = "_links"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        language = try values.decodeIfPresent(String.self, forKey: .language)
        genres = try values.decodeIfPresent([String].self, forKey: .genres)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        runtime = try values.decodeIfPresent(Int.self, forKey: .runtime)
        averageRuntime = try values.decodeIfPresent(Int.self, forKey: .averageRuntime)
        premiered = try values.decodeIfPresent(String.self, forKey: .premiered)
        officialSite = try values.decodeIfPresent(String.self, forKey: .officialSite)
        schedule = try values.decodeIfPresent(Schedule.self, forKey: .schedule)
        rating = try values.decodeIfPresent(Rating.self, forKey: .rating)
        weight = try values.decodeIfPresent(Int.self, forKey: .weight)
        network = try values.decodeIfPresent(String.self, forKey: .network)
        webChannel = try values.decodeIfPresent(WebChannel.self, forKey: .webChannel)
        dvdCountry = try values.decodeIfPresent(String.self, forKey: .dvdCountry)
        externals = try values.decodeIfPresent(Externals.self, forKey: .externals)
        image = try values.decodeIfPresent(Image.self, forKey: .image)
        summary = try values.decodeIfPresent(String.self, forKey: .summary)
        updated = try values.decodeIfPresent(Int.self, forKey: .updated)
        _links = try values.decodeIfPresent(Links.self, forKey: ._links)
    }

}
