//
//  Color.swift
//  cryptoPub
//
//  Created by Arnold Mitricã on 04.06.2021.
//

import Foundation
import SwiftUI

extension Color{
    static let theme = ColorTheme2()
    static let launch = LaunchTheme()
}

struct ColorTheme{
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let red = Color("RedColor")
    let green = Color("GreenColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct ColorTheme2{
    let accent = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    let background = Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))
    let red = Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
    let green = Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1))
    let secondaryText = Color(#colorLiteral(red: 0.4796273112, green: 0.4974263906, blue: 0.6304117441, alpha: 1))
}

struct LaunchTheme{
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}
