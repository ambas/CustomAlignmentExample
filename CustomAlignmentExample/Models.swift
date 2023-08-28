//
//  Models.swift
//  CustomAlignmentExample
//
//  Created by Ambas Chobsanti on 28/8/2566 BE.
//

import SwiftUI


enum MyVerticalAlignment: Hashable, Equatable {
    case top
    case center
    case bottom
}

extension MyVerticalAlignment {
    var alignment: VerticalAlignment {
        switch self {
        case .bottom: VerticalAlignment.bottom
        case .top: VerticalAlignment.top
        case .center: VerticalAlignment.center
        }
    }
}

