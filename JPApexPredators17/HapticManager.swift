//
//  HapticManager.swift
//  JPApexPredators17
//
//  Created by Artur Vasconcelos on 18/01/25.
//


import UIKit

enum HapticManager {
    static func lightTap() {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.prepare()
        generator.impactOccurred()
    }
}
