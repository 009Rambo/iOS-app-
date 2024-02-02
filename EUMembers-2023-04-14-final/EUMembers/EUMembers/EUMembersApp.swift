//
//  EUMembersApp.swift
//  EUMembers
//
//  Created by Jere Käpyaho (TAMK) on 31.3.2023.
//

import SwiftUI

let austria = Country(code: "AT", name: "Austria", area: 83_879, population: 9_027_999, isMember: true, isEuroZone: true)
let finland = Country(code: "FI", name: "Finland", area: 338_435, population: 5_555_300, isMember: true, isEuroZone: true)
let france = Country(code: "FR", name: "France", area: 632_833, population: 67_897_000, isMember: true, isEuroZone: true)
let germany = Country(code: "DE", name: "Germany", area: 357_430, population: 83_695_430, isMember: true, isEuroZone: true)
let greatBritain = Country(code: "GB", name: "Great Britain", area: 248_528, population: 60_800_000, isMember: false, isEuroZone: false)

@main
struct EUMembersApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(country: finland)
        }
    }
}
