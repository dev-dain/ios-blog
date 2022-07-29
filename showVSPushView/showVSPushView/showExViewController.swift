//
//  showExViewController.swift
//  showVSPushView
//
//  Created by Dain Kim on 2022/07/29.
//

import UIKit

class showExViewController: UIViewController {

    var message: String?
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var sendRootTextField: UITextField!
    
    var sendMessage: ((String?) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let msg = message {
            self.messageLabel.text = msg
        }
    }
    
    @IBAction func tapSendButton(_ sender: UIButton) {
        self.sendMessage?(self.sendRootTextField.text ?? "")
//        self.dismiss(animated: true)  모달 뷰에서만 가능
        self.navigationController?.popViewController(animated: true)
    }


}
