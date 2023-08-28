//
//  AlignmnetGuideOverlay.swift
//  CustomAlignmentExample
//
//  Created by Ambas Chobsanti on 28/8/2566 BE.
//

import SwiftUI

struct AlignmnetGuideOverlay: View {
    var body: some View {
        VStack(spacing: 0) {
            Divider().frame(height: 30).background(.black)
            Spacer()
            Divider().frame(height: 30).background(.black)
            Spacer()
            Divider().frame(height: 30).background(.black)
        }
    }
}

#Preview {
    AlignmnetGuideOverlay()
}
