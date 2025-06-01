//
//  Extensions.swift
//  DemonSlayeriOS
//
//  Created by Adam Muhammad on 01/06/2025.
//

import SwiftUI

// MARK: - Color Extension
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255, opacity: Double(a) / 255)
    }
}

extension Color {
    // Primary Color Palette
    static let bgDark = Color(hex: "#0A1A2F")
    static let bgMedium = Color(hex: "#152D4A")
    static let bgLight = Color(hex: "#1E3A5A")
    
    // Accent Colors
    static let accentPrimary = Color(hex: "#00C9A7")
    static let accentSecondary = Color(hex: "#5E60CE")
    
    // Text Colors
    static let textPrimary = Color(hex: "#FFFFFF")
    static let textSecondary = Color(hex: "#8B9AAF")
    static let textTertiary = Color(hex: "#627597")
    
    // System Colors
    static let success = Color(hex: "#00E676")
    static let warning = Color(hex: "#FFC107")
    static let error = Color(hex: "#FF5252")
}
