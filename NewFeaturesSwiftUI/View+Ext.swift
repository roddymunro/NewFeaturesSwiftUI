//
//  View+Ext.swift
//  NewFeaturesSwiftUI
//
//  Created by Roddy Munro on 13/02/2021.
//

import SwiftUI

extension View {
    
    public var isIpad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
}
