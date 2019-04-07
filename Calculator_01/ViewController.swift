//
//  ViewController.swift
//  Calculator_01
//
//  Created by 神原良継 on 2019/03/28.
//  Copyright © 2019 YoshitsuguKambara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    
    var ope: Int = 0
    /*****
     +: ope = 1
     -: ope = 2
     *: ope = 3
     /: ope = 4
    *****/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func select0(_ sender: Any) {
        number1 = number1*10 + 0
        label.text = String(number1)
    }
    
    @IBAction func select1(_ sender: Any) {
        number1 = number1*10 + 1
        label.text = String(number1)
        
    }
    
    @IBAction func select2(_ sender: Any) {
        number1 = number1*10 + 2
        label.text = String(number1)
    }
    
    @IBAction func select3(_ sender: Any) {
        number1 = number1*10 + 3
        label.text = String(number1)
    }
    
    @IBAction func select4(_ sender: Any) {
        number1 = number1*10 + 4
        label.text = String(number1)
    }
    
    @IBAction func select5(_ sender: Any) {
        number1 = number1*10 + 5
        label.text = String(number1)
    }
    
    @IBAction func select6(_ sender: Any) {
        number1 = number1*10 + 6
        label.text = String(number1)
    }
    
    @IBAction func select7(_ sender: Any) {
        number1 = number1*10 + 7
        label.text = String(number1)
    }
    
    @IBAction func select8(_ sender: Any) {
        number1 = number1*10 + 8
        label.text = String(number1)
    }
    
    @IBAction func select9(_ sender: Any) {
        number1 = number1*10 + 9
        label.text = String(number1)
    }
    
    @IBAction func plus(_ sender: Any) {
        number2 = number1
        number1 = 0
        ope = 1
    }
 
    @IBAction func minus(_ sender: Any) {
        number2 = number1
        number1 = 0
        ope = 2
    }
    
    @IBAction func multiplication(_ sender: Any) {
        number2 = number1
        number1 = 0
        ope = 3
    }
    
    @IBAction func devision(_ sender: Any) {
        number2 = number1
        number1 = 0
        ope = 4
    }
    
    @IBAction func equal(_ sender: Any) {
        if ope == 1 {
            number3 = number2 + number1
            label.text = String(number3)
        } else if ope == 2 {
            number3 = number2 - number1
            label.text = String(number3)
        } else if ope == 3 {
            number3 = number2 * number1
            label.text = String(number3)
        } else if ope == 4 {
            if number1 != 0 {
                number3 = number2 / number1
                label.text = String(number3)
            } else if number1 == 0 {
                label.text = "0で割ることはできません"
            }
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        number1 = 0
        number2 = 0
        number3 = 0
        label.text = String(number3)
    }

}

