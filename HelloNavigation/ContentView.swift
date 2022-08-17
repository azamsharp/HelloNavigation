//
//  ContentView.swift
//  Learn
//
//  Created by Mohammad Azam on 8/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var router: Router
    @State private var places = Place.all()
    // @State private var path: [Place] = []
    //@State private var path = NavigationPath()
    
    var body: some View {
            VStack {
                
                NavigationLink("Show Reviews", value: Route.reviews)
                
                Button("Show Featured City") {
                    // find the featured city
                    guard let featuredPlace = places.first(where: { $0.isFeatured }) else { return }
                    router.path.append(Route.detail(featuredPlace))
                }
                
                List(places, id: \.name) { place in
                    NavigationLink(value: Route.detail(place)) {
                        PlaceCellView(place: place)
                    }
                }
                .navigationTitle("Places")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView()
                .navigationDestination(for: Route.self) { route in
                    switch route {
                        case .detail(let place):
                            PlaceDetailView(place: place)
                        case .reviews:
                            ReviewListView()
                        case .add:
                            Text("ADD")
                    }
                }
        }.environmentObject(Router())
    }
}


struct PlaceCellView: View {
    
    let place: Place
    
    var body: some View {
        HStack {
            Image(place.photo)
                .resizable()
                .frame(width: 75, height: 75)
            Text(place.name)
        }
    }
}
