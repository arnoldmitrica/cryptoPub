//
//  HapticManager.swift
//  cryptoPub
//
//  Created by Arnold Mitricã on 17.06.2021.
//

import Foundation
import SwiftUI

class HapticManager{
    static let generator = UINotificationFeedbackGenerator()
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType){
        generator.notificationOccurred(type)
    }
}
