//
//  SecondViewController.swift
//  12dz
//
//  Created by Пользователь on 2/23/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageToPresent: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = imageToPresent
    }


}
