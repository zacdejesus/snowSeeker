//
//  Facility.swift
//  snowSeeker
//
//  Created by Z on 10/10/2023.
//

import SwiftUI

struct Facility: Identifiable {
    let id = UUID()
    var name: String

    private let icons = [
        "Accommodation": "house",
        "Beginners": "1.circle",
        "Cross-country": "map",
        "Eco-friendly": "leaf.arrow.circlepath",
        "Family": "person.3"
    ]

    var icon: some View {
        if let iconName = icons[name] {
            return Image(systemName: iconName)
                .accessibilityLabel(name)
                .foregroundColor(.secondary)
        } else {
            fatalError("Unknown facility type: \(name)")
        }
    }
}
