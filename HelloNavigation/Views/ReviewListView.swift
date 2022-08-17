//
//  ReviewListView.swift
//  HelloNavigation
//
//  Created by Mohammad Azam on 8/17/22.
//

import SwiftUI

struct ReviewListView: View {
    
    @EnvironmentObject private var router: Router
    
    var body: some View {
        VStack {
            Text("Reviews")
                .font(.largeTitle)
            Button("Take me home") {
                router.popToRoot() 
            }
        }
    }
}

struct ReviewListView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewListView()
    }
}
