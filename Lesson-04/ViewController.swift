//
//  ViewController.swift
//  Lesson-04
//
//  Created by pham.xuan.tien on 12/14/18.
//  Copyright © 2018 pham.xuan.tien. All rights reserved.
//

import UIKit

class ViewController: UIViewController,Delegate {

    func alert() {
        let alertController = UIAlertController(title: "Alert title", message: "Welcome from View01", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion:nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pushToNextScreen(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController02 = storyboard.instantiateViewController(withIdentifier: "VC02") as! ViewController2
        self.navigationController?.pushViewController(viewController02, animated: true)
    }

    @IBAction func nextScreenWithData(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController02 = storyboard.instantiateViewController(withIdentifier: "VC02") as! ViewController2
        viewController02.message = "Receive Data From View 01"
        self.navigationController?.pushViewController(viewController02, animated: true)
    }

    @IBAction func sendDataUsingDelegate(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController02 = storyboard.instantiateViewController(withIdentifier: "VC02") as! ViewController2
        self.navigationController?.pushViewController(viewController02, animated: true)
        viewController02.delegate = self
    }

    @IBAction func sendDataUsingClosure(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController02 = storyboard.instantiateViewController(withIdentifier: "VC02") as! ViewController2
        self.navigationController?.pushViewController(viewController02, animated: true)
        viewController02.onCompletion = { success in
            self.alert()
        }
    }
}
