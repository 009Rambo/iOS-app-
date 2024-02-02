//
//  CountryDetailsView.swift
//  EUMembers
//
//  Created by Jere Käpyaho (TAMK) on 14.4.2023.
//

import SwiftUI

struct CountryDetailsView: View {
    @Binding var country: Country
    
    var body: some View {
        VStack {
            MembershipView(country: $country)
            
            Text("Population: \(country.population)")
            Text("Area: \(country.area) km\u{B2}")
            Text("Population density: \(country.populationDensity) persons per km\u{B2}")
        }
    }
}

struct CountryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailsView(country: .constant(finland))
    }
}

