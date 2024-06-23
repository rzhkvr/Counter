//
//  ViewController.swift
//  Counter
//
//  Created by Roman Ryzhkov on 20.06.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonResetValueCounter: UIButton!
    @IBOutlet weak var buttonMinusValueCounter: UIButton!
    @IBOutlet weak var buttonPlusValueCounter: UIButton!
    @IBOutlet weak var labelValueCounter: UILabel!
    var count = 0
    
    @IBOutlet weak var textViewValueCounter: UITextView!
    
    var todayDay: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy, HH:mm:ss"
        dateFormatter.timeZone = TimeZone.current
        return dateFormatter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    
    @IBAction func buttonResetValueCounter(_ sender: Any){
        count = 0
        let todayDay = todayDay.string(from: Date())
        labelValueCounter.text = "Значение счетчика: \(count)"
        textViewValueCounter.text += "\(todayDay): значение сброшено \n"
    }
    
    @IBAction func buttonMinusValueCounter(_ sender: Any) {
        if count > 0 {
            count = count - 1
            let todayDay = todayDay.string(from: Date())
            labelValueCounter.text = "Значение счетчика: \(count)"
            textViewValueCounter.text += "\(todayDay): значение уменьшено на 1 \n"
        } else {
            let todayDay = todayDay.string(from: Date())
            labelValueCounter.text = "Значение счетчика: \(count)"
            textViewValueCounter.text += "\(todayDay): попытка уменьшить значение счетчика ниже 0 \n"
        }
    }
    
    @IBAction func buttonPlusValueCounter(_ sender: Any) {
        count = count + 1
        let todayDay = todayDay.string(from: Date())
        labelValueCounter.text = "Значение счетчика: \(count)"
        textViewValueCounter.text += "\(todayDay): значение увеличено на 1 \n"
    }
}

