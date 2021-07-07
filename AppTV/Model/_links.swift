//
//  _links.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import Foundation

struct Links : Codable {
    let selfLink : SelfLink?
    let previousepisode : Previousepisode?
    let nextepisode : Nextepisode?

    enum CodingKeys: String, CodingKey {

        case selfLink = "self"
        case previousepisode = "previousepisode"
        case nextepisode = "nextepisode"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        selfLink = try values.decodeIfPresent(SelfLink.self,
                                              forKey: .selfLink)
        previousepisode = try values.decodeIfPresent(Previousepisode.self, forKey: .previousepisode)
        nextepisode = try values.decodeIfPresent(Nextepisode.self, forKey: .nextepisode)
    }

}
