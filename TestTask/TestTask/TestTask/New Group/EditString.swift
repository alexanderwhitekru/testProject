//
//  EditString.swift
//  TestTask
//
//  Created by Alexander on 10/3/17.
//  Copyright © 2017 Alexander. All rights reserved.
//

import UIKit

class EditString: NSObject {
    
    var stringForEdit: String
    
    // array for compare punctual character
    let punctuationCharacter: [String] = ["!", "?", ".", ","]
    
    init(stringForEdit: String) {
        self.stringForEdit = stringForEdit
    }
    
    func editText() -> String {
        
        // string character equal lower
        self.stringForEdit = self.stringForEdit.lowercased()
        var resultString = ""
        
        // add spaces after punctual characters
        for index in 0..<punctuationCharacter.count {
            stringForEdit = stringForEdit.replacingOccurrences(of: punctuationCharacter[index], with: punctuationCharacter[index] + " ", options: .literal, range: nil)
        }
        
        // replace lowercase to uppercase
        stringForEdit.uppercased().enumerateSubstrings(in: stringForEdit.startIndex..<stringForEdit.endIndex, options: .bySentences) { (sub, _, _, _) in
            resultString += String(sub!.characters.prefix(1))
            resultString += String(sub!.characters.dropFirst(1)).lowercased()
        }
        var editText = resultString
        
        // remove spaces before punctual characters
        for index in 0..<punctuationCharacter.count {
            editText = editText.replacingOccurrences(of: " " + punctuationCharacter[index], with: punctuationCharacter[index], options: .literal, range: nil)
        }
        
        // remove multiply spaces
        editText = editText.condencingWhitespace()
        return editText
    }
}
