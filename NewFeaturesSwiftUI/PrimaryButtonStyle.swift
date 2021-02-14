//
//  PrimaryButtonStyle.swift
//  NewFeaturesSwiftUI
//
//  Created by Roddy Munro on 13/02/2021.
//

import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    
    public init() {}
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.body.weight(.semibold))
            .frame(maxWidth: .infinity, alignment: .center)
            .textCase(.uppercase)
            .padding()
            .background(Color.accentColor.opacity(configuration.isPressed ? 0.7 : 1))
            .foregroundColor(.white)
            .frame(height: 48)
            .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
