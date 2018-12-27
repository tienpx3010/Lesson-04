//
//  ViewController3.swift
//  Lesson-04
//
//  Created by pham.xuan.tien on 12/14/18.
//  Copyright © 2018 pham.xuan.tien. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func pushToNextScreen(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController04 = storyboard.instantiateViewController(withIdentifier: "VC04") as! ViewController4
        self.navigationController?.pushViewController(viewController04, animated: true)
    }

    @IBAction func popToRootScreen(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }

    @IBAction func previousScreenWithData(_ sender: Any) {
        let i = navigationController?.viewControllers.index(of: self)
        let previousViewController = navigationController?.viewControllers[i!-1] as! ViewController2
        previousViewController.setTitleLabel(message: "Receive Data From View 03")
        self.navigationController?.popViewController(animated: true)
    }
}
