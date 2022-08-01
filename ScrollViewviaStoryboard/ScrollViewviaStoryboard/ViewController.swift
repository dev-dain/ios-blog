//
//  ViewController.swift
//  ScrollViewviaStoryboard
//
//  Created by Dain Kim on 2022/08/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillStackView()
    }
    
    private func fillStackView() {
        let colorArray = [UIColor.blue, .red, .yellow, .purple, .green, .black, .orange, .gray]
        for color in colorArray {
            let elementView = UIView()
            elementView.backgroundColor = color
            elementView.translatesAutoresizingMaskIntoConstraints = false
            elementView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            stackView.addArrangedSubview(elementView)
        }
    }
}

