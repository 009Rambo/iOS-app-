//
//  Country.swift
//  EUMembers
//
//  Created by Jere Käpyaho (TAMK) on 31.3.2023.
//

import Foundation

struct Country {
    var code: String
    var name: String
    var area: Int
    var population: Int
    var populationDensity: Int {
        return self.population / self.area
    }
    var isMember: Bool
    var isEuroZone: Bool
}
