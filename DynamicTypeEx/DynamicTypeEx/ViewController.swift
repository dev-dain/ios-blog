//
//  ViewController.swift
//  DynamicTypeEx
//
//  Created by Dain Kim on 2022/10/13.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private let fixedLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .black)
        label.text = "고정 크기 레이블"
        label.numberOfLines = 0
        return label
    }()
    
    private let dynamicLabel: UILabel = {
        let label = UILabel()
        label.font = .preferredFont(forTextStyle: .title3)
        label.adjustsFontForContentSizeCategory = true
        label.text = "기본 Dynamic Type 레이블"
        label.numberOfLines = 0
        return label
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.font = .preferredFont(for: .title3, weight: .ultraLight)
        label.adjustsFontForContentSizeCategory = true
        label.text = "커스텀 Dynamic Type 레이블"
        label.numberOfLines = 0
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [fixedLabel, dynamicLabel, myLabel].forEach {
            view.addSubview($0)
            $0.snp.makeConstraints {
                $0.leading.trailing.equalToSuperview().inset(24)
            }
        }
        
        fixedLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(24)
        }
        
        dynamicLabel.snp.makeConstraints {
            $0.top.equalTo(fixedLabel.snp.bottom).offset(30)
        }
        
        myLabel.snp.makeConstraints {
            $0.top.equalTo(dynamicLabel.snp.bottom).offset(30)
        }

    }
}

