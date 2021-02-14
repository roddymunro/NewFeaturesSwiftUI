//
//  NewFeaturesAlertView.swift
//  NewFeaturesSwiftUI
//
//  Created by Roddy Munro on 13/02/2021.
//

import SwiftUI

struct NewFeaturesView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let newFeatures: [NewFeature] = [
        .init(iconName: "magnifyingglass", title: "Search", description: "Browse the web and look up photos taken from all over the world!"),
        .init(iconName: "globe", title: "Map", description: "See all locations on an easy-to-use, interactive map."),
        .init(iconName: "square.grid.3x3", title: "View", description: "Save all your favourite photos, and see them in a familiar grid style."),
        .init(iconName: "lasso.sparkles", title: "New User Interface", description: "The user interface has a big makeover, and is so much easier to use now.")
    ]
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .center, spacing: isIpad ? 64 : 32) {
                    Text("What's New in My App").titleStyle()
                        .multilineTextAlignment(.center)
                        .padding(.top, isIpad ? 80 : 32)
                        .padding(.horizontal, 16)
                    
                    VStack(alignment: .leading, spacing: 32) {
                        ForEach(newFeatures, content: NewFeatureRow.init)
                    }
                }
                .padding()
            }
            
            Button(action: { presentationMode.wrappedValue.dismiss() }, label: { Text("Continue") }).buttonStyle(PrimaryButtonStyle())
                .padding(.bottom, isIpad ? 64 : 32)
        }
        .padding(.horizontal, isIpad ? 128 : 24)
        .background(Color(.systemBackground).edgesIgnoringSafeArea(.all))
    }
}
