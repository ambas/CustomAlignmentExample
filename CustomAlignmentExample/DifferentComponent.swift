//
//  DifferentComponent.swift
//  CustomAlignmentExample
//
//  Created by Ambas Chobsanti on 30/8/2566 BE.
//

import SwiftUI

struct DifferentComponent: View {
    var body: some View {
        VStack {
            Image(._1)
            ChildComponent()
        }
    }
}

#Preview {
    DifferentComponent()
}

struct ChildComponent: View {
    var body: some View {
        VStack {
            
        }
    }
}
