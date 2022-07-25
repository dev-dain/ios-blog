//
//  SubOneViewController.swift
//  Segue_NVController_Ex
//
//  Created by Dain Kim on 2022/07/23.
//

import UIKit

class SubOneViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageTextField: UITextField!
    var message: String?
    weak var delegate: SendMessageDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let msg = message {
            messageLabel.text = msg
        }
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        guard let message = messageTextField.text else { return }
        self.delegate?.sendMessage(message, name: "one")
        self.navigationController?.popViewController(animated: true)
    }
}
