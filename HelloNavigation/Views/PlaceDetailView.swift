//
//  PlaceDetailView.swift
//  Learn
//
//  Created by Mohammad Azam on 8/14/22.
//

import SwiftUI

struct PlaceDetailView: View {
    
    let place: Place
    
    var body: some View {
        VStack {
            Image(place.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(place.name)
            Spacer()
            NavigationLink("Show Reviews", value: Route.reviews)
            .navigationTitle(place.name)
        }.padding()
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            PlaceDetailView(place: Place.preview)
        }
    }
}
