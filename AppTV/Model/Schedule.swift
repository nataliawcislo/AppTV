//
//  Schedule.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import Foundation

struct Schedule : Codable {
    let time : String?
    let days : [String]?

    enum CodingKeys: String, CodingKey {

        case time = "time"
        case days = "days"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        time = try values.decodeIfPresent(String.self, forKey: .time)
        days = try values.decodeIfPresent([String].self, forKey: .days)
    }

}
