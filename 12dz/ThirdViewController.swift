//
//  ThirdViewController.swift
//  12dz
//
//  Created by Пользователь on 2/23/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var titleForLabel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "Can not find an image with name: \(titleForLabel!)"
        // Do any additional setup after loading the view.
    }

}
