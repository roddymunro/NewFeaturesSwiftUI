//
//  Text+ViewModifier.swift
//  NewFeaturesSwiftUI
//
//  Created by Roddy Munro on 13/02/2021.
//

import SwiftUI

extension Text {
    func titleStyle() -> some View {
        self
            .font(.title)
            .fontWeight(.bold)
    }
    
    func headerStyle() -> some View {
        self
            .font(.headline)
            .fontWeight(.semibold)
    }
}
