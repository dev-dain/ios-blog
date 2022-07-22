//
//  SubOneViewController.swift
//  Code_NVController_Ex
//
//  Created by Dain Kim on 2022/07/21.
//

import UIKit

protocol SendMessageDelegate: AnyObject {
    func sendMessage(_ message: String)
}

class SubOneViewController: UIViewController {
    var message: String?
    weak var delegate: SendMessageDelegate?

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var textBackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let msg = message, !msg.isEmpty {
            self.messageLabel.text = msg
            self.messageLabel.sizeToFit()
        } else {
            self.messageLabel.text = "No Message"
        }
        
        if let txt = self.messageTextField.text, !txt.isEmpty {
            self.textBackButton.isEnabled = true
        } else {
            self.textBackButton.isEnabled = false
        }
    }
    
    @IBAction func textEditing(_ sender: UITextField) {
        if let txt = sender.text, !txt.isEmpty {
            self.textBackButton.isEnabled = true
        } else {
            self.textBackButton.isEnabled = false
        }
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        guard let message = self.messageTextField.text else { return }
        self.delegate?.sendMessage(message)
        self.navigationController?.popViewController(animated: true)
    }
}
