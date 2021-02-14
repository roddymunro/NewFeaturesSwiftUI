//
//  ContentView.swift
//  NewFeaturesSwiftUI
//
//  Created by Roddy Munro on 13/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewFeaturesSheet: Bool = false
    
    var body: some View {
        Button("Show New Features", action: { showNewFeaturesSheet = true })
            .padding()
            .sheet(isPresented: $showNewFeaturesSheet, content: {
                NewFeaturesView()
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
