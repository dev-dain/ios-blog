//
//  ViewController.swift
//  Segue_NVController_Ex
//
//  Created by Dain Kim on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgFromOneLabel: UILabel!
    @IBOutlet weak var sendOneTextField: UITextField!
    @IBOutlet weak var msgFromTwoLabel: UILabel!
    @IBOutlet weak var sendTwoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SubOneViewController {
            viewController.message = sendOneTextField.text
            viewController.delegate = self
        }
        if let viewController = segue.destination as? SubTwoViewController {
            viewController.message = sendTwoTextField.text
            viewController.delegate = self
        }
    }
}

extension ViewController: SendMessageDelegate {
    func sendMessage(_ message: String, name: String) {
        if name == "one" {
            self.msgFromOneLabel.text = message
        } else if name == "two" {
            self.msgFromTwoLabel.text = message
        }
    }
}
