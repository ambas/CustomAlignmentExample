//
//  DifferentComponent.swift
//  CustomAlignmentExample
//
//  Created by Ambas Chobsanti on 30/8/2566 BE.
//

import SwiftUI

struct DifferentComponent: View {
    var body: some View {
        HStack(alignment: .pokemonAlignment) {
            Image(._1)
                .resizable()
                .aspectRatio(contentMode: .fit)
            ChildComponent()
        }
    }

}

#Preview {
    DifferentComponent()
}

struct ChildComponent: View {
    var body: some View {
        HStack(alignment: .pokemonAlignment) {
            Image(._4)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

private extension VerticalAlignment {
    private struct PokemonAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[VerticalAlignment.bottom]
        }
    }
    
    static let pokemonAlignment = VerticalAlignment(PokemonAlignment.self)
}
