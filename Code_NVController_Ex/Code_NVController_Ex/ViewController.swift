//
//  ViewController.swift
//  Code_NVController_Ex
//
//  Created by Dain Kim on 2022/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgFromOneLabel: UILabel!
    @IBOutlet weak var sendOneTextField: UITextField!
    @IBOutlet weak var msgFromTwoLabel: UILabel!
    @IBOutlet weak var sendTwoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.msgFromOneLabel.text = "No Message"
        self.msgFromTwoLabel.text = "No Message"
    }

    @IBAction func tapSendOneButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "SubOneViewController") as? SubOneViewController else { return }
        
        // 절대 IBOutlet 변수.text에 그냥 넘기지 말 것
        // Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value 에러가 남
        viewController.message = sendOneTextField.text
        viewController.delegate = self
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapSendTwoButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "SubTwoViewController") as? SubTwoViewController else { return }
//        viewController.modalPresentationStyle = .fullScreen
        viewController.message = sendTwoTextField.text
        viewController.delegate = self
        self.present(viewController, animated: true)
    }
}

extension ViewController: SendMessageDelegate {
    func sendMessage(_ message: String, name: String) {
        if name == "one" {
            msgFromOneLabel.text = message
        } else {
            msgFromTwoLabel.text = message
        }
    }
}
