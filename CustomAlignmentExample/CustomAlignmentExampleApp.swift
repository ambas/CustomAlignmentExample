//
//  CustomAlignmentExampleApp.swift
//  CustomAlignmentExample
//
//  Created by Ambas Chobsanti on 28/8/2566 BE.
//

import SwiftUI
import SimpleExample

@main
struct CustomAlignmentExampleApp: App {
    var body: some Scene {
        WindowGroup {
            SimpleExampleView(title: "Custom Alignment", items: [
                .init(title: "Same Stack", view: SameStackExample()),
                .init(title: "Different Component", view: DifferentComponent()),
            ])
        }
    }
}
