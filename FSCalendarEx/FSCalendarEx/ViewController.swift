//
//  ViewController.swift
//  FSCalendarEx
//
//  Created by Dain Kim on 2022/09/19.
//

import UIKit
import FSCalendar
import SnapKit

class ViewController: UIViewController {
    private let calendar: FSCalendar = {
        let calendar = FSCalendar(frame: .zero)
        
        calendar.locale = Locale(identifier: "ko_KR")
        calendar.backgroundColor = .systemBackground
        calendar.scrollEnabled = true
        calendar.scrollDirection = .horizontal
        
        calendar.appearance.headerDateFormat = "YYYY. M"
        calendar.appearance.headerTitleColor = .label
        calendar.appearance.headerTitleAlignment = .center
        calendar.headerHeight = 40.0
        calendar.placeholderType = .none
        
        return calendar
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(calendar)
        
        calendar.delegate = self
        
        calendar.snp.makeConstraints {
            $0.top.bottom.equalTo(view.safeAreaLayoutGuide)
            $0.width.equalToSuperview()
        }
    }
}

extension ViewController: FSCalendarDelegateAppearance {
    // 토요일 파랑, 일요일 빨강으로 만들기
    func calendar(_ calendar: FSCalendar, appearance: FSCalendarAppearance, titleDefaultColorFor date: Date) -> UIColor? {
        let day = Calendar.current.component(.weekday, from: date) - 1
        
        if Calendar.current.shortWeekdaySymbols[day] == "일" {
            return .systemRed
        } else if Calendar.current.shortWeekdaySymbols[day] == "토" {
            return .systemBlue
        } else {
            return .label
        }
    }
}
