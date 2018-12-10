//
//  ViewController.swift
//  7 Swifty Words
//
//  Created by Evgeniy Ryshkov on 10/12/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cluesLabel: UILabel!
    @IBOutlet weak var answersLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var currentAnswer: UITextField!
    @IBOutlet weak var buttonsStack: UIStackView!
    
    var letterButtons = [UIButton]()
    var activatedButtons = [UIButton]()
    var solutions = [String]()
    var score = 0
    var level = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for stackView in buttonsStack.subviews {
            for subview in stackView.subviews where subview.tag == 1001 {
                let btn = subview as! UIButton
                letterButtons.append(btn)
                btn.addTarget(self, action: #selector(letterTapped), for: .touchUpInside)
            }
        }
        
    }
    
    @objc func letterTapped(){
        
    }
    
    //MARK: -IBActions
    @IBAction func submitTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func clearTapped(_ sender: UIButton) {
        
    }
    
}

