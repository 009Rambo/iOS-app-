//
//  ContentView.swift
//  EUMembers
//
//  Created by Jere Käpyaho (TAMK) on 31.3.2023.
//

import SwiftUI

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
