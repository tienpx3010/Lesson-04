//
//  ViewController4.swift
//  Lesson-04
//
//  Created by pham.xuan.tien on 12/14/18.
//  Copyright © 2018 pham.xuan.tien. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func popToView02(_ sender: Any) {
        for view in (navigationController?.viewControllers)! {
            if(view is ViewController2) {
                self.navigationController?.popToViewController(view, animated: true)
                break
            }
        }
    }
}
