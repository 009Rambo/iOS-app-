//
//  ContentView.swift
//  EUMembers
//
//  Created by Jere Käpyaho (TAMK) on 31.3.2023.
//

/*import SwiftUI

struct ContentView: View {
    @State var country: Country
    
    var body: some View {
        VStack {
            Text("\(country.name)")
                .font(.largeTitle)
            
            Image(country.code.lowercased())
                .resizable()
                .scaledToFit()
                .border(Color.black, width: 1)
            
            CountryDetailsView(country: $country)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(country: france)
    }
}
   */


import SwiftUI

struct ContentView: View {
    @State private var selectedCountry: Country

    let countries: [Country] = [
        Country(code: "AT", name: "Austria", area: 83_879, population: 9_027_999, isMember: true, isEuroZone: true),
        Country(code: "FI", name: "Finland", area: 338_435, population: 5_555_300, isMember: true, isEuroZone: true),
        Country(code: "FR", name: "France", area: 632_833, population: 67_897_000, isMember: true, isEuroZone: true),
        Country(code: "DE", name: "Germany", area: 357_430, population: 83_695_430, isMember: true, isEuroZone: true),
        Country(code: "GB", name: "Great Britain", area: 248_528, population: 60_800_000, isMember: false, isEuroZone: false)
    ]

    init(country: Country) {
        _selectedCountry = State(initialValue: country)
    }

    var body: some View {
        VStack(spacing: 20) {
            Text("Hello :) Welcome to the Country info App")
            HStack {
            Text("Please Select a Country:")
                .font(.headline)
                //.frame(maxWidth: .infinity, alignment: .leading)
            
            Picker("", selection: $selectedCountry) {
                ForEach(countries, id: \.self) { country in
                    Text(country.name).tag(country)
                        .font(.largeTitle)
                }
            }
            .pickerStyle(MenuPickerStyle()) // Dropdown style
        
            }
           /* Text("Country: \(selectedCountry.name)")
            Text("Code: \(selectedCountry.code)")
            Text("Population: \(selectedCountry.population)")
            Text("Area: \(selectedCountry.area) km²")
            Text("EU Member: \(selectedCountry.isMember ? "Yes" : "No")")
            Text("Eurozone: \(selectedCountry.isEuroZone ? "Yes" : "No")") */
            
            Image(selectedCountry.code.lowercased())
                .resizable()
                .scaledToFit()
                .border(Color.black, width: 1)
            
            CountryDetailsView (country: $selectedCountry)
            
        }
        .padding()
    }
}
