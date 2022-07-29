//
//  ViewController.swift
//  showVSPushView
//
//  Created by Dain Kim on 2022/07/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var receivePushLabel: UILabel!
    @IBOutlet weak var sendPushTextField: UITextField!
    @IBOutlet weak var receiveShowLabel: UILabel!
    @IBOutlet weak var sendShowTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        receivePushLabel.text = ""
        receiveShowLabel.text = ""
    }
    
    @IBAction func tapPushButton(_ sender: UIButton) {
        guard let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "pushExViewController") as? pushExViewController else { return }
        pushVC.message = sendPushTextField.text
//        자세히 써주려면 이렇게도 가능
//        pushVC.sendMessage = { message in
//            self.receivePushLabel.text = message
//        }
        pushVC.sendMessage = { self.receivePushLabel.text = $0 }
        self.navigationController?.pushViewController(pushVC, animated: true)
    }
    
    @IBAction func tapShowButton(_ sender: UIButton) {
        guard let showVC = self.storyboard?.instantiateViewController(withIdentifier: "showExViewController") as? showExViewController else { return }
        showVC.message = sendShowTextField.text
        showVC.sendMessage = { self.receiveShowLabel.text = $0 }
        self.show(showVC, sender: self)
    }
}

