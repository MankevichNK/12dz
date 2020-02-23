//
//  ViewController.swift
//  12dz
//
//  Created by Пользователь on 2/21/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blue1: UIView!
    @IBOutlet weak var blue2: UIView!
    @IBOutlet weak var green2: UIView!
    @IBOutlet weak var green1: UIView!
    
    
    var rounded = false
    
    var allView: [UIView] {
            return [redView, blue1, blue2, green1, green2]
        }
    
    var colorsArray: [UIColor] = [.red, .blue, .blue, .green, .green]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .red
        
    }

    
    @IBAction func button1() {
        rounded = !rounded
        
            allView.forEach{ view in
                view.layer.cornerRadius = rounded ? 20.0 : 0
        }
    }
    
    
    @IBAction func button2() {
        
        if redView.backgroundColor == .red {
            allView.forEach { view in
                view.backgroundColor = .black
            }
            } else {
                for i in 0..<allView.count {
                    allView[i].backgroundColor = colorsArray[i]
                }
        }
        
    }
}
