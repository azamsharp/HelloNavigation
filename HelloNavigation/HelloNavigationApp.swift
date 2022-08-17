//
//  HelloNavigationApp.swift
//  HelloNavigation
//
//  Created by Mohammad Azam on 8/17/22.
//

import SwiftUI

enum Route: Hashable {
    case detail(Place)
    case reviews
    case add
}

class Router: ObservableObject {
    
    @Published var path = NavigationPath()
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}


@main
struct HelloNavigationApp: App {
    
    @StateObject private var router = Router()
    
    var body: some Scene {
        WindowGroup {
            
            NavigationStack(path: $router.path) {
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
            }.environmentObject(router)
        }
    }
}
