//
//  UIFont.swift
//  DynamicTypeEx
//
//  Created by Dain Kim on 2022/10/13.
//

import UIKit

extension UIFont {
    static func preferredFont(for style: TextStyle, weight: Weight) -> UIFont {
        let metrics = UIFontMetrics(forTextStyle: style)
        let desc = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
        let font = UIFont.systemFont(ofSize: desc.pointSize, weight: weight)
        return metrics.scaledFont(for: font)
//        return metrics.scaledFont(for: font, maximumPointSize: 36)
    }
}
