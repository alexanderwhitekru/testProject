//
//  String+TestTask.swift
//  TestTask
//
//  Created by Alexander on 10/3/17.
//  Copyright © 2017 Alexander. All rights reserved.
//

import Foundation

extension String {
    
    //extension methid for filtered multiplayer spaces
    func condencingWhitespace() -> String {
        return self.components(separatedBy: .whitespacesAndNewlines).filter { !$0.isEmpty
        }.joined(separator: " ")
    }
}
