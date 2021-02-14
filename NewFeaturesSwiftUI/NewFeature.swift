//
//  NewFeature.swift
//  NewFeaturesSwiftUI
//
//  Created by Roddy Munro on 13/02/2021.
//

import Foundation

struct NewFeature: Identifiable {
    let id = UUID().uuidString
    let iconName: String
    let title: String
    let description: String
}
