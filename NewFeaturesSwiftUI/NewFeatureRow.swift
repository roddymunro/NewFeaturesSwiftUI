//
//  NewFeatureRow.swift
//  NewFeaturesSwiftUI
//
//  Created by Roddy Munro on 13/02/2021.
//

import SwiftUI

struct NewFeatureRow: View {
    let feature: NewFeature
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: feature.iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 36, height: 36)
                .foregroundColor(.accentColor)
                .padding(8)
            VStack(alignment: .leading, spacing: 4) {
                Text(feature.title).headerStyle()
                Text(feature.description).foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}
