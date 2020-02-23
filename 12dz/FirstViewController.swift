//
//  FirstViewController.swift
//  12dz
//
//  Created by Пользователь on 2/23/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func checkButton(_ sender: Any) {
        showSecondVC()
    }
    func showSecondVC() {
        
        if let index = textField.text,
            let image = getImage(withIndex: index)
        {
            let secondVC = getSecondScreen()
            navigationController!.pushViewController(secondVC, animated: true)
            secondVC.imageToPresent = image
        } else {
            let thirdVC = getThirdScreen()
            let text = textField.text
            thirdVC.titleForLabel = text
            navigationController!.pushViewController(thirdVC, animated: true)
        }
            }
    func getSecondScreen() -> SecondViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
    }
    func getThirdScreen() -> ThirdViewController {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
    }
    
}


private extension FirstViewController {

    func getImage(withIndex index: String) -> UIImage? {
        switch index {
        case "bird":
            return UIImage(named: "bird")
        case "butterfly":
            return UIImage(named: "butterfly")
        case "dog":
            return UIImage(named: "dog")
        case "lion":
            return UIImage(named: "lion")
        case "ladybug":
            return UIImage(named: "ladybug")
        default:
            return nil
        }
    }
}
