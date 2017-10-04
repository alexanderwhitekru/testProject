//
//  ViewController.swift
//  TestTask
//
//  Created by Alexander on 10/3/17.
//  Copyright © 2017 Alexander. All rights reserved.
//
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerTextLabel: UILabel!
    @IBOutlet weak var enteredIncorrectTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func editTextButtonAction(_ sender: Any) {
        guard let textForEdit = enteredIncorrectTextField.text else {
            return
        }
        let editClass = EditString(stringForEdit: textForEdit)
        answerTextLabel.text = editClass.editText()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

