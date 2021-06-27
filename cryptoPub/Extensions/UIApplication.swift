//
//  UIApplication.swift
//  cryptoPub
//
//  Created by Arnold Mitricã on 09.06.2021.
//

import Foundation
import SwiftUI

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
