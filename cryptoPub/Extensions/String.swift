//
//  String.swift
//  cryptoPub
//
//  Created by Arnold Mitricã on 22.06.2021.
//

import Foundation

extension String{
        var removingHTMLOccurances: String {
            return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
        }

}
