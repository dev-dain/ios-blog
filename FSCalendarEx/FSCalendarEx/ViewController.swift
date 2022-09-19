//
//  ViewController.swift
//  FSCalendarEx
//
//  Created by Dain Kim on 2022/09/19.
//

import UIKit

class ViewController: UIViewController {
    private let label: UILabel = {
        let label = UILabel()
        label.text = "코드 베이스로 만든 뷰입니다"
        label.sizeToFit()
        label.font = .preferredFont(forTextStyle: .headline)
        label.textColor = .label
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true        
    }
}
