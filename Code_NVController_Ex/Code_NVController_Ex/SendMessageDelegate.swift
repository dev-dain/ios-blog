//
//  SendMessageDelegate.swift
//  Code_NVController_Ex
//
//  Created by Dain Kim on 2022/07/23.
//

import Foundation

protocol SendMessageDelegate: AnyObject {
    func sendMessage(_ message: String, name: String)
}
