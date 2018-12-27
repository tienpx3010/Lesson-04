//
//  ViewController2.swift
//  Lesson-04
//
//  Created by pham.xuan.tien on 12/14/18.
//  Copyright © 2018 pham.xuan.tien. All rights reserved.
//

import UIKit

protocol Delegate: class {
    func alert()
}

class ViewController2: UIViewController {
    var message = "No data"
    @IBOutlet weak var titleLabel: UILabel!
    weak var delegate: Delegate?
    var onCompletion: ((_ success: Bool) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = message
        delegate?.alert()
        onCompletion?(true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
    }

    func setTitleLabel(message: String) {
        titleLabel.text = message
    }

    @IBAction func pushToNextScreen(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController03 = storyboard.instantiateViewController(withIdentifier: "VC03") as! ViewController3
        self.navigationController?.pushViewController(viewController03, animated: true)
    }

    @IBAction func popToPreviousScreen(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
