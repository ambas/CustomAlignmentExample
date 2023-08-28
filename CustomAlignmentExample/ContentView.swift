//
//  ContentView.swift
//  CustomAlignmentExample
//
//  Created by Ambas Chobsanti on 28/8/2566 BE.
//

import SwiftUI
import SimpleSegmentedControl

struct ContentView: View {
    @State var greenBaseline: MyVerticalAlignment = .center
    @State var redBseline: MyVerticalAlignment = .center
    @State var showAligmentGuide = false
    
    let options = [
        ("Top", MyVerticalAlignment.top),
        ("Center", MyVerticalAlignment.center),
        ("Bottom", MyVerticalAlignment.bottom)
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            Toggle(isOn: $showAligmentGuide, label: { Text("Show alignment guide") })
            SimepleSegmentedControl(selected: $greenBaseline, pairs: options)
            SimepleSegmentedControl(selected: $redBseline, pairs: options)

            HStack(alignment: .pokemonAlignment, spacing: 0) {
                VStack {
                    Image(._1)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .alignmentGuide(.pokemonAlignment) { dimension in
                            dimension[greenBaseline.alignment]
                        }
                        .frame(height: 120)
                        .overlay { if showAligmentGuide { AlignmnetGuideOverlay() } }
                }
                VStack {
                    Image(._4)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .alignmentGuide(.pokemonAlignment) { dimension in
                            dimension[redBseline.alignment]
                        }
                        .frame(height: 120)
                        .overlay { if showAligmentGuide { AlignmnetGuideOverlay() } }
                }
            }
            .animation(.bouncy, value: greenBaseline)
            .animation(.bouncy, value: redBseline)
            .animation(.default, value: showAligmentGuide)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

extension VerticalAlignment {
    private struct PokemonAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[VerticalAlignment.bottom]
        }
    }
    
    static let pokemonAlignment = VerticalAlignment(PokemonAlignment.self)
}

#Preview {
    AlignmnetGuideOverlay()
        .background(.white)
}

